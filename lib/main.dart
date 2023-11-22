import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:invent/screens/login.dart';
import 'package:invent/screens/menu.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Provider(
            create: (_) {
                CookieRequest request = CookieRequest();
                return request;
            },
            child: MaterialApp(
                title: 'invent',
                theme: ThemeData(
                    colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
                    useMaterial3: true,
                ),
                home: LoginPage()),
            );
    }
}