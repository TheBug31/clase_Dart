// definicion de tipos de datos en dart
void main() {
  int edad = 30; // tipo de dato entero
  double altura = 1.75; // tipo de dato decimal
  num peso = 70.5; // tipo de dato numérico (puede ser entero o decimal)
  String nombre = "Juan"; // tipo de dato cadena de texto
  bool esMayorDeEdad = true; // tipo de dato booleano
  List<String> hobbies = ["futbol", "musica", "viajar"]; // tipo de dato lista
  Map<String, dynamic> calificaciones = {
    "matematicas": 90,
    "lengua": 85,
    "ciencias": 92,
  }; // tipo de dato mapa
  Set<String> frutas = {
    "manzana",
    "banana",
    "naranja",
  }; // tipo de dato conjunto
  Runes unicode = Runes('\u2665'); // tipo de dato runas (caracteres unicode)
  Symbol simbolo = #simbolo; // tipo de dato símbolo

  print("El nombre es: $nombre");
  print("La edad es: $edad");
  print("El peso es: $peso");
  print("La altura es: $altura");
  print("Las calificaciones son: $calificaciones");
  print("¿Es mayor de edad? $esMayorDeEdad");
  print("Los hobbies son: $hobbies");
  print("Las frutas son: $frutas");
  print("El carácter unicode es: $unicode");
  print("El símbolo es: $simbolo");
}
