import 'package:flutter/material.dart';
import 'package:lfood/utils/AppColors.dart';

class SettingItem extends StatelessWidget {

  final String text;
  final IconData icon;

  SettingItem({required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: InkWell(
        onTap: (){
          print(text);
        },
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              child: Padding(
                padding: EdgeInsets.zero,
                child: Row(
                  children: [
                    Icon(this.icon,
                      color: AppColors.darkGrey,
                      size: 32,
                    ),
                    SizedBox(width: 10,),
                    Text(this.text,
                      style: TextStyle(
                        color: AppColors.darkGrey,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15,),
            Container(
              height: 2,
              color: AppColors.darkGrey,
            ),
          ],
        ),
      ),
    );
  }

}