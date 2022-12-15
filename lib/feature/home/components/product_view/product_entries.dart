import 'package:flutter/material.dart';
import 'package:image_stack/image_stack.dart';

class ProductEntry extends StatelessWidget {
  ProductEntry({
    Key? key,
    required this.title,
    this.isSuccessful = true,
  }) : super(key: key);
  final String title;
  final bool isSuccessful;
  final List<String> images = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHxUnWSR1XdJvnM94p9BejlOFO1f4htPUBtg&usqp=CAU',
    'https://media.istockphoto.com/id/1009749608/photo/young-woman-portrait-in-the-city.jpg?s=612x612&w=0&k=20&c=nBmdXrCkI6Zz-J1EkCGQAamaYlZeIOQAtKunC4WMT-U=',
    'https://images.ctfassets.net/hrltx12pl8hq/31f9j3A3xKasyUMMsuIQO8/6a8708add4cb4505b65b1cee3f2e6996/9db2e04eb42b427f4968ab41009443b906e4eabf-people_men-min.jpg?fit=fill&w=368&h=207'
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ImageStack(
          imageList: images,
          totalCount: images.length,
          imageRadius: 30,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
        const Spacer(),
        const SizedBox(
          width: 200,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(32)),
            child: LinearProgressIndicator(
              value: 0.4,
              minHeight: 8,
              backgroundColor: Colors.black,
              color: Colors.grey,
            ),
          ),
        ),
        const Spacer(),
        const Text(
          '96/',
          style: TextStyle(color: Colors.white),
        ),
        const Text(
          '100',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        SizedBox.fromSize(
          size: const Size(180, 40),
          child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: isSuccessful
                      ? const Color(0xff093D1F)
                      : const Color(0xff462017),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              child: Text(
                isSuccessful ? 'Successful' : 'Unsuccessfully',
                style: const TextStyle(
                  color: Colors.white60,
                  fontWeight: FontWeight.bold,
                ),
              )),
        )
      ],
    );
  }
}
