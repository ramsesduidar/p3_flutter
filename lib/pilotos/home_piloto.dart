

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePiloto extends StatelessWidget {
  const HomePiloto({super.key});

  @override
  Widget build(BuildContext context) {
    
    return const SingleChildScrollView(
        child:  Column(
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
          ),
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
                        Expanded(child: Text("Reserva - Rally", style: TextStyle(color: colorScheme.onPrimary, fontSize: 12),)),
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
                        Expanded(child: Text("Reserva - 4x4", style: TextStyle(color: colorScheme.onPrimary, fontSize: 12),)),
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
                        Expanded(child: Text("Carrera - Rally", style: TextStyle(color: colorScheme.onPrimary, fontSize: 12),)),
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
                        Expanded(child: Text("Carrera - 4x4", style: TextStyle(color: colorScheme.onPrimary, fontSize: 12),)),
                        Text("12/04/2024 - 10:00", style: TextStyle(color: colorScheme.onPrimary, fontSize: 12,),),
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

final List<String> imgList = [
  'https://estaticos-cdn.prensaiberica.es/clip/a99a48a0-786d-44b3-89da-e7f28304f4e5_alta-libre-aspect-ratio_default_0.jpg',
  'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/2007_Race_of_Champions.jpg/220px-2007_Race_of_Champions.jpg',
  'https://img.remediosdigitales.com/6ee279/portimao-motogp-2020/840_560.jpg',
  'https://www.diariomotor.com/competicion/imagenes/2018/01/Race_of_Champions_8_18_2_18.jpg',
  'https://carloscastella.files.wordpress.com/2010/06/04-bristol5.gif',

];

class CampeonatosRecientes extends StatelessWidget {
  const CampeonatosRecientes({super.key});

  @override
  Widget build(BuildContext context) {
    
    ThemeData theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
              color: theme.colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(10), //Ajusta el radio según sea necesario
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 5,),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text("Campeonatos recientes:"),
          ),
          CarouselSlider.builder(
            options: CarouselOptions(
              aspectRatio: 3.0,
              enlargeCenterPage: false,
              viewportFraction: 1,
                
            ),
            itemCount: (imgList.length / 3).round(),
            itemBuilder: (context, index, realIdx) {
              final int first = index * 2;
              final int second = first + 1;
              final int third = second + 1;
              return Row(
                children: [first, second, third].map((idx) {
                  return Expanded(
                    flex: 2,
                    child: 
                      Card(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [ 
                            AspectRatio(
                              aspectRatio: 16/9,
                              child: Image.network(imgList[idx], fit: BoxFit.cover)),
                            ListTile(
                              title: Text('Campeonato ${idx+1}', style: const TextStyle(fontWeight: FontWeight.bold),),
                              subtitle: const Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet. Proin',
                                maxLines: 2, // Establece el número máximo de líneas que deseas mostrar
                                overflow: TextOverflow.ellipsis, // Opcional: agrega puntos suspensivos al final si el texto está truncado
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ElevatedButton(
                                    onPressed: null, 
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all<Color>(theme.colorScheme.primary), // Cambia el color aquí
                                    ),
                                    child: 
                                      Text('Ver Informacion', style: TextStyle(color: theme.colorScheme.onPrimary),),
                                  ),
                                ),
                              ],
                            ),
                            
                          ]
                        ),
                      ),
                  );
                }).toList(),
                
              );
            },
            
          )
        ],
      ),
      
    );
  }
  
}

class _CampeonatoCard extends StatelessWidget {
  const _CampeonatoCard(int index);
  

  @override
  Widget build(BuildContext context) {
      return Card(
        
      );
  }

}

