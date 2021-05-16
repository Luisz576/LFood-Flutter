import 'package:flutter/material.dart';
import 'package:lfood/services/api_database.dart';
import 'package:lfood/utils/AppColors.dart';

class PromocaoDestaque extends StatelessWidget {

  final ApiDatabase database;
  final String category;

  PromocaoDestaque({required this.database, required this.category});

  @override
  Widget build(BuildContext context) {
    var futureBuilder = FutureBuilder<dynamic>(
      future: database.getPromocaoDestaque(this.category),
      builder: (context, snapshot) {
        if(snapshot.connectionState == ConnectionState.done){
          final promocao = snapshot.data!;
          return Card(
            margin: EdgeInsets.zero,
            elevation: 10,
            child: Container(
              height: MediaQuery.of(context).size.height / 7 * 2,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(promocao.opcao.imageUrl),
                  fit: BoxFit.cover
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 8, left: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${promocao.off.toString()}%",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 48,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text("de desconto",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 30.0,),
                    Card(
                      margin: EdgeInsets.zero,
                      color: AppColors.secundaryColorLight,
                      child: InkWell(
                        onTap: (){},
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
                          child: Text("PEGAR CUPOM",
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 24.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }
        else if(snapshot.connectionState == ConnectionState.waiting)
          return Center(
            child: CircularProgressIndicator()
          );
        else
          return Container();
      },
    );
    return futureBuilder;
  }

}