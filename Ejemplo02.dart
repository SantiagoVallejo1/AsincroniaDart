// void main() {
//   print('Inicio del programa');

//   operation().then((value){
//     print("Operacion completada: $value");
//     print("Fin del programa");
//   });
// }

// Future<int> operation(){
//   return Future.delayed(Duration(seconds: 3), () {
//     return 5 * 2;
//   });
// }

void main() {

  print("Inicio del programa");
  operation().then((value){
    print("Operacion completada: $value");
    print("Fin del programa");
  });

}


Future<int> operation(){
  return Future.delayed(Duration (seconds: 3), (){
    return 5 * 2;
  });
}