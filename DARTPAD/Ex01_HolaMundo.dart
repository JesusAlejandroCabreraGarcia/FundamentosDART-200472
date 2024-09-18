void main() {
    print('Hola mundo😎, ¿Como estan?');
  
  // Declara una variable generica para almacenar mi nombre
    var myName = "Alejandro";
    String myLastName = "Cabrera";
    final int myDNI = 200472;
    late final int myAge;
  
  // Se imprime en pantalla
  print('Hola $myName $myLastName, tu matricula es: $myDNI y tu edad aun no la conozco, por que no se cuando naciste.');
  
    // Interpolando el valor de las variables con metodos de maniplulacion o transaformacion
  print('Hola ${myName.toUpperCase()} ${myLastName.toUpperCase()}, tu matricula es: $myDNI y tu edad aun no la conozco, por que no se cuando naciste.');
}
