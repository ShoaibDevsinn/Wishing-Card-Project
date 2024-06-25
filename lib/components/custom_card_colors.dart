import 'package:flutter/material.dart';

class CustomCardColors extends StatelessWidget {
var index,ontap,selectedcolor,color;
 
   CustomCardColors({required this.index,required this.selectedcolor,required this.ontap,required this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 60,
        width: 60,
        decoration:BoxDecoration(color: color,borderRadius: BorderRadius.circular(10),
        boxShadow: [BoxShadow(
          spreadRadius: 1,
          blurRadius: 1,
          color: const Color.fromARGB(255, 192, 192, 192),
          offset: Offset(1, 1))],
        ) ,
        child: selectedcolor==index? Icon(Icons.check,color: Colors.white,size: 50,):Container()
      ),
    );
  }
}