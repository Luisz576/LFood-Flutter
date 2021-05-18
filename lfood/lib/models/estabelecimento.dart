import 'package:lfood/models/opicao.dart';
import 'package:lfood/models/promocao.dart';
import 'package:lfood/models/time_variation.dart';

class Estabelecimento{

  final int id, stars, notas;
  final String nome, imageUrl;
  final bool aberto;
  final TimeVariation variacaoDeTempo;
  final List<String> categorias;
  final List<Promocao> promocoes;
  final List<Opcao> cardapio;

  Estabelecimento({required this.id, required this.nome, required this.imageUrl, required this.aberto, required this.categorias, required this.stars, required this.notas, required this.variacaoDeTempo, required this.promocoes, required this.cardapio});

  bool isEmpty(){ return id <= 0; }

  static final Estabelecimento empty = Estabelecimento(id: -1, nome: "", imageUrl: "", aberto: false, categorias: [], stars: 0, notas: 0, variacaoDeTempo: TimeVariation(start: 0, finish: 0), promocoes: [], cardapio: []);

}