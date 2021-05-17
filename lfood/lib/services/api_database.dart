import 'package:lfood/models/categoria.dart';
import 'package:lfood/models/estabelecimento.dart';
import 'package:lfood/models/opicao.dart';
import 'package:lfood/models/promocao.dart';
import 'package:lfood/models/time_variation.dart';

class ApiDatabase{

  final List<Categoria> _categorias = [
    Categoria(
      nome: "restaurante",
      imageUrl: "https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395__340.jpg"
    ),
    Categoria(
      nome: "lanche", 
      imageUrl: "https://www.minervafoods.com/wp-content/uploads/2016/06/como_fazer_hamburguer_caseiro.jpg"
    ),
    Categoria(
      nome: "sushi", 
      imageUrl: "https://blog-static.deliway.com.br/assets/base/1ff/8a7/b5d/900-473-tipos-de-sushi.jpg"
    ),
    Categoria(
      nome: "pizza", 
      imageUrl: "https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395__340.jpg"
    ),
    Categoria(
      nome: "marmita", 
      imageUrl: "https://static1.casapraticaqualita.com.br/articles/6/88/6/@/944-marmitas-com-atum-podem-estragar-no-calo-article_content_img-2.jpg"
    ),
    Categoria(
      nome: "bebida", 
      imageUrl: "https://exame.com/wp-content/uploads/2020/08/cerveja-gelada-e1598542702646-1.jpg?quality=70&strip=info"
    ),
  ];

