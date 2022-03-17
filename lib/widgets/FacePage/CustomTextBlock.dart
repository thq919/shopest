import 'package:flutter/material.dart';

class CustomTextBlockSectionFirst extends StatelessWidget {
  const CustomTextBlockSectionFirst({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Hot Sales',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15))),
        Padding(
            padding: const EdgeInsets.all(8),
            child: TextButton(
                onPressed: () {},
                child: const Text(
                  'see more',
                  style: TextStyle(
                      color: Color.fromRGBO(255, 110, 78, 1),
                      fontWeight: FontWeight.w400),
                )))
      ],
    );
  }
}
