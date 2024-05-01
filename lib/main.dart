import 'package:chatping/app/app_state.dart';
import 'package:chatping/navigation/main_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => AppState(brightness: Theme.of(context).brightness),
        child: MaterialApp(
          title: 'Chat Ping',
          theme: ThemeData(
            useMaterial3: true,
          ),
          themeMode: ThemeMode.system,
          debugShowCheckedModeBanner: false,
          home: const MainPage(),
        ));
  }
}
