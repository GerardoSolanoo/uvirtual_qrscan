import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uvirtual_qrscan/Pages/Estudiantes_page.dart';
import 'package:uvirtual_qrscan/Pages/direcciones_page.dart';

import 'package:uvirtual_qrscan/providers/UI_provider.dart';
import 'package:uvirtual_qrscan/providers/db_provider.dart';
import 'package:uvirtual_qrscan/widgets/custom_navigatorBar.dart';
import 'package:uvirtual_qrscan/widgets/scan_button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Historial'),
        actions: [
          IconButton(
            icon: Icon(Icons.delete_forever),
            onPressed: () {},
          )
        ],
      ),
      body: _HomePageBody(),
      bottomNavigationBar: CustomNavigationBar(),
      floatingActionButton: ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);

    final currentIndex = uiProvider.selectedMenuOpt;

    //TODO TEMPORAL LEER BASE DE DATOS
    DBProvider.db.database;

    switch (currentIndex) {
      case 0: return EstudiantesPage();
      case 1: return ProfesoresPage();
      default: return EstudiantesPage();
    }
  }
}
