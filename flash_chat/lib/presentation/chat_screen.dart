import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flash_chat/application/auth/user/user_bloc.dart';
import 'package:flash_chat/application/message/message_bloc.dart';
import 'package:flash_chat/application/messages_list/messageslist_bloc.dart';
import 'package:flash_chat/domain/message/message.dart';
import 'package:flash_chat/injection.dart';
import 'package:flash_chat/presentation/global_widgets/chat_bubble.dart';
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
  String _currentUser;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => getIt<MessageslistBloc>()..add(const MessageslistEvent.watchMessages()),
        ),
        BlocProvider(
          create: (context) => getIt<MessageBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<UserBloc>()..add(const UserEvent.getSignedInUser()),
        ),
      ],
      child: BlocListener<UserBloc, UserState>(
        listener: (context, userState) {
          userState.maybeMap(
            authorized: (authState) => setState(() {
              _currentUser = authState.user.email;
            }),
            unauthorized: (_) => Navigator.pushReplacementNamed(context, WelcomeScreen.id),
            orElse: () {},
          );
        },
        child: Scaffold(
          appBar: AppBar(
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
                MessagesStream(currentUser: _currentUser),
                MessageTextField(currentUser: _currentUser)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MessagesStream extends StatelessWidget {
  final String currentUser;
  final ScrollController _scrollController = ScrollController();

  MessagesStream({Key key, @required this.currentUser}) : super(key: key);

  void _scrollToBottom() {
    _scrollController.animateTo(_scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 200), curve: Curves.easeOut);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<MessageslistBloc, MessageslistState>(
        builder: (context, state) {
          return state.map(
            initial: (e) => const Center(child: CircularProgressIndicator()),
            loadingMessages: (e) => const Center(child: CircularProgressIndicator()),
            loadingSuccess: (data) => ListView.builder(
              controller: _scrollController,
              itemBuilder: (context, index) {
                WidgetsBinding.instance.addPostFrameCallback((_) => _scrollToBottom());
                final Message message = data.messages[index];
                final bool isMe = currentUser == message.author;
                return ChatBubble(
                  message: message,
                  isMe: isMe,
                );
              },
              itemCount: data.messages.length,
            ),
            loadingFailure: (f) => FlushbarHelper.createError(
              message: f.failure.map(
                unexpectedError: (_) => 'Unexpected Error Getting Messages!',
                none: (_) => 'none',
              ),
            ),
          );
        },
      ),
    );
  }
}

class MessageTextField extends StatelessWidget {
  final String currentUser;
  final TextEditingController _textFieldController = TextEditingController();

  MessageTextField({Key key, @required this.currentUser}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MessageBloc, MessageState>(
      listener: (context, messageState) {
        messageState.failure?.map(
          unexpectedError: (error) {
            FlushbarHelper.createError(message: error.errorMessage).show(context);
          },
          none: (_) {},
        );
      },
      builder: (context, state) => Container(
        decoration: kMessageContainerDecoration,
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextField(
                controller: _textFieldController,
                style: const TextStyle(
                  color: Colors.black87,
                  backgroundColor: Colors.white,
                ),
                onChanged: (value) {
                  context.read<MessageBloc>().add(MessageEvent.textChanged(value));
                },
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  hintText: 'Type your message here...',
                  border: InputBorder.none,
                  errorStyle: const TextStyle(
                    color: Colors.redAccent,
                  ),
                  errorText: state.showErrorMessage ? "An empty text can't be sent!" : '',
                ),
              ),
            ),
            if (!state.isSending)
              TextButton(
                onPressed: () {
                  _textFieldController.clear();
                  debugPrint('${state.showErrorMessage}');
                  context.read<MessageBloc>().add(MessageEvent.sent(author: currentUser));
                },
                child: const Text(
                  'Send',
                  style: kSendButtonTextStyle,
                ),
              )
            else
              const Center(child: CircularProgressIndicator()),
          ],
        ),
      ),
    );
  }
}
