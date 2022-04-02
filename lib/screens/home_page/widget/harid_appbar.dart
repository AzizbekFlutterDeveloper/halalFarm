import 'package:flutter/material.dart';
import 'package:halol_farm/code/constans/size_config.dart';

class HaridAppBar extends StatelessWidget {
  final String? name;
  const HaridAppBar({Key? key,required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getHeight(65),
      width: getWidth(375),
      color: const Color.fromARGB(255, 233, 231, 231),
      child: Padding(
        padding: EdgeInsets.only(
          top: getWidth(38),
          right: getWidth(12),
          left: getWidth(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("  "),
            Text(
              name ?? "",
              style: TextStyle(
                color: Colors.black,
                fontSize: getWidth(18),
                fontWeight: FontWeight.w600,
              ),
            ),
            GestureDetector(
              child: Icon(
                Icons.cancel_outlined,
                color: Colors.black,
                size: getHeight(22),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
