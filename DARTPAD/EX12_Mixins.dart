abstract class Animal{}

abstract class Mamifero extends Animal{}
abstract class Ave extends Animal{}
abstract class Pez extends Animal{}

mixin Volador {
  void volar() => print("Estoy volando");
  void planear(int distanciaMaxima) => print("Este animal puede planear hasta:${distanciaMaxima}");
  void ascender(double alturaMaxima) => print("Este animal puede ascender hasta la altura de: ${alturaMaxima} mts. sobre el nivel del mar");
  void descender(String velocidadMaxima) => print("Este animal puede descendera una velocidad de hasta: ${velocidadMaxima}");
}

mixin Caminante {
  void caminar() => print("Estoy caminando");
  void correr(velocidadMaxima) => print("Este aimal puede correr:${velocidadMaxima} km/h");
  void trotar(bool trote) => print("¿Este animal se puede desplazar trotando?:${trote}");
  void saltar(bool salto) => print("¿Este animal puede saltar?:${salto}");
}

mixin Nadador {
  void nadar() => print("Estoy nadando");
  void sumergir(String sumergir) => print("Este animal puede sumergirse hasta: ${sumergir} bajo el mar");
  void respirar(bool respirar) => print("Este animal puede respirar bajo el agua? ${respirar}");
}

class Delfin extends Mamifero with Nadador{}
class Murcielago extends Mamifero with Volador, Caminante{}
class Gato extends Mamifero with Caminante{}

class Paloma extends Ave with Caminante, Volador{}
class Pato extends Ave with Caminante, Volador, Nadador{}

class Tiburon extends Pez with Nadador{}

class TortolaMoteada extends Ave with Volador, Caminante{}
class PezEspada extends Pez with Nadador{}


void main(){
  final flipper = Delfin();
  print("Instanciando la clase de Delfin, y accendiendo a sus funciones,");
  flipper.nadar();
  flipper.sumergir('25 m');
  flipper.respirar(false);

  print("---------------------------------------------------------------");
  print("Instanciando la clase de Murcielago, y accendiendo a sus funciones,");
  final chupacabras =Murcielago();
  chupacabras.caminar();
  chupacabras.volar();

  print("---------------------------------------------------------------");
  print("Instanciando la clase de Pato, y accendiendo a sus funciones,");
  final pekines =Pato();
  pekines.caminar();
  pekines.planear(100);
  pekines.ascender(30);
  pekines.descender('5 km/h');
  pekines.volar();
  pekines.nadar();

  //CASO ANIMAL 1: TORTOLA MOTEADA
  print("---------------------------------------------------------------");
  print("Instanciando la clase de Tortola Moteada, y accendiendo a sus funciones,");
  final torta =TortolaMoteada();
  torta.volar();
  torta.planear(100);
  torta.ascender(300);
  torta.descender('60 km/h');
  
  torta.caminar();
  torta.correr('No puede');
  torta.trotar(false);
  torta.saltar(false);
  
  //CASO ANIMAL 2: TORTOLA PEZ ESPADA
  print("---------------------------------------------------------------");
  print("Instanciando la clase de Pez Espada, y accendiendo a sus funciones,");
  final espada =PezEspada();
  espada.nadar();
  espada.sumergir('500 y 800 metros');
  espada.respirar(true);
}