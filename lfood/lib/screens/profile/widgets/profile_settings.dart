import 'package:flutter/material.dart';
import 'package:lfood/models/profile.dart';
import 'package:lfood/utils/AppColors.dart';

class ProfileSettings extends StatelessWidget {

  final Profile profile;

  ProfileSettings({required this.profile});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(this.profile.imageUrl),
                  fit: BoxFit.cover
                ),
              ),
              height: MediaQuery.of(context).size.height / 7,
              width: MediaQuery.of(context).size.height / 7,
            ),
            Text(profile.nome),
          ],
        ),
        Container(
          color: AppColors.darkGrey,
          height: 4,
        )
      ],
    );
  }

}