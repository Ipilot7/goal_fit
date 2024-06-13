import 'package:flutter/material.dart';
import 'package:goal_fit/common/app_color.dart';

class ChatItemWidget extends StatelessWidget {
  const ChatItemWidget({
    super.key,
    this.isMe = false,
    required this.text,
    required this.time,
  });
  final bool isMe;
  final String text, time;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        if (isMe)
          const Padding(
            padding: EdgeInsets.only(left: 24, right: 8),
            child: Icon(Icons.check),
          ),
        Flexible(
          child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              decoration: BoxDecoration(
                  color: isMe ? AppColors.purple : AppColors.white,
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Flexible(
                    child: Text(text),
                  ),
                  Text(time)
                ],
              )),
        ),
        if (!isMe)
          const Padding(
            padding: EdgeInsets.only(left: 8, right: 24),
            child: Icon(Icons.check),
          ),
      ],
    );
  }
}
