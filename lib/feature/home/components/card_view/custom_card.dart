import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard(
      {super.key,
      required this.onPressed,
      required this.title,
      required this.amount,
      this.color = const Color(0xFFA543EC)});
  final VoidCallback onPressed;
  final String title;
  final String amount;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: 400,
      // height: 200,
      decoration: BoxDecoration(
        color: const Color(0xff101010),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontSize: 15),
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                    shape: const CircleBorder(),
                    backgroundColor: Colors.black),
                onPressed: () {},
                child: Transform.rotate(
                  angle: 120,
                  child: Icon(
                    Icons.arrow_upward_outlined,
                    color: color,
                  ),
                ),
              )
            ],
          ),
          Text(
            amount,
            style: TextStyle(color: color, fontSize: 40),
          )
        ],
      ),
    );
  }
}
