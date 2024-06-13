import 'dart:async';
import 'dart:math';

void main() {
  print('Inicio de la descarga');

  final List<String> archivos = ['archivo1.txt', 'archivo2.txt', 'archivo3.txt'];

  descargarArchivosConcurrentemente(archivos)
      .then((archivosDescargados) => procesarArchivos(archivosDescargados))
      .catchError((error) => print('Error durante la descarga: $error'))
      .whenComplete(() => print('Fin de la descarga'));
}

Future<List<String>> descargarArchivosConcurrentemente(List<String> archivos) async {
  final List<Future<String>> futures = [];

  for (var archivo in archivos) {
    futures.add(descargarArchivo(archivo));
  }

  return await Future.wait(futures);
}

Future<String> descargarArchivo(String archivo) {
  final Completer<String> completer = Completer<String>();

  // Simulando la descarga del archivo con una espera aleatoria entre 1 y 5 segundos
  final randomDelay = Random().nextInt(5) + 1;
  Future.delayed(Duration(seconds: randomDelay), () {
    completer.complete('Contenido del archivo $archivo');
  });

  return completer.future;
}

void procesarArchivos(List<String> archivosDescargados) {
  print('Archivos descargados:');
  for (var archivo in archivosDescargados) {
    print(archivo);
  }
}
