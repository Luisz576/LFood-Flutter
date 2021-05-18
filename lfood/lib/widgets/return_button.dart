import 'package:flutter/material.dart';
import 'package:lfood/utils/AppColors.dart';

class ReturnButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(0, 0, 0, 0),
      shadowColor: Color.fromARGB(0, 0, 0, 0),
      child: InkWell(
        onTap: (){
          Navigator.of(context).pop();
        },
        child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.grey
        ),
        child: Padding(
            padding: EdgeInsets.all(5),
            child: Icon(Icons.arrow_back, color: AppColors.white,),
          ),
        ),
      ),
    );
  }
}