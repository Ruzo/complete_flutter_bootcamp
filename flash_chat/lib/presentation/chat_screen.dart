import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flash_chat/application/auth/user/user_bloc.dart';
import 'package:flash_chat/application/messages_list/messageslist_bloc.dart';
import 'package:flash_chat/injection.dart';
import 'package:flash_chat/presentation/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatScreen extends StatefulWidget {
  static const id = 'ChatScreen';

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<MessageslistBloc>(
      create: (BuildContext context) {
        debugPrint('adding event MessageslistEvent.watchMessages()');
        return getIt<MessageslistBloc>()..add(const MessageslistEvent.watchMessages());
      },
      child: BlocListener<UserBloc, UserState>(
        listener: (context, userState) {
          userState.maybeMap(
            unauthorized: (_) => Navigator.pushReplacementNamed(context, WelcomeScreen.id),
            orElse: () {},
          );
        },
        child: Scaffold(
          appBar: AppBar(
            // leading: null,
            automaticallyImplyLeading: false,
            actions: <Widget>[
              IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    context.read<UserBloc>().add(const UserEvent.signOut());
                    Navigator.pushReplacementNamed(context, WelcomeScreen.id);
                  }),
            ],
            title: const Text('⚡️Chat'),
            backgroundColor: Colors.lightBlueAccent,
          ),
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: BlocBuilder<MessageslistBloc, MessageslistState>(
                    builder: (context, state) {
                      return state.map(
                        initial: (e) => Container(),
                        loadingMessages: (e) => const Center(child: CircularProgressIndicator()),
                        loadingSuccess: (data) => ListView.builder(
                          itemBuilder: (context, index) {
                            final String message = data.messages[index].text.value.getOrElse(() => '!!error!!');
                            return ListTile(
                              title: Text(
                                message,
                                style: const TextStyle(color: Colors.black),
                              ),
                            );
                          },
                          itemCount: data.messages.length,
                        ),
                        loadingFailure: (f) => FlushbarHelper.createError(
                          message: f.failure.map(unexpected: (_) => 'Unexpected Error Getting Messages!'),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  decoration: kMessageContainerDecoration,
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          onChanged: (value) {
                            //Do something with the user input.
                          },
                          decoration: kMessageTextFieldDecoration,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          //Implement send functionality.
                        },
                        child: const Text(
                          'Send',
                          style: kSendButtonTextStyle,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
