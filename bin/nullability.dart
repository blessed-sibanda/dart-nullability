import 'dart:math';

void main(List<String> arguments) {
  String? name;
  name = 'Blessed';
  print(name.length);
  print(isPositive(89));

  String? message;
  final text = message ?? 'Error';
  print(text);

  double? fontSize;
  fontSize ??= 20.0;
  print(fontSize);

  int? age = 45;
  print(age.isNegative);

  bool flowerIsBeautiful = isBeautiful('floweryyy') ?? true;
  print(flowerIsBeautiful);

  List<int>? myList = [1, 2, 3];
  myList = null;
  int? myItem = myList?[2];
  print(myItem);
  final rand = randomize() ?? 0;
  print(rand);

  final ble = Name('Blessed', surname: 'Sibanda');
  print(ble);

  final pau = Name('Pauline', surname: 'Mtisi', surnameIsFirst: true);
  print(pau);

  final rose = Name('Rose');
  print(rose);
}

bool isPositive(int? anInteger) {
  if (anInteger == null) {
    return false;
  }
  return !anInteger.isNegative;
}

bool? isBeautiful(String? item) {
  if (item == 'flower') {
    return true;
  } else if (item == 'garbage') {
    return false;
  }
  return null;
}

class User {
  User(this.name);

  final String name;
  late final int _secretNumber = _calculateSecret();

  int _calculateSecret() {
    return name.length + 42;
  }
}

int? randomize() {
  final value = Random().nextInt(2);
  switch (value) {
    case 0:
      return 42;
    default:
      return null;
  }
}

class Name {
  Name(this.givenName, {this.surname, this.surnameIsFirst = false});
  final String givenName;
  String? surname;
  final bool surnameIsFirst;

  @override
  String toString() {
    surname ??= '';
    if (surnameIsFirst) {
      return '$surname $givenName';
    }
    return '$givenName $surname';
  }
}
