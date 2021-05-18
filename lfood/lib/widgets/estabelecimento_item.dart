import 'package:flutter/material.dart';
import 'package:lfood/models/estabelecimento.dart';
import 'package:lfood/screens/product_details/product_details.dart';
import 'package:lfood/widgets/camp_aberto.dart';
import 'package:lfood/widgets/stars.dart';

class EstabelecimentoItem extends StatelessWidget {

  final Estabelecimento data;

  EstabelecimentoItem({required this.data});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ProductDetails(data: data,),
        ));
      },
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(data.imageUrl)
                  ),
                ),
                height: MediaQuery.of(context).size.height / 8,
                width: MediaQuery.of(context).size.height / 8,
              ),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(data.nome,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Stars(stars: data.stars),
                  SizedBox(height: 20,),
                  CampAberto(
                    variacaoDeTempo: data.variacaoDeTempo,
                    aberto: data.aberto,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}