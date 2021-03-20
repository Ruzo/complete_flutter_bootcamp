import 'package:flash_chat/domain/message/message.dart';
import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final Message message;
  final bool isMe;
  final Color _color;
  final CrossAxisAlignment _crossAxisAlignment;
  final BorderRadius _borderRadius;

  ChatBubble({
    Key key,
    @required this.message,
    @required this.isMe,
  })  : _color = isMe ? Colors.lightBlueAccent : Colors.amber[700],
        _crossAxisAlignment = isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        _borderRadius = isMe
            ? const BorderRadius.only(
                topLeft: Radius.circular(30),
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              )
            : const BorderRadius.only(
                topRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: _crossAxisAlignment,
        children: [
          if (!isMe) Text(message.author),
          Material(
            color: _color,
            elevation: 5,
            borderRadius: _borderRadius,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                message.text.apiSafeValue(),
                style: TextStyle(
                  color: Colors.white,
                  backgroundColor: _color,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
