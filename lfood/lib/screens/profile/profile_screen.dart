import 'package:flutter/material.dart';
import 'package:lfood/models/profile.dart';
import 'package:lfood/screens/profile/widgets/profile_settings.dart';
import 'package:lfood/screens/profile/widgets/setting_item.dart';
import 'package:lfood/services/api_login.dart';

class ProfileScreen extends StatelessWidget {

  final ApiLogin _apiLogin = ApiLogin();

  @override
  Widget build(BuildContext context) {
    final List<SettingItem> settings = [
      SettingItem(
        icon: Icons.credit_card,
        text: "Carteira",
      ),
      SettingItem(
        icon: Icons.chat,
        text: "Conversas",
      ),
      SettingItem(
        icon: Icons.library_books_outlined,
        text: "Meus dados",
      ),
      SettingItem(
        icon: Icons.article_outlined,
        text: "Cupons",
      ),
      SettingItem(
        icon: Icons.logout,
        text: "Sair",
      ),
    ];
    return FutureBuilder<Profile>(
      future: _apiLogin.getProfile(),
      builder: (context, snapshot) {
        if(snapshot.connectionState == ConnectionState.done)
          return Column(
            children: [
              ProfileSettings(profile: snapshot.data!,),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: ListView.builder(
                    itemCount: settings.length,
                    itemBuilder: (context, index) => settings[index],
                  ),
                ),
              ),
            ],
          );
        else if(snapshot.connectionState == ConnectionState.waiting)
          return Center(
            child: CircularProgressIndicator(),
          );
        else
          return Text("Faça Login!");
      },
    );
  }
  
}