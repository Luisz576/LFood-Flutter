import 'package:flutter/material.dart';
import 'package:lfood/models/promocao.dart';
import 'package:lfood/screens/product_details/widgets/product_item_base.dart';

class ProductPromocaoItem extends StatelessWidget {

  final Promocao promocao;

  ProductPromocaoItem({required this.promocao});

  @override
  Widget build(BuildContext context) {
    return ProductItemBase(
      opcao: promocao.opcao,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("R\$${promocao.getOffPreco().toStringAsFixed(2)}",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),
          ),
          Text("R\$${promocao.opcao.preco.toStringAsFixed(2)}",
            style: TextStyle(
              fontSize: 12,
              decoration: TextDecoration.lineThrough
            ),
          ),
        ],
      ),
    );
  }

}