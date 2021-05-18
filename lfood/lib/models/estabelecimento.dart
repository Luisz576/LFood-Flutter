import 'package:lfood/models/opicao.dart';
import 'package:lfood/models/promocao.dart';
import 'package:lfood/models/time_variation.dart';

class Estabelecimento{

  final int id, stars, notas;
  final String nome, imageUrl, bannerImageUrl;
  final bool aberto;
  final TimeVariation variacaoDeTempo;
  final List<String> categorias;
  final List<Promocao> promocoes;
  final List<Opcao> cardapio;

  Estabelecimento({required this.id, required this.nome, required this.imageUrl, required this.bannerImageUrl, required this.aberto, required this.categorias, required this.stars, required this.notas, required this.variacaoDeTempo, required this.promocoes, required this.cardapio});

  bool isEmpty(){ return id <= 0; }

  List<String> getCategorias(){
    List<String> results = [];
    cardapio.forEach((opcao) {
      if(!results.contains(opcao.categoria))
        results.add(opcao.categoria);
    });
    return results;
  }

  List<Opcao> getOpcoesOfCategoria(String categoria){
    List<Opcao> results = [];
    cardapio.forEach((opcao) {
      if(categoria.toLowerCase() == opcao.categoria.toLowerCase())
        results.add(opcao);
    });
    return results;
  }

  static final Estabelecimento empty = Estabelecimento(id: -1, nome: "", imageUrl: "", bannerImageUrl: "", aberto: false, categorias: [], stars: 0, notas: 0, variacaoDeTempo: TimeVariation(start: 0, finish: 0), promocoes: [], cardapio: []);

}