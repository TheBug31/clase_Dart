void main() {
  //comparar 3 numeros
  int a = 10;
  int b = 20;
  int c = 15;

  if (a > b && a > c) {
    print("El número $a es el mayor.");
  } else if (b > a && b > c) {
    print("El número $b es el mayor.");
  } else if (c > a && c > b) {
    print("El número $c es el mayor.");
  } else {
    print("Hay números iguales o no se pudo determinar el mayor.");
  }
  //switch case de 3 elementos tipo frutas
  String fruta = "manzana";
  switch (fruta) {
    case "manzana":
      print("La fruta es una manzana.");
      break;
    case "banana":
      print("La fruta es una banana.");
      break;
    case "naranja":
      print("La fruta es una naranja.");
      break;
    default:
      print("La fruta no es ninguna de las anteriores.");
  }
  //  estructura de ciclo for basica que recorra un arreglo de frutas
  List<String> frutas = ["manzana", "banana", "naranja"];

  for (int i = 0; i < frutas.length; i++) {
    print("Fruta en la posición $i: ${frutas[i]}");
  }
  // estructura de ciclo while que recorra un arreglo de nombres de marcas de carros

  List<String> marcasCarros = ["Toyota", "Honda", "Ford"];
  int index = 0;
  while (index < marcasCarros.length) {
    print("Marca de carro en la posición $index: ${marcasCarros[index]}");
    index++;
  }
  // estructura tipo ciclo do while de nombres de equipos de futbol colombiano,teniendo encuenta control de errores y exepciones
  List<String> equiposFutbolColombiano = [
    "Atlético Nacional",
    "Millonarios",
    "América de Cali",
  ];

  int indexEquipos = 1;

  do {
    try {
      print(
        "Equipo de fútbol colombiano en la posición $indexEquipos: ${equiposFutbolColombiano[indexEquipos]}",
      );
      indexEquipos++;
    } catch (e) {
      print("Error: $e. No hay más equipos para mostrar.");
      break;
    }
  } while (indexEquipos < equiposFutbolColombiano.length);
}
