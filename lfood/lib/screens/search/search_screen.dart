import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:lfood/models/categoria.dart';
import 'package:lfood/screens/search/searching_screen.dart';
import 'package:lfood/screens/search/widgets/search_camp.dart';
import 'package:lfood/services/api_database.dart';
import 'package:lfood/utils/AppColors.dart';
import 'package:lfood/utils/AppFunctions.dart';

class SearchScreen extends StatelessWidget {
  
  final ApiDatabase database = ApiDatabase();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40,),
          SearchCamp(),
          SizedBox(height: 10),
          Text("Busque pela categoria",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: database.getCategorias().length,
              itemBuilder: (context, index) => categoriaItem(database.getCategorias()[index], context),
            ),
          ),
        ],
      ),
    );
  }

  Widget categoriaItem(Categoria categoria, BuildContext context){
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => SearchingScreen(isCategoria: true, search: categoria.nome,),
        ));
      },
      child: Card(
        margin: EdgeInsets.only(bottom: 10,),
        child: Container(
          height: MediaQuery.of(context).size.height / 6,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(categoria.imageUrl),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Container(
                color: Color.fromRGBO(0, 0, 0, 0.5),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(AppFunctions.getWithFirstLetterUpperCase(categoria.nome),
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}