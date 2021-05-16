import 'package:lfood/models/opicao.dart';

class Promocao{

  final int off;
  final Opcao opcao;
  final String cupomCode;

  Promocao({required this.off, required this.opcao, required this.cupomCode});

  double getOffPreco(){
    return opcao.preco - (opcao.preco * off / 100);
  }

}