import 'package:flutter/material.dart';
import 'package:lfood/models/estabelecimento.dart';
import 'package:lfood/screens/product_details/widgets/product_item.dart';
import 'package:lfood/screens/product_details/widgets/product_promocao_item.dart';
import 'package:lfood/services/api_database.dart';
import 'package:lfood/utils/AppColors.dart';
import 'package:lfood/utils/AppFunctions.dart';
import 'package:lfood/widgets/camp_aberto.dart';
import 'package:lfood/widgets/return_button.dart';
import 'package:lfood/widgets/stars.dart';

class ProductDetails extends StatelessWidget {

  final Estabelecimento data;
  final ApiDatabase database = ApiDatabase();

  ProductDetails({required this.data});

  @override
  Widget build(BuildContext context) {

    final pageView = [
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 7 * 2,
      ),
      Text(data.nome,
        style: TextStyle(
          fontSize: 18,
          color: AppColors.black,
          decoration: TextDecoration.none,
        ),
      ),
      SizedBox(height: 10,),
      CampAberto(
        variacaoDeTempo: data.variacaoDeTempo,
        aberto: data.aberto,
      ),
      SizedBox(height: 10,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stars(
            stars: data.stars,
          ),
          Text("${data.notas} avaliações",
            style: TextStyle(
              fontSize: 12,
              color: AppColors.black,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.none,
            ),
          ),
        ],
      ),
      SizedBox(height: 10,),
    ];

    if(data.promocoes.length > 0)
      pageView.addAll(_renderTopic(true, context, "Promoções", data.promocoes.length, data.promocoes));
      
    final allCategorias = data.getCategorias();
    if(allCategorias.length > 0)
      allCategorias.forEach((categoria) {
        final opcoes = data.getOpcoesOfCategoria(categoria);
        pageView.addAll(_renderTopic(false, context, AppFunctions.getWithFirstLetterUpperCase(categoria), opcoes.length, opcoes));
      });
    else if(data.promocoes.length <= 0)
      pageView.add(Text("Esse estabelecimento não tem nenhum cardápio!"));

    return Container(
      color: AppColors.white,
      child: Expanded(
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(data.bannerImageUrl),
                      fit: BoxFit.cover,
                    )
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 7 * 2,
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: pageView,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: ReturnButton(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  
  List<Widget> _renderTopic(bool isPromocao, BuildContext context, String text, int length, data){
    return [
      Text(text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: AppColors.black,
          decoration: TextDecoration.none,
        ),
      ),
      SizedBox(height: 10,),
      Container(
        height: MediaQuery.of(context).size.height / 3 * 1.05,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: length,
          itemBuilder: (context, index) => isPromocao ? ProductPromocaoItem(
            promocao: data[index],
          ) : ProductItem(
            opcao: data[index],
          ),
        ),
      ),
    ];
  }

}