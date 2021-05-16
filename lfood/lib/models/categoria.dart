import 'package:flutter/material.dart';
import 'package:lfood/utils/AppColors.dart';

class Categoria{

  final String imageUrl, nome;

  Categoria({required this.nome, required this.imageUrl});

  Widget getLikeWidget({required bool active, required onTap}){
    return Padding(
      padding: EdgeInsets.only(right: 10.0),
      child: InkWell(
        onTap: (){ onTap(this); },
        child: Card(
          shape: StadiumBorder(
            side: BorderSide.none,
          ),
          margin: EdgeInsets.zero,
          color: active ? AppColors.primaryColor : AppColors.secundaryColor,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Text(nome,
              style: TextStyle(
                fontSize: 16,
                color: AppColors.white
              ),
            ),
          ),
        ),
      ),
    );
  }

}