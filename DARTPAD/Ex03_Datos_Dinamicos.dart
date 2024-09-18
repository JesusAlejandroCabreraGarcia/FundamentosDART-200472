void main() {
//Practca 05: Tipos de Datos Dinámico (Dynamic - Comodín)

  dynamic errorMessage;
  
  print (""" El valor inicail de errorMessage es $errorMessage
  Al ser dinámico permite la asignacion de valores nulos.""");

  errorMessage = "El usuaio y la contraseña no coinciden";
  print (""" -----------------------------------------------------------------------------------             
  El nuevo valor del errorMessage es $errorMessage
  ahora le hemos asignado un valor de un String.""");

  errorMessage = 404;
  print (""" -----------------------------------------------------------------------------------             
  El nuevo valor del errorMessage es $errorMessage
  En algunos sistemas los errores son controlados por un codigo numerico.""");

  errorMessage = [400,404,500,502,505];
  print (""" -----------------------------------------------------------------------------------             
  El nuevo valor del errorMessage es $errorMessage
  En caso de que el Sistema detecte varios errores podria agregarlos a una Lista.""");

  errorMessage = {125, "Usuario No Encontrado",true,-1025.16,'A'};
  print (""" -----------------------------------------------------------------------------------             
  El nuevo valor del errorMessage es $errorMessage
  O incluso como un conjunto (SET) de datos.""");
  
  errorMessage = () => true;
  print (""" -----------------------------------------------------------------------------------             
  El ultimo cambio a errorMessage es $errorMessage
  Que en este casi es el resultado de una función.""");
}
