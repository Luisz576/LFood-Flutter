import 'package:flutter/material.dart';
import 'package:lfood/screens/search/searching_screen.dart';
import 'package:lfood/utils/AppColors.dart';

class SearchCamp extends StatelessWidget {

  final _controllerSearch = new TextEditingController();
  final String initialValue;
  final bool isCategoria;

  SearchCamp({this.initialValue = "", this.isCategoria = false}){
    this._controllerSearch.text = initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      color: AppColors.grey,
      shape: StadiumBorder(
        side: BorderSide.none,
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 20),
              child: TextField(
                controller: _controllerSearch,
                decoration: InputDecoration(
                  hintText: "Busca",
                  hintStyle: TextStyle(
                    color: AppColors.darkGrey,
                    fontSize: 14,
                  ),
                  border: InputBorder.none
                ),
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 14,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              final clearedText = _controllerSearch.text.trim();
              if(clearedText.isNotEmpty)
                if(initialValue.length > 0 || this.isCategoria){
                  Navigator.of(context).pop();
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => SearchingScreen(isCategoria: false, search: clearedText,),
                  ));
                }else
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => SearchingScreen(isCategoria: false, search: clearedText,),
                  ));
            },
            child: Container(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20,),
                child: Icon(Icons.search,
                  color: AppColors.white,
                  size: 24,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  
}