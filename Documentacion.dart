//Juan Gabriel

// import 'dart:async';

// Future<String> obtenerDatos() async {
//   await Future.delayed(Duration(seconds: 6));
//   return 'Nombre: Juan Pérez, Edad: 28, Email: juan.perez@example.com';
// }

// Future<List<String>> obtenerPedido() async {
//   await Future.delayed(Duration(seconds: 3));
//   return ['Pedido 1: Café', 'Pedido 2: Libro', 'Pedido 3: Laptop'];
// }

// void main() async {
//   print('Obteniendo datos del usuario y sus pedidos...');

// var resultados = await Future.wait([obtenerDatos(), obtenerPedido()]);

//   String Datos = resultados[0] as String;
//   List<String> Pedidos = resultados[1] as List<String>;

//   print('Datos del usuario obtenidos:');
//   print(Datos);

//   print('Pedidos del usuario obtenidos:');
//   Pedidos.forEach((Pedido) => print(Pedido));
// }

//Esteban Cardona 

// import 'dart:async';

// void main() {
//   print('Inicio del programa');

//   fetchData().then((data) {
//     print('Datos obtenidos: $data');
//   }).catchError((error) {
//     print('Error al obtener datos: $error');
//   });

//   print('Fin del programa');
// }

// Future<String> fetchData() async {
//   await Future.delayed(Duration(seconds: 2));
//   return 'Datos de ejemplo';
// }

//Valentina Gonzalez

// import 'dart:async';

// Future<void> main() async {
//   print('Iniciando Reinicio del Programa...');
//   await ReinicioAsincrono();
//   print('Reinicio completo.');
// }

// Future<void> ReinicioAsincrono() async {
//   await Future.delayed(Duration(seconds: 3));
//   print('El Reincio a sido Exitoso!.');
// }

//Duvan Mendez

import 'dart:convert';
import 'dart:io';

Future<String> descargarPaginaWeb(String url) async {
  HttpClient httpClient = HttpClient();
  var request = await httpClient.getUrl(Uri.parse(url));
  var response = await request.close();
  if (response.statusCode == HttpStatus.ok) {
    String responseBody = await response.transform(Utf8Decoder()).join();
    return responseBody;
  } else {
    throw Exception('Error al descargar la página: ${response.statusCode}');
  }
}

void main() async {
  var url = 'https://www.example.com';

  print('Iniciando descarga de la página web...\n');

  try {
    await Future.delayed(Duration(seconds: 5));

    print('Contenido de la página web:');
    var paginaWeb = await descargarPaginaWeb(url);
    print(paginaWeb);
  } catch (e) {
    print('Error: $e');
  }
}

//Santiago Vallejo

// import 'dart:async';

// void main() async {
//   print('Iniciando Reinicio del Programa...');
//   await ReinicioAsincrono();
//   print('Reinicio completo.');
// }

// Future<void> ReinicioAsincrono() async {
//   await Future.delayed(Duration(seconds: 3));
//   print("hola");
// }
