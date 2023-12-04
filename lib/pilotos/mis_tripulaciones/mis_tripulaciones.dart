import 'package:flutter/material.dart';

class MisTripulacionesPiloto extends StatelessWidget {
  const MisTripulacionesPiloto({super.key});

  @override
  Widget build(BuildContext context) {
    return MisTripulacionesWidget();
  }
}

class MisTripulacionesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mis Tripulaciones'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Table(
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
                color: Theme.of(context).colorScheme.primary.withOpacity(0.3),
              ),
              children: [
                TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Tripulación',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Email',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Piloto 1',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Piloto 2',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Campeonato',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            _buildTableRow('Tripulacion A', 'equipoA@example.com', 'Juan',
                'María', 'Campeonato 1'),
            _buildTableRow('Tripulacion B', 'equipoB@example.com', 'Pedro',
                'Laura', 'Campeonato 2'),
            _buildTableRow('Tripulacion C', 'equipoC@example.com', 'Carlos',
                'Ana', 'Campeonato 3'),
            _buildTableRow('Tripulacion D', 'equipoD@example.com', 'Sara',
                'Luis', 'Campeonato 4'),
          ],
        ),
      ),
    );
  }

  TableRow _buildTableRow(String tripulacion, String email, String piloto1,
      String piloto2, String campeonato) {
    return TableRow(
      children: [
        TableCell(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(tripulacion),
          ),
        ),
        TableCell(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(email),
          ),
        ),
        TableCell(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(piloto1),
          ),
        ),
        TableCell(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(piloto2),
          ),
        ),
        TableCell(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(campeonato),
          ),
        ),
      ],
    );
  }
}
