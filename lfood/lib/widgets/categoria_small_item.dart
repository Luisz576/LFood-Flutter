import 'package:flutter/material.dart';
import 'package:lfood/models/categoria.dart';
import 'package:lfood/utils/AppColors.dart';

class CategoriaSmallItem extends StatelessWidget {

  final bool active;
  final onTap;
  final Categoria categoria;

  CategoriaSmallItem({required this.categoria, required this.active, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.0),
      child: InkWell(
        onTap: (){ onTap(categoria); },
        child: Card(
          shape: StadiumBorder(
            side: BorderSide.none,
          ),
          margin: EdgeInsets.zero,
          color: active ? AppColors.primaryColor : AppColors.secundaryColor,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Text(categoria.nome,
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