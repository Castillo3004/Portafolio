import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:qrreader/pages/direcciones_page.dart';

import 'package:qrreader/providers/scan_list_provider.dart';
import 'package:qrreader/providers/ui_provider.dart';
import 'package:qrreader/widgets/custom_navigatorbar.dart';
import 'package:qrreader/widgets/scan_button.dart';

import 'mapas_page.dart';

class HomePage extends StatelessWidget {
   
  const HomePage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      appBar: AppBar(
        title: const Text('Historial'),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: (){
              Provider.of<ScanListProvider>(context, listen:false).borrarTodos();
            }, 
            icon: const Icon( Icons.delete_forever)
          )
        ],
      ),
      body: _HomePageBody(),

      bottomNavigationBar: const CustomNavigationBar(),
      floatingActionButton: const ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomePageBody extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    // Obtener el selected menu opt
    final uiProvider = Provider.of<UiProvider>(context);

    // Cambiar para mostrar la pagina respectiva 
    final currentIndex = uiProvider.selectedMenuOpt;

    // final tempScan = new ScanModel(valor: 'http://google.com');

    // DBProvider.db.nuevoScan(tempScan);
    // DBProvider.db.deleteAllScans().then(print);
    

    // Usar el ScanList provider

    final scanListProvider = Provider.of<ScanListProvider>(context, listen: false);


    switch( currentIndex ){

      case 0:
      scanListProvider.cargarScanPoTipo('geo');
      return const MapasPage();

      case 1: 
      scanListProvider.cargarScanPoTipo('http');
      return const DireccionesPage();
      
      default:
      return const MapasPage();
    }

  }
}