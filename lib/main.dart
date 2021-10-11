import 'package:flutter/material.dart';
import 'package:lista_de_usuarios/provider/users.dart';
import 'package:lista_de_usuarios/routes/app_routes.dart';
import 'package:lista_de_usuarios/views/user_form.dart';
import 'package:lista_de_usuarios/views/user_list.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MultiProvider(providers: [
      ChangeNotifierProvider(
          create: (context) => Users(),
      )
    ],

      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),
        routes: {
          AppRoutes.HOME: (_) => UserList(),
          AppRoutes.USER_FORM: (_) => UserForm()

        },
      ),
    );
  }
}

