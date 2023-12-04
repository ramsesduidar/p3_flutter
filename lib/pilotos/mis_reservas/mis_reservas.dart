import 'package:flutter/material.dart';
import 'package:p3_flutter/pilotos/mis_reservas/reserva.dart';

class MisReservasPiloto extends StatelessWidget {
  const MisReservasPiloto({super.key});

  @override
  Widget build(BuildContext context) {
    return MisReservasWidget();
  }
}

class MisReservasWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mis Reservas'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Lógica para reservar circuito
                    // Puedes añadir tu lógica aquí
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ReservaCircuitoWidget()),
                    );
                  },
                  child: Text('Reservar Circuito'),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Table(
              border: TableBorder.all(),
              columnWidths: {
                0: FlexColumnWidth(2),
                1: FlexColumnWidth(2),
                2: FlexColumnWidth(2),
                3: FlexColumnWidth(2),
                4: FlexColumnWidth(2),
              },
              children: [
                TableRow(
                  decoration: BoxDecoration(
                    color: Theme.of(context)
                        .colorScheme
                        .secondaryContainer
                        .withOpacity(0.3),
                  ),
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Reserva',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Circuito',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Tipo Legocar',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Equipo',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Fecha de Reserva',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                _buildTableRow('Reserva 1', 'Circuito A', 'Legocar 1',
                    'Equipo X', '2023-12-01'),
                _buildTableRow('Reserva 2', 'Circuito B', 'Legocar 2',
                    'Equipo Y', '2023-12-15'),
                _buildTableRow('Reserva 3', 'Circuito C', 'Legocar 3',
                    'Equipo Z', '2023-12-30'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  TableRow _buildTableRow(String reserva, String circuito, String tipoLegocar,
      String equipo, String fechaReserva) {
    return TableRow(
      children: [
        TableCell(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(reserva),
          ),
        ),
        TableCell(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(circuito),
          ),
        ),
        TableCell(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(tipoLegocar),
          ),
        ),
        TableCell(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(equipo),
          ),
        ),
        TableCell(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(fechaReserva),
          ),
        ),
      ],
    );
  }
}
