//!Вправа: Практикуємося обробляти помилки

Future<String> fetchNewUsername(){
  //& Для успішного виконання програми 
  return Future.value("Jack");
  //& Для перевірки чи працює захоплення помилок
  // return Future.value(throw 'Cannot locate user order');
}

Future<void> changeUsername() async {
  try {
    String change = await fetchNewUsername();
    print('done');
    print(change);
  } catch (e) {
    print("not changed \n$e");
  }
   //return Future.value(change);
} 