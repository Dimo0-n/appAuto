import 'package:flutter/material.dart';
import 'package:flutter_social/models/message.dart';
import 'package:flutter_social/utils/colors.dart';

class ChatBubble extends StatelessWidget {
  final Message message;

  const ChatBubble({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    final messageBody = message.body;
    final fromMe = message.fromMe;
    return Align(
      alignment: fromMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.all(15.0),
        margin: fromMe
            ? const EdgeInsets.only(
                right: 20.0,
                bottom: 20.0,
              )
            : const EdgeInsets.only(
                left: 20.0,
                bottom: 20.0,
              ),
        decoration: BoxDecoration(
          gradient: fromMe ? chatBubbleGradient : chatBubbleGradient2,
          borderRadius: fromMe
              ? const BorderRadius.only(
                  topLeft: Radius.circular(12.0),
                  bottomLeft: Radius.circular(12.0),
                  topRight: Radius.circular(12.0),
                )
              : const BorderRadius.only(
                  topRight: Radius.circular(12.0),
                  topLeft: Radius.circular(12.0),
                  bottomRight: Radius.circular(12.0),
                ),
        ),
        constraints: BoxConstraints(
          minHeight: 20.0,
          minWidth: 30.0,
          maxWidth: MediaQuery.of(context).size.width * 0.7,
        ),
        child: Center(
          child: Text(
            messageBody,
            style: TextStyle(
              color: fromMe ? Colors.white70 : Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
