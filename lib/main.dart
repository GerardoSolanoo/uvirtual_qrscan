import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uvirtual_qrscan/providers/UI_provider.dart';

import 'Pages/home_page.dart';
import 'Pages/mapa_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => new UiProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'UVirtualQR',
        initialRoute: 'home',
        routes: {
          'home': (_) => HomePage(),
          'mapa': (_) => EstudiantePage(),
        },
        theme: ThemeData.dark(),
      ),
    );
  }
}