  final List<Estabelecimento> _estabelecimentos = [
    Estabelecimento(
      id: 123,
      nome: "Restaurante Castelinho",
      categorias: ["restaurante", "sushi", "marmita"],
      stars: 8,
      imageUrl: "https://scontent-gru2-2.xx.fbcdn.net/v/t1.6435-1/p148x148/78821789_101613337995625_7293248072295907328_n.jpg?_nc_cat=106&ccb=1-3&_nc_sid=1eb0c7&_nc_eui2=AeEuwz8iRN3Cfbn_0x8_YiBbZKxjbuMC0zxkrGNu4wLTPMQfuate77e_8wolbPHuL8kQxXBLh6wDygAo2PgjTW1s&_nc_ohc=SeaGzGTKfH8AX_oQt0x&_nc_ht=scontent-gru2-2.xx&tp=6&oh=9a86ed0f2f3aef120adbb4372e9a70b6&oe=60C6CCA9",
      notas: 200,
      aberto: true,
      variacaoDeTempo: TimeVariation(
        start: 25,
        finish: 40
      ),
      promocoes: [
        Promocao(
          off: 28,
          opcao: Opcao(
            nome: "Tabula oriental 9",
            descricao: "Tabua oriental de modelo número 9",
            preco: 120,
            categoria: "promocao",
            imageUrl: "https://blog-static.deliway.com.br/assets/base/1ff/8a7/b5d/900-473-tipos-de-sushi.jpg",
          ),
          cupomCode: "gJYt76B6GYV67"
        ),
        Promocao(
          off: 40,
          opcao: Opcao(
            nome: "Tabula oriental 12",
            descricao: "Tabua oriental de modelo número 12",
            preco: 234,
            categoria: "promocao",
            imageUrl: "https://blog-static.deliway.com.br/assets/base/1ff/8a7/b5d/900-473-tipos-de-sushi.jpg",
          ),
          cupomCode: "wrgth"
        ),
        Promocao(
          off: 20,
          opcao: Opcao(
            nome: "Tabula oriental 23",
            descricao: "Tabua oriental de modelo número 23",
            preco: 323,
            categoria: "promocao",
            imageUrl: "https://blog-static.deliway.com.br/assets/base/1ff/8a7/b5d/900-473-tipos-de-sushi.jpg",
          ),
          cupomCode: "gJYt7ewegteewsr6B6GYV67"
        ),
      ],
      cardapio: [
        Opcao(
          nome: "Tabula oriental 9",
          descricao: "Tabua oriental de modelo número 9",
          preco: 120,
          categoria: "sushi",
          imageUrl: "https://blog-static.deliway.com.br/assets/base/1ff/8a7/b5d/900-473-tipos-de-sushi.jpg",
        ),
        Opcao(
          nome: "Tabula oriental 10",
          descricao: "Tabua oriental de modelo número 10",
          preco: 150,
          categoria: "shushi",
          imageUrl: "https://blog-static.deliway.com.br/assets/base/1ff/8a7/b5d/900-473-tipos-de-sushi.jpg",
        ),
        Opcao(
          nome: "Tabula oriental 3",
          descricao: "Tabua oriental de modelo número 3",
          preco: 130,
          categoria: "sushi",
          imageUrl: "https://blog-static.deliway.com.br/assets/base/1ff/8a7/b5d/900-473-tipos-de-sushi.jpg",
        ),
        Opcao(
          nome: "Tabula oriental 4",
          descricao: "Tabua oriental de modelo número 4",
          preco: 110,
          categoria: "sushi",
          imageUrl: "https://blog-static.deliway.com.br/assets/base/1ff/8a7/b5d/900-473-tipos-de-sushi.jpg",
        ),
        Opcao(
          nome: "Tabula oriental 7",
          descricao: "Tabua oriental de modelo número 7",
          preco: 90,
          categoria: "sushi",
          imageUrl: "https://blog-static.deliway.com.br/assets/base/1ff/8a7/b5d/900-473-tipos-de-sushi.jpg",
        ),
      ],
    ),
    Estabelecimento(
      id: 456,
      nome: "Subway",
      categorias: ["restaurante", "lanche"],
      stars: 7,
      notas: 200,
      imageUrl: "https://media-exp1.licdn.com/dms/image/C4E0BAQHNBvsVI1j06g/company-logo_200_200/0/1597247374404?e=2159024400&v=beta&t=igPfcNMkRF1zmEifMLmpbMTfa1y7iw3SuRs3ouWfjqw",
      aberto: true,
      variacaoDeTempo: TimeVariation(
        start: 34,
        finish: 53
      ),
      promocoes: [
        Promocao(
          off: 28,
          opcao: Opcao(
            nome: "Tabula oriental 9",
            descricao: "Tabua oriental de modelo número 9",
            preco: 120,
            categoria: "promocao",
            imageUrl: "https://blog-static.deliway.com.br/assets/base/1ff/8a7/b5d/900-473-tipos-de-sushi.jpg",
          ),
          cupomCode: "gJYt76B6GYV67"
        ),
        Promocao(
          off: 40,
          opcao: Opcao(
            nome: "Tabula oriental 12",
            descricao: "Tabua oriental de modelo número 12",
            preco: 234,
            categoria: "promocao",
            imageUrl: "https://blog-static.deliway.com.br/assets/base/1ff/8a7/b5d/900-473-tipos-de-sushi.jpg",
          ),
          cupomCode: "wrgth"
        ),
        Promocao(
          off: 20,
          opcao: Opcao(
            nome: "Tabula oriental 23",
            descricao: "Tabua oriental de modelo número 23",
            preco: 323,
            categoria: "promocao",
            imageUrl: "https://blog-static.deliway.com.br/assets/base/1ff/8a7/b5d/900-473-tipos-de-sushi.jpg",
          ),
          cupomCode: "gJYt7ewegteewsr6B6GYV67"
        ),
      ],
      cardapio: [
        Opcao(
          nome: "Tabula oriental 9",
          descricao: "Tabua oriental de modelo número 9",
          preco: 120,
          categoria: "sushi",
          imageUrl: "https://blog-static.deliway.com.br/assets/base/1ff/8a7/b5d/900-473-tipos-de-sushi.jpg",
        ),
        Opcao(
          nome: "Tabula oriental 10",
          descricao: "Tabua oriental de modelo número 10",
          preco: 150,
          categoria: "shushi",
          imageUrl: "https://blog-static.deliway.com.br/assets/base/1ff/8a7/b5d/900-473-tipos-de-sushi.jpg",
        ),
        Opcao(
          nome: "Tabula oriental 3",
          descricao: "Tabua oriental de modelo número 3",
          preco: 130,
          categoria: "sushi",
          imageUrl: "https://blog-static.deliway.com.br/assets/base/1ff/8a7/b5d/900-473-tipos-de-sushi.jpg",
        ),
        Opcao(
          nome: "Tabula oriental 4",
          descricao: "Tabua oriental de modelo número 4",
          preco: 110,
          categoria: "sushi",
          imageUrl: "https://blog-static.deliway.com.br/assets/base/1ff/8a7/b5d/900-473-tipos-de-sushi.jpg",
        ),
        Opcao(
          nome: "Tabula oriental 7",
          descricao: "Tabua oriental de modelo número 7",
          preco: 90,
          categoria: "sushi",
          imageUrl: "https://blog-static.deliway.com.br/assets/base/1ff/8a7/b5d/900-473-tipos-de-sushi.jpg",
        ),
      ],
    ),
    Estabelecimento(
      id: 789,
      nome: "Habib's",
      categorias: ["restaurante", "lanche", "pizza",],
      stars: 7,
      notas: 234,
      imageUrl: "https://static-images.ifood.com.br/image/upload/t_high/logosgde/c89fa5d3-d15c-4a18-ae9c-3607498ee995/202103031103_AnES_i.jpg",
      aberto: false,
      variacaoDeTempo: TimeVariation(
        start: 0,
        finish: 0
      ),
      promocoes: [
        Promocao(
          off: 28,
          opcao: Opcao(
            nome: "Tabula oriental 9",
            descricao: "Tabua oriental de modelo número 9",
            preco: 120,
            categoria: "promocao",
            imageUrl: "https://blog-static.deliway.com.br/assets/base/1ff/8a7/b5d/900-473-tipos-de-sushi.jpg",
          ),
          cupomCode: "gJYt76B6GYV67"
        ),
        Promocao(
          off: 40,
          opcao: Opcao(
            nome: "Tabula oriental 12",
            descricao: "Tabua oriental de modelo número 12",
            preco: 234,
            categoria: "promocao",
            imageUrl: "https://blog-static.deliway.com.br/assets/base/1ff/8a7/b5d/900-473-tipos-de-sushi.jpg",
          ),
          cupomCode: "wrgth"
        ),
        Promocao(
          off: 20,
          opcao: Opcao(
            nome: "Tabula oriental 23",
            descricao: "Tabua oriental de modelo número 23",
            preco: 323,
            categoria: "promocao",
            imageUrl: "https://blog-static.deliway.com.br/assets/base/1ff/8a7/b5d/900-473-tipos-de-sushi.jpg",
          ),
          cupomCode: "gJYt7ewegteewsr6B6GYV67"
        ),
      ],
      cardapio: [
        Opcao(
          nome: "Tabula oriental 9",
          descricao: "Tabua oriental de modelo número 9",
          preco: 120,
          categoria: "sushi",
          imageUrl: "https://blog-static.deliway.com.br/assets/base/1ff/8a7/b5d/900-473-tipos-de-sushi.jpg",
        ),
        Opcao(
          nome: "Tabula oriental 10",
          descricao: "Tabua oriental de modelo número 10",
          preco: 150,
          categoria: "shushi",
          imageUrl: "https://blog-static.deliway.com.br/assets/base/1ff/8a7/b5d/900-473-tipos-de-sushi.jpg",
        ),
        Opcao(
          nome: "Tabula oriental 3",
          descricao: "Tabua oriental de modelo número 3",
          preco: 130,
          categoria: "sushi",
          imageUrl: "https://blog-static.deliway.com.br/assets/base/1ff/8a7/b5d/900-473-tipos-de-sushi.jpg",
        ),
        Opcao(
          nome: "Tabula oriental 4",
          descricao: "Tabua oriental de modelo número 4",
          preco: 110,
          categoria: "sushi",
          imageUrl: "https://blog-static.deliway.com.br/assets/base/1ff/8a7/b5d/900-473-tipos-de-sushi.jpg",
        ),
        Opcao(
          nome: "Tabula oriental 7",
          descricao: "Tabua oriental de modelo número 7",
          preco: 90,
          categoria: "sushi",
          imageUrl: "https://blog-static.deliway.com.br/assets/base/1ff/8a7/b5d/900-473-tipos-de-sushi.jpg",
        ),
      ],
    ),
  ];

