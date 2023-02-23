
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/scan_list_provider.dart';
import '../utils/utils.dart';

class ScanList extends StatelessWidget {
  
  final String tipo; 
  
  const ScanList({super.key, required this.tipo});


  @override
  Widget build(BuildContext context) {
    
    final scanListProvider = Provider.of<ScanListProvider>(context);
    final scans = scanListProvider.scans;
    
    return ListView.builder(
      itemCount: scans.length,
      itemBuilder: ( _ , i ) => Dismissible(
        key: Key(scans[i].id.toString()),
        background: Container(
        
          color: Colors.redAccent,
          child:  const Icon(Icons.delete, color: Colors.white, ),
        ),
        onDismissed: (DismissDirection direction){
          Provider.of<ScanListProvider>(context, listen: false).borrarScanPorId(scans[i].id!);
        },
        child: ListTile(
          leading: Icon(
            this.tipo == 'http'
            ? Icons.compass_calibration
            : Icons.map,
            color: Theme.of(context).primaryColor
          ),
          title: Text(scans[i].valor),
          subtitle: Text(scans[i].id.toString()),
          trailing: const Icon(Icons.keyboard_arrow_right),
          onTap: () => launchURL(context, scans[i]),
        ),
      )
    );
  }
}

