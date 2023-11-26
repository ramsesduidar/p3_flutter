import 'package:flutter/material.dart';
import 'package:p3_flutter/pilotos/campeonatos/campeonatos.dart';
import 'package:p3_flutter/pilotos/home_piloto.dart';
import 'package:p3_flutter/pilotos/mis_campeonatos/mis_campeonatos.dart';
import 'package:p3_flutter/pilotos/mis_reservas/mis_reservas.dart';

import 'pilotos/mis_tripulaciones/mis_tripulaciones.dart';

// Definir una paleta de colores personalizada
const ColorScheme myColorScheme = ColorScheme(
  primary: Color(0xFF02A7F0), // Color principal 
  secondary: Color.fromARGB(255, 0, 0, 0), // Color secundario y de la cabecera
  surface: Color(0xFFFFFFFF), // Color de superficie (fondos de las aplicaciones)
  background: Color(0xFFFFFFFF), // Color de fondo
  error: Color(0xFFB00020), // Color de error
  onPrimary: Color(0xFFFFFFFF), // Color del texto en el color principal
  onSecondary: Color(0xFFFFFFFF), // Color del texto en el color secundario
  onSurface: Color(0xFF000000), // Color del texto en la superficie
  onBackground: Color(0xFF000000), // Color del texto en el fondo
  onError: Color(0xFFFFFFFF), // Color del texto en caso de error
  brightness: Brightness.light, // Brillo de la paleta
  primaryContainer: Color(0xFFF2F2F2)
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LegoCars',
      theme: ThemeData(
        colorScheme: myColorScheme,
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'LegoCars Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var selectedIndex = 0;     // ← Add this property.

  @override
  Widget build(BuildContext context) {
    final List<Widget> page = [
    const HomePiloto(),
    const CampeonatosPiloto(),
    const MisCampeonatosPiloto(),
    const MisTripulacionesPiloto(),
    const MisReservasPiloto(),
  ];
  ThemeData theme = Theme.of(context);
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              "LegoCars",
              style: TextStyle(
                color: theme.colorScheme.onSecondary, // Color blanco para el texto
                fontWeight: FontWeight.bold,
              ),
            ), 
            backgroundColor: theme.colorScheme.secondary,
          ),
          body: Row(
            children: [
              SafeArea(
                child:NavigationRail(
                  extended: constraints.maxWidth >= 600,  // ← Here.,
                  backgroundColor: theme.colorScheme.primary,
                  destinations: [
                    NavigationRailDestination(
                      icon: Icon(Icons.home, color: theme.colorScheme.onPrimary,),
                      label: Text('Home', style: TextStyle(color: theme.colorScheme.onPrimary),),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.home, color: theme.colorScheme.onPrimary,),
                      label: Text('Campeonatos', style: TextStyle(color: theme.colorScheme.onPrimary),),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.home, color: theme.colorScheme.onPrimary,),
                      label: Text('Mis Campeonatos', style: TextStyle(color: theme.colorScheme.onPrimary),),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.home, color: theme.colorScheme.onPrimary,),
                      label: Text('Mis Tripulaciones', style: TextStyle(color: theme.colorScheme.onPrimary),),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.home, color: theme.colorScheme.onPrimary,),
                      label: Text('Mis Reservas', style: TextStyle(color: theme.colorScheme.onPrimary), ),
                    ),
                  ],
                  selectedIndex: selectedIndex,
                  onDestinationSelected: (value) {
                    setState(() {
                      selectedIndex = value;
                    });
                  },
                ),
              ),
              Expanded(
                child: Container(
                  color: theme.colorScheme.background,
                  child: page[selectedIndex],
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}










