import 'package:flutter/material.dart';
import 'package:lfood/models/estabelecimento.dart';
import 'package:lfood/screens/search/widgets/search_camp.dart';
import 'package:lfood/services/api_database.dart';
import 'package:lfood/widgets/estabelecimento_item.dart';

class SearchingScreen extends StatelessWidget {

  final String search;
  final bool isCategoria;
  final ApiDatabase database = ApiDatabase();

  SearchingScreen({required this.search, required this.isCategoria});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40,),
          this.isCategoria ? SearchCamp(isCategoria: true)
          : SearchCamp(initialValue: this.search),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text("Resultados",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: FutureBuilder<List<Estabelecimento>>(
              future: this.isCategoria ? database.getEstabelecimentosByCategoria(this.search) : database.getEstabelecimentosUsingFilter(this.search),
              builder: (context, snapshot) {
                if(snapshot.connectionState == ConnectionState.done){
                  final List<Estabelecimento> data = snapshot.data!;
                  return data.length > 0 ? ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) => EstabelecimentoItem(data: data[index]),
                  ) : Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text("Nenhum resultado encontrado!"),
                  );
                }else if(snapshot.connectionState == ConnectionState.waiting)
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                else
                  return Text("Erro ao buscar!");
              },
            ),
          ),
        ],
      ),
    );
  }

}