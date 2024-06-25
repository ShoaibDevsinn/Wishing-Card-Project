import 'package:flutter/material.dart';
class CustomImage extends StatelessWidget {
  var index,ontap,selectedindex,image;

   CustomImage({required this.index,required this.selectedindex,required this.ontap,required this.image});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 60,
        width: 60,
        decoration:BoxDecoration(image: DecorationImage(image: AssetImage(image),fit: BoxFit.cover),borderRadius: BorderRadius.circular(10)) ,
        child: selectedindex==index? Icon(Icons.check,color: Colors.white,size: 50,):Container()
      ),
    );
  }
}