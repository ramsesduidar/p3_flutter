import 'package:flutter/material.dart';

class CampeonatosPiloto extends StatelessWidget {
  const CampeonatosPiloto({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Bienvenido, Juan',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: PanelCampeonatos(),
          ),
        ],
      ),
    );
  }
}

class PanelCampeonatos extends StatelessWidget {
  const PanelCampeonatos({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerConFilas();
  }
}

class ContainerConFilas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          FilaDeTarjetas(0),
          SizedBox(height: 50.0),
          FilaDeTarjetas(3),
        ],
      ),
    );
  }
}

class FilaDeTarjetas extends StatelessWidget {
  final int id;

  FilaDeTarjetas(this.id);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TarjetaConBotones(id),
        TarjetaConBotones(id + 1),
        TarjetaConBotones(id + 2),
      ],
    );
  }
}

class TarjetaConBotones extends StatelessWidget {
  final int idx;

  TarjetaConBotones(this.idx);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.asset(
                'imagenes/Campeonato1.jpg',
              ),
            ),
            ListTile(
              title: Text(
                'Campeonato ${idx + 1}',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet. Proin',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      _mostrarEnDesarrollo(context);
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Theme.of(context).colorScheme.primary),
                    ),
                    child: Text(
                      'Ver Informacion',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      _mostrarEnDesarrollo(context);
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Theme.of(context).colorScheme.primary),
                    ),
                    child: Text(
                      'Inscribirse',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _mostrarEnDesarrollo(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('En desarrollo...'),
          content: Text('Esta función está en desarrollo.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Aceptar'),
            ),
          ],
        );
      },
    );
  }
}
