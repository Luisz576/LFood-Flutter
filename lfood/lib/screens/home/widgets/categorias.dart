import 'package:flutter/material.dart';
import 'package:lfood/models/categoria.dart';

class Categorias extends StatelessWidget {

  final onClick;
  final String category;
  final List<Categoria> _categorias = [
    Categoria(nome: "restaurante", imageUrl: ""),
    Categoria(nome: "lanche", imageUrl: ""),
    Categoria(nome: "sushi", imageUrl: ""),
    Categoria(nome: "pizza", imageUrl: ""),
    Categoria(nome: "marmita", imageUrl: ""),
    Categoria(nome: "bebida", imageUrl: ""),
  ];

  Categorias({required this.onClick, required this.category});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: _categorias.map((categoria) => categoria.getLikeWidget(active: (category == categoria.nome), onTap: this.onClick)).toList(),
      ),
    );
  }

}