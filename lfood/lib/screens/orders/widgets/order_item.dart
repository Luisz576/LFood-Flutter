import 'package:flutter/material.dart';
import 'package:lfood/models/estabelecimento.dart';
import 'package:lfood/models/order.dart';
import 'package:lfood/screens/orders/widgets/steps.dart';
import 'package:lfood/services/api_database.dart';

class OrderItem extends StatelessWidget {

  final Order order;
  final ApiDatabase database;

  OrderItem({required this.order, required this.database});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.only(bottom: 10),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: FutureBuilder<Estabelecimento>(
          future: database.getEstabelecimentoById(order.estabelecimentoId),
          builder: (context, snapshot) {
            if(snapshot.connectionState == ConnectionState.done)
              if(!snapshot.data!.isEmpty())
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(snapshot.data!.imageUrl),
                        ),
                      ),
                      height: MediaQuery.of(context).size.height / 8,
                      width: MediaQuery.of(context).size.height / 8,
                    ),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(snapshot.data!.nome,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Steps(step: order.step),
                        SizedBox(height: 5,),
                        Text("Pedido: ${order.id}",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 8,
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              else
                return Text("Pedido inválido");
            else if(snapshot.connectionState == ConnectionState.waiting)
              return Center(
                child: CircularProgressIndicator(),
              );
            else
              return Text("Erro ao carregar!");
          },
        ),
      ),
    );
  }

}