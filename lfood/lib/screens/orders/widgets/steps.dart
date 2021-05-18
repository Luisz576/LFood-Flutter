import 'package:flutter/material.dart';
import 'package:lfood/screens/orders/widgets/step_order.dart';

class Steps extends StatelessWidget {

  final int step;

  Steps({required this.step});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        StepOrder(
          number: 1,
          text: this.step > 0 ? "Aceito" : "A aceitar",
          isComplete: this.step > 0,
        ),
        SizedBox(width: 10,),
        StepOrder(
          number: 2,
          text: this.step > 1 ? "Pronto" : "Preparando",
          isComplete: this.step > 1,
        ),
        SizedBox(width: 10,),
        StepOrder(
          number: 3,
          text: this.step > 2 ? "Entregue" : "Entregando",
          isComplete: this.step > 2,
        ),
      ],
    );
  }

}