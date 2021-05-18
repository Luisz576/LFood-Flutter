import 'package:flutter/material.dart';
import 'package:lfood/utils/AppColors.dart';

class StepOrder extends StatelessWidget {

  final int number;
  final String text;
  final bool isComplete;

  StepOrder({required this.number, required this.text, required this.isComplete});

  @override
  Widget build(BuildContext context) {
    final Color realColor = !this.isComplete ? AppColors.primaryColorLight : AppColors.primaryColor;
    final colorCircle = AlwaysStoppedAnimation<Color>(realColor);
    return SizedBox(
      width: 60,
      child: Column(
        children: <Widget>[
          CircleAvatar(
            radius: 20.0,
            backgroundColor: this.isComplete ? AppColors.primaryColorLight : AppColors.white,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                !this.isComplete ? Text("$number", style: TextStyle(color: !this.isComplete ? AppColors.primaryColorLight : AppColors.white))
                : Icon(Icons.check, color: realColor,),
                this.isComplete ? CircularProgressIndicator(
                  valueColor: colorCircle,
                  value: 1,
                ) : CircularProgressIndicator(
                  valueColor: colorCircle,
                ),
              ],
            ),
          ),
          Text(text,
            style: TextStyle(
              fontSize: 10
            ),
          ),
        ],
      ),
    );
  }

}