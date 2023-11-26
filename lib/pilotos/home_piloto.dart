import 'package:flutter/material.dart';

class HomePiloto extends StatelessWidget {
  const HomePiloto({super.key});

  @override
  Widget build(BuildContext context) {
    
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Bienvenido, Juan',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold), // Ajusta el tamaño del texto según sea necesario
            ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: PanelProximosEventos(),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: CampeonatosRecientes(),
        ),
      ],
    );
  }

}

class PanelProximosEventos extends StatelessWidget {
  const PanelProximosEventos({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
              color: theme.colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(10), //Ajusta el radio según sea necesario
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 5,),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text("Tus próximos eventos:"),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(child: _ProximasReservas()),
                SizedBox(width: 10,),
                Expanded(child: _ProximasCarreras()),
              ],
            ),
          ),
          SizedBox(height: 10,),
        ],
      )
    );
  }
  
}

class _ProximasReservas extends StatelessWidget {
  const _ProximasReservas();

  
  @override
  Widget build(BuildContext context) {
    
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    
    return Container(
      decoration: BoxDecoration(
              color: colorScheme.secondary,
              borderRadius: BorderRadius.circular(5), //Ajusta el radio según sea necesario
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 5,),
            Text("RESERVAS", style: TextStyle(color: colorScheme.onSecondary, fontWeight: FontWeight.bold),),
            const SizedBox(height: 5,),
            Container(
              decoration: BoxDecoration(
                color: colorScheme.primary,
                borderRadius: BorderRadius.circular(5), //Ajusta el radio según sea necesario
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text("Reserva - Rally", style: TextStyle(color: colorScheme.onPrimary, fontSize: 12),),
                        const SizedBox(width: 200,),
                        Text("05/04/2024 - 14:00", style: TextStyle(color: colorScheme.onPrimary, fontSize: 12),),
                      ],
                    ), 
                    Text("Circuito 2", style: TextStyle(color: colorScheme.onPrimary, fontWeight: FontWeight.bold),),
                  ]
                ),
              ),
            ),
            const SizedBox(height: 5,),
            Container(
              decoration: BoxDecoration(
                color: colorScheme.primary,
                borderRadius: BorderRadius.circular(5), //Ajusta el radio según sea necesario
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text("Reserva - 4x4", style: TextStyle(color: colorScheme.onPrimary, fontSize: 12),),
                        const SizedBox(width: 200,),
                        Text("06/04/2024 - 10:00", style: TextStyle(color: colorScheme.onPrimary, fontSize: 12),),
                      ],
                    ), 
                    Text("Circuito 13", style: TextStyle(color: colorScheme.onPrimary, fontWeight: FontWeight.bold),),
                  ]
                ),
              ),
            ),
            const SizedBox(height: 10,),
          ],
        ),
      )
    );
  }

}

// Copia pega de _ProximasReservas
class _ProximasCarreras extends StatelessWidget {
  const _ProximasCarreras();

  @override
  Widget build(BuildContext context) {
    
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Container(
      decoration: BoxDecoration(
              color: colorScheme.secondary,
              borderRadius: BorderRadius.circular(5), //Ajusta el radio según sea necesario
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 5,),
            Text("CARRERAS", style: TextStyle(color: colorScheme.onSecondary, fontWeight: FontWeight.bold),),
            const SizedBox(height: 5,),
            Container(
              decoration: BoxDecoration(
                color: colorScheme.primary,
                borderRadius: BorderRadius.circular(5), //Ajusta el radio según sea necesario
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text("Carrera - Rally", style: TextStyle(color: colorScheme.onPrimary, fontSize: 12),),
                        const SizedBox(width: 200,),
                        Text("08/04/2024 - 14:00", style: TextStyle(color: colorScheme.onPrimary, fontSize: 12),),
                      ],
                    ), 
                    Text("Circuito 2", style: TextStyle(color: colorScheme.onPrimary, fontWeight: FontWeight.bold),),
                  ]
                ),
              ),
            ),
            const SizedBox(height: 5,),
            Container(
              decoration: BoxDecoration(
                color: colorScheme.primary,
                borderRadius: BorderRadius.circular(5), //Ajusta el radio según sea necesario
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text("Carrera - 4x4", style: TextStyle(color: colorScheme.onPrimary, fontSize: 12),),
                        const SizedBox(width: 200,),
                        Text("12/04/2024 - 10:00", style: TextStyle(color: colorScheme.onPrimary, fontSize: 12),),
                      ],
                    ), 
                    Text("Circuito 13", style: TextStyle(color: colorScheme.onPrimary, fontWeight: FontWeight.bold),),
                  ]
                ),
              ),
            ),
            const SizedBox(height: 10,),
          ],
        ),
      )
    );
  }

}

class CampeonatosRecientes extends StatelessWidget {
  const CampeonatosRecientes({super.key});

  @override
  Widget build(BuildContext context) {
    
    return const Text("Campeonatos recientes:",);
  }

}