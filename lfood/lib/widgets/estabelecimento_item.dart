import 'package:flutter/material.dart';
import 'package:lfood/models/estabelecimento.dart';
import 'package:lfood/utils/AppColors.dart';
import 'package:lfood/widgets/stars.dart';

class EstabelecimentoItem extends StatelessWidget {

  final Estabelecimento data;

  EstabelecimentoItem({required this.data});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        print(data.nome);
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
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("${data.variacaoDeTempo.start}~${data.variacaoDeTempo.finish}min",
                        style: TextStyle(
                          fontWeight: FontWeight.bold
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
                      Text(data.aberto ? "Aberto" : "Fechado",
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}