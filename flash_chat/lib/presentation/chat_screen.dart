import 'package:flash_chat/application/auth/user/user_bloc.dart';
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
    return BlocConsumer<UserBloc, UserState>(
      listener: (context, userState) => userState.when(
        initial: () => {},
        authorized: () => {},
        unauthorized: () => Navigator.popUntil(context, ModalRoute.withName(WelcomeScreen.id)),
      ),
      builder: (context, userState) {
        return Scaffold(
          appBar: AppBar(
            // leading: null,
            automaticallyImplyLeading: false,
            actions: <Widget>[
              IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    context.read<UserBloc>().add(const UserEvent.signOut());
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
        );
      },
    );
  }
}
