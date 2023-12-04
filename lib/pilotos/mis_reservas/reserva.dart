import 'package:flutter/material.dart';
import 'package:p3_flutter/main.dart';

class ReservaCircuitoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reserva de Circuito'),
        backgroundColor: myColorScheme.primary,
        // Agregar el banner al formulario
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [myColorScheme.primary, myColorScheme.onSurface],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 300, vertical: 100),
        child: ReservaFormulario(),
      ),
    );
  }
}

class ReservaFormulario extends StatefulWidget {
  @override
  _ReservaFormularioState createState() => _ReservaFormularioState();
}

class _ReservaFormularioState extends State<ReservaFormulario> {
  final _equipoController = TextEditingController();
  String _tipoLegocarSeleccionado = 'Legocar 1'; // Valor inicial
  final _fechaReservaController = TextEditingController();

  // Lista de opciones para el menú desplegable de tipo Legocar
  final List<String> _opcionesTipoLegocar = [
    'Legocar 1',
    'Legocar 2',
    'Legocar 3'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: TextFormField(
            controller: _equipoController,
            decoration: InputDecoration(labelText: 'ID del Equipo'),
          ),
        ),
        SizedBox(height: 16.0),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: DropdownButtonFormField(
            value: _tipoLegocarSeleccionado,
            items: _opcionesTipoLegocar.map((tipo) {
              return DropdownMenuItem(
                value: tipo,
                child: Text(tipo),
              );
            }).toList(),
            onChanged: (valor) {
              setState(() {
                _tipoLegocarSeleccionado = valor.toString();
              });
            },
            decoration: InputDecoration(labelText: 'Tipo Legocar'),
          ),
        ),
        SizedBox(height: 16.0),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: TextFormField(
            controller: _fechaReservaController,
            decoration: InputDecoration(labelText: 'Fecha de Reserva'),
          ),
        ),
        SizedBox(height: 16.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                // Lógica para cancelar la reserva
                Navigator.of(context).pop(); // Cierra la ventana actual
              },
              child: Text('Cancelar'),
            ),
            ElevatedButton(
              onPressed: () {
                // Lógica para reservar el circuito
                // Puedes añadir tu lógica aquí
                print('Reservar Circuito');
              },
              child: Text('Reservar'),
            ),
          ],
        ),
      ],
    );
  }
}
