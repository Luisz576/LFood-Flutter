import 'package:flutter/material.dart';
import 'package:lfood/models/opicao.dart';
import 'package:lfood/screens/product_details/widgets/product_item_base.dart';

class ProductItem extends StatelessWidget {

  final Opcao opcao;

  ProductItem({required this.opcao});

  @override
  Widget build(BuildContext context) {
    return ProductItemBase(
      opcao: opcao,
      child: Text("R\$${opcao.preco.toStringAsFixed(2)}",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }

}