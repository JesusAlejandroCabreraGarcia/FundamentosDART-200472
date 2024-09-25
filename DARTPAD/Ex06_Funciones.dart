void main() {
  //FUNCIONES
  //1. Llamado de una funcion Basica
  greentEveryone(); 

  //2. Llamado de una funcion que retorna un valor
  //2.1 Si no deseamos almacenar el valor, se invoca normalmente
  print("Hoy es el dia numero ${getDayNumber()}");
  //2.2 Necesitamos almacenar el valor retornado para utilizar si valor en otras operaciones del programa
  final numeroDia = getDayNumber();
  print("En 3 dias estaremos a: ${(numeroDia+3)}");
  //3. Llamando de una funcion con parametros
  print(greetSomeone("Marco A."));
  //3.1 y que pasa si intentamos? 
  print(greetSomeone(45));
  print(greetSomeone(-15));
  print(greetSomeone(3.1416));
  print(greetSomeone(true));
  //3.2 
  //print(greetSomeoneTyped(45));
  //print(greetSomeoneTyped(-15));
  //print(greetSomeoneTyped(3.1416));
  //print(greetSomeoneTyped(true));
  print(greetSomeoneTyped("Hugo Sanchez"));
  //4,Llamado de funciones con varios parametros pocisionales.
  // para este caso los parametros deben ser enviados en la posicion exacta y segun dart ambos por defecto son obligartorios
  print(greetSomeooneHourOfDay("Marco A.", 10));
  //¿que pasa si solo envio un solo parametro?
  //print(greetSomeooneHourOfDay(null, null));
  //print(greetSomeooneHourOfDay("Marco"));
  //print(greetSomeooneHourOfDay(10));
  //Analizando la funcion determinamos que la hora del dia puede ser nulo, y se puede definir con la hora actual del SO
  print(greetSomeooneHourOfDay("Adalid.", null));  
  print(greetSomeooneHourOfDay("Maria."));
  
  //5. FUNCIONES LAMBDA, ANONIMAS. ARROW FUNCIONS, FUNCIONES FLECHA
  //Las funciones lambda, tambien conocidas como funciones anonimas o funciones fleacha,se ejecutan de manera simple y no frecuente en la ejecucion de un programa o sistema, en DART estas funciones solo pueden tener una sola instruccion para usar el operador =>
  final double costoTotal;
  var calculaTotalCarrrito=(double productQuanity, double productPrice, double percentageDiscount)=>(productQuanity*productPrice)*((100-percentageDiscount)/100);
  
  double cantidad = 3.180;
  double precio = 1725.10;
  double descuento = 8;
  
  print("""
  Costo total del producto: ${precio}
  Cantidad solicitada: ${cantidad}
  Descuento definido: ${descuento}
  -------------------------------------------------------------------------------------------------
  Costo Total: ${calculaTotalCarrrito(cantidad, precio, descuento)}""");
  
  //6. Llamado de la funcion con parametros nombrados
  print(infoCarListStatus(buyerName: "Gabriela"));
  //6.1 Llamado de una funcion con los parametros en desorden posicional
  print(infoCarListStatus(
        status: "En espera de pago",
        amountCarList: 27,
        buyerName: "Gabriela"));
  
}
//1. FUNCIONES SIN PARAMETROS Y SIN RETORNO DE VALOR
 greentEveryone() //<- dynamic
 {
   print("Hola a Todas y Todos desde DART");
 }

//2. FUNCIONES QUE RETORNAN VALORES
int getDayNumber() //<- retorna un entero
{
  DateTime now = DateTime.now();
  return now.day;
}

//3. FUNCIONES QUE REQUIEREN DE ALMENOS UN PARAMETRO 
String greetSomeone(personName)
{
  return "Hola, ${personName}";
}

//3.1 FUNCION QUE RECIBE PARAMETROS TRIPIFCADOS
 String greetSomeoneTyped(String personName)
 {
   return "Hola ${personName}";
 }

//4. FUNCIONES QUE RECIBE MAS DE UN PARAMETRO
//int? puede ser vacio
//[] Puede ser opcional
String greetSomeooneHourOfDay(String personName, [int? hourDay])
{
  String greeting;
  hourDay ??= DateTime.now().hour;
  print("Hora: ${hourDay}");
  //El operador ??= significa que si es nulo lo inicialice como, en caso que tenga valor ignore la intruccion
  if(hourDay >= 6&& hourDay <12)
  {
    greeting = "Buenos dias";
  }
  else if(hourDay>=12 && hourDay < 18)
  {
    greeting = "Buenas tardes";
  }
    else 
  {
    greeting = "Buenas noches";
  }
  return "${greeting}, ${personName}";
}

//FUNCIONES CON PARAMETROS NOMBRADOS
String infoCarListStatus({required String buyerName, double amountCarList=0.0, String status="Seleccion de productos"})
{
  return "El Carrito de compras de: ${buyerName}, tiene un total de: ${amountCarList} y actualmente esta en estatus: ${status}";
}