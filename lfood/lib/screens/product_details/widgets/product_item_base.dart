import 'package:flutter/material.dart';
import 'package:lfood/models/opicao.dart';

class ProductItemBase extends StatelessWidget {

  final Opcao opcao;
  final Widget child;

  ProductItemBase({required this.opcao, required this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(right: 10),
      elevation: 2,
      child: Container(
        width: MediaQuery.of(context).size.width / 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(opcao.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
              width: MediaQuery.of(context).size.width / 7 * 3,
              height: MediaQuery.of(context).size.height / 6,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(opcao.nome,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text(opcao.descricao,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                  SizedBox(height: 10,),
                  child
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}