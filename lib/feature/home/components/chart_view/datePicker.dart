import 'package:flutter/material.dart';

class DatePicker extends StatelessWidget {
  const DatePicker({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xffA73BF3),
        boxShadow: const [
          BoxShadow(
              offset: Offset(2, 2),
              blurStyle: BlurStyle.solid,
              color: Colors.black)
        ],
        borderRadius: BorderRadius.circular(32),
        border: Border.all(
          width: 1,
          color: Colors.black,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Text(
            'October 01 - October 31',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.keyboard_arrow_down)
        ],
      ),
    );
  }
}
