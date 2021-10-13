import 'package:flutter/material.dart';

@immutable
class Message {
  const Message({required this.sender, required this.text});

  final String sender;
  final String text;

  Message.fromJson(Map<String, Object?> json)
      : this(
          sender: json['sender']! as String,
          text: json['text']! as String,
        );

  Map<String, Object?> toJson() {
    return {'sender': sender, 'text': text};
  }
}
