Future<String> httpGet(String url) {
  // El delayed hará que esperemos 4 segundos para devolvernos un mensaje.
  return Future.delayed(new Duration(seconds: 4), () {
    return 'Hola mundo';
  });
}

void main() async {
  print('Estamos a punto de pedir datos');
  String data = await httpGet('http://codetesthub.com/API/Obtener.php');
  print(data);
  print('Ultima linea');
}
