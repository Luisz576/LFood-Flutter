import 'package:lfood/models/profile.dart';

class ApiLogin{

  Future<Profile> getProfile(){//COMO NÃO HÁ UM SISTEMA DE LOGIN, APENAS RETORNA UM OBJ PADRÃO
    return Future.delayed(
      Duration(seconds: 1),
      () => Profile(
        id: 123,
        nome: "Carlinhos da Ferradura Almeida",
        imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0YCUOlOTznD4LImPavBqeH_850qYiIGUoIg&usqp=CAU",
      ),
    );
  }

}