  final _promosDestaques = {
    "default": Promocao(
      off: 50,
      opcao: Opcao(
        nome: "Teste",
        descricao: "Teste",
        preco: 80,
        categoria: "",
        imageUrl: "https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395__340.jpg",
      ),
      cupomCode: "gJYt76B6GYV67"
    ),
    "lanche": Promocao(
      off: 35,
      opcao: Opcao(
        nome: "Teste",
        descricao: "Teste",
        preco: 46,
        categoria: "",
        imageUrl: "https://www.minervafoods.com/wp-content/uploads/2016/06/como_fazer_hamburguer_caseiro.jpg",
      ),
      cupomCode: "gJYt76B6GYV67"
    ),
    "sushi": Promocao(
      off: 28,
      opcao: Opcao(
        nome: "Teste",
        descricao: "Teste",
        preco: 120,
        categoria: "",
        imageUrl: "https://blog-static.deliway.com.br/assets/base/1ff/8a7/b5d/900-473-tipos-de-sushi.jpg",
      ),
      cupomCode: "gJYt76B6GYV67"
    ),
    "marmita": Promocao(
      off: 30,
      opcao: Opcao(
        nome: "Teste",
        descricao: "Teste",
        preco: 16,
        categoria: "",
        imageUrl: "https://static1.casapraticaqualita.com.br/articles/6/88/6/@/944-marmitas-com-atum-podem-estragar-no-calo-article_content_img-2.jpg",
      ),
      cupomCode: "gJYt76B6GYV67"
    ),
    "bebida": Promocao(
      off: 10,
      opcao: Opcao(
        nome: "Teste",
        descricao: "Teste",
        preco: 9,
        categoria: "",
        imageUrl: "https://exame.com/wp-content/uploads/2020/08/cerveja-gelada-e1598542702646-1.jpg?quality=70&strip=info",
      ),
      cupomCode: "gJYt76B6GYV67"
    ),
  };

