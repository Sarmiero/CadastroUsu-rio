
import 'package:flutter/material.dart';
import 'package:lista_de_usuarios/components/user_tile.dart';
import 'package:lista_de_usuarios/provider/users.dart';
import 'package:lista_de_usuarios/routes/app_routes.dart';
import 'package:provider/provider.dart';


class UserList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Usuários'),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  AppRoutes.USER_FORM
                );
              },
              icon: Icon(Icons.add),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: users.count,
        itemBuilder: (context, index) => UserTile(users.byIndex(index)),

      ),
    );
  }
}

