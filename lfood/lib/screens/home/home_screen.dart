import 'package:flutter/material.dart';
import 'package:lfood/models/estabelecimento.dart';
import 'package:lfood/screens/home/widgets/promocao_destaque.dart';
import 'package:lfood/services/api_database.dart';
import 'package:lfood/screens/home/widgets/categorias.dart';
import 'package:lfood/utils/AppColors.dart';
import 'package:lfood/widgets/estabelecimento_item.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final ApiDatabase database = ApiDatabase();
  String category = "restaurante";

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
      children: [
        SizedBox(height: 10,),
        Text("LFood",
          style: TextStyle(
            color: AppColors.primaryColor,
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10.0),
        Categorias(
          onClick: (categoria){
            setState((){
              this.category = categoria.nome;
            });
          },
          category: this.category,
          databse: database,
        ),
        SizedBox(height: 10,),
        PromocaoDestaque(
          database: database,
          category: this.category,
        ),
        SizedBox(height: 10,),
        Text("Destaques",
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(height: 5,),
        estabelecimentosDestaque(context),
      ],
    );
  }

  Widget estabelecimentosDestaque(BuildContext context) {
    return FutureBuilder<List<Estabelecimento>>(
      future: database.getEstabelecimentosByCategoria(this.category),
      builder: (context, snapshot) {
        if(snapshot.connectionState == ConnectionState.done){
          List<Estabelecimento> estabelecimentos = snapshot.data!;
          if(estabelecimentos.length > 0)
            return Column(
              children: estabelecimentos.map((estabelecimento) => EstabelecimentoItem(data: estabelecimento)).toList(),
            );
          else
            return Text("Nenhum estabelecimento encontrado!");
        }else if(snapshot.connectionState == ConnectionState.waiting)
          return Center(
            child: CircularProgressIndicator(),
          );
        else
          return Text("Ocorreu um erro ao pegar os produtos!");
      },
    );
  }

}