  List<Categoria> getCategorias(){ return _categorias; }

  Future<List<Estabelecimento>> getEstabelecimentos(){
    return Future.delayed(
      Duration(seconds: 2),
      () => _estabelecimentos,
    );
  }

  Future<List<Estabelecimento>> getEstabelecimentosUsingFilter(String filter){
    return Future.delayed(
      Duration(seconds: 2),
      (){
        List<Estabelecimento> result = [];
        _estabelecimentos.forEach((estabelecimento) {
          if(estabelecimento.nome.toLowerCase().contains(filter.toLowerCase()))
            result.add(estabelecimento);
        });
        return result;
      },
    );
  }

  Future<List<Estabelecimento>> getEstabelecimentosByCategoria(String categoria){
    return Future.delayed(
      Duration(seconds: 2),
      (){
        List<Estabelecimento> results = [];
        _estabelecimentos.forEach((estabelecimento) {
          if(estabelecimento.categorias.contains(categoria))
            results.add(estabelecimento);
        });
        return results;
      },
    );
  }

  Future getPromocaoDestaque(String category){
    return Future.delayed(
      Duration(seconds: 2),
      (){
        if(_promosDestaques.containsKey(category))
          return _promosDestaques[category];
        else
          return _promosDestaques["default"];
      },
    );
  }

}