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
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight
                      .bold), // Ajusta el tamaño del texto según sea necesario
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
          SizedBox(height: 50.0), // Espacio entre las filas
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
    return Card(
      elevation: 4.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'imagenes/Campeonato1.jpg',
            width: 200,
            height: 200,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Campeonato ${idx + 1}', // Utiliza el índice más 1
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.all(18.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Lógica para el primer botón
                  },
                  child: Text('Inscribirse'),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(18.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Lógica para el segundo botón
                  },
                  child: Text('Ver info'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
