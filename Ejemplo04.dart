
Stream<int> countStream(int to) async*{
  for (int i = 1; i <= to; i++) {
    await Future.delayed(Duration(seconds: 2));
    yield i;
    
  }

}


Future<void> main() async{
  await for(var value in countStream(5)) {
    print(value);
  }

}