import 'package:flutter/material.dart';
import 'package:lfood/utils/star_fill.dart';

class Stars extends StatelessWidget {

  final int stars;

  Stars({required this.stars});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Star(fill: stars > 0 ? stars > 1 ? StarFill.FULL : StarFill.HALF_FULL : StarFill.EMPTY,),
        SizedBox(width: 2.0,),
        Star(fill: stars > 2 ? stars > 3 ? StarFill.FULL : StarFill.HALF_FULL : StarFill.EMPTY,),
        SizedBox(width: 2.0,),
        Star(fill: stars > 4 ? stars > 5 ? StarFill.FULL : StarFill.HALF_FULL : StarFill.EMPTY,),
        SizedBox(width: 2.0,),
        Star(fill: stars > 6 ? stars > 7 ? StarFill.FULL : StarFill.HALF_FULL : StarFill.EMPTY,),
        SizedBox(width: 2.0,),
        Star(fill: stars > 8 ? stars > 9 ? StarFill.FULL : StarFill.HALF_FULL : StarFill.EMPTY,),
        SizedBox(width: 4.0,),
        Text((stars / 2).toStringAsFixed(1),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0
          ),
        ),
      ],
    );
  }

}

class Star extends StatelessWidget{

  final StarFill fill;
  final double height, width;

  Star({required this.fill, this.height = 25.0, this.width = 25.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(fill == StarFill.FULL ? "images/star_full.png" : fill == StarFill.HALF_FULL ? "images/star_half_full.png" : "images/star_empty.png"),
        ),
      ),
      height: this.height,
      width: this.width,
    );
  }

}