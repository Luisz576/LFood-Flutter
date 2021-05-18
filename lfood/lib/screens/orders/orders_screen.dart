import 'package:flutter/material.dart';
import 'package:lfood/models/order.dart';
import 'package:lfood/models/profile.dart';
import 'package:lfood/screens/orders/widgets/order_item.dart';
import 'package:lfood/services/api_database.dart';
import 'package:lfood/services/api_login.dart';

class OrdersScreen extends StatelessWidget {

  final ApiLogin apiLogin = ApiLogin();
  final ApiDatabase database = ApiDatabase();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Profile>(
        future: apiLogin.getProfile(),
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.done){
            final Profile profile = snapshot.data!;
            return Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Text("Pedidos",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Expanded(
                    child: profile.id > 0 ? FutureBuilder<List<Order>>(
                      future: database.getOrdersFromUser(profile.id),
                      builder: (context, snapshot) {
                        if(snapshot.connectionState == ConnectionState.done){
                          final List<Order> _orders = snapshot.data!;
                          return _orders.length > 0 ? ListView.builder(
                            itemCount: _orders.length,
                            itemBuilder: (context, index) => OrderItem(order: _orders[index], database: database,),
                          ) : Text("Você ainda não fez nenhum pedido!");
                        }else if(snapshot.connectionState == ConnectionState.waiting)
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        else
                          return Text("Erro ao carregar!");
                      },
                    ) : Text("Realize o login para ver seus pedidos!"),
                  ),
                ],
              ),
            );
          }else if(snapshot.connectionState == ConnectionState.waiting)
            return Center(
              child: CircularProgressIndicator(),
            );
          else
            return Text("Erro ao carregar!");
        },
      );
  }

}