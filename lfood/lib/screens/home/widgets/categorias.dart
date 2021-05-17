import 'package:flutter/material.dart';
import 'package:lfood/services/api_database.dart';

class Categorias extends StatelessWidget {

  final onClick;
  final String category;
  final ApiDatabase databse;

  Categorias({required this.onClick, required this.category, required this.databse});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: databse.getCategorias().map((categoria) => categoria.getLikeWidget(active: (category == categoria.nome), onTap: this.onClick)).toList(),
      ),
    );
  }

}