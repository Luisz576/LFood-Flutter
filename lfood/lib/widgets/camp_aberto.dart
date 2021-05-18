import 'package:flutter/material.dart';
import 'package:lfood/models/time_variation.dart';
import 'package:lfood/utils/AppColors.dart';

class CampAberto extends StatelessWidget {

  final TimeVariation variacaoDeTempo;
  final bool aberto;

  CampAberto({required this.variacaoDeTempo, required this.aberto});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("${variacaoDeTempo.start}~${variacaoDeTempo.finish}min",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
            color: AppColors.black,
            decoration: TextDecoration.none,
          ),
        ),
        SizedBox(width: 5.0,),
        Container(
          height: 6.0,
          width: 6.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.black,
          ),
        ),
        SizedBox(width: 5.0,),
        Text(aberto ? "Aberto" : "Fechado",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
            color: AppColors.black,
            decoration: TextDecoration.none,
          ),
        ),
      ],
    );
  }

}