import 'package:flutter/material.dart';

class NavigationButton extends StatelessWidget {
  const NavigationButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 50,
          child: OutlinedButton(
              style: ElevatedButton.styleFrom(
                side: const BorderSide(color: Colors.black),
                shape: const CircleBorder(),
              ),
              onPressed: () {},
              child: const Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 20,
              )),
        ),
        const SizedBox(
          width: 5,
        ),
        SizedBox(
          height: 50,
          child: OutlinedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                side: const BorderSide(color: Colors.black),
                shape: const CircleBorder(),
              ),
              onPressed: () {},
              child: const Icon(
                Icons.arrow_forward,
                color: Colors.white,
                size: 20,
              )),
        ),
      ],
    );
  }
}
