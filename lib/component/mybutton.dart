
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title ;
  final Color color;
  final VoidCallback onpress;
  const MyButton({
    super.key,
    required this.title,
    this.color = Colors.grey,
    required this.onpress,
  });

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: InkWell(
          onTap: onpress,
          child: Container(
            height: 70,
            decoration :BoxDecoration(
              shape: BoxShape.circle,
              color: color,

            ),
            child: Center(child: Text(title,style: TextStyle(fontSize: 20,color: Colors.white),)),
          ),
        ),
      ),
    );




  }
}