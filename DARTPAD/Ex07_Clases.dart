void main() {
  // Clase con parámetros posicionales. Los parámetros deben respetar su orden para ser asignados en la propiedad
  final Hero wolverine = Hero('Logan','Regegeración');
  //Clase con parámetros no posicionales, los puedo mandar en desorden
  final xmen = Team(type:"X-men", name:"Heroes");
  final brotherhood = Team(name:"The Brotherhood of Evil Mutants");

  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);
  print("-------------------------------------------------------------------------");
  print(xmen);
  print(xmen.name);
  print(xmen.type);
  print("-------------------------------------------------------------------------");
  print(brotherhood);
  print(brotherhood.name);
  print(brotherhood.type);
  //Invocando al metodo rescrito con @override
  print(brotherhood.toString());
}

class Hero 
{
  String name;
  String power;  

  Hero(this.name, this.power);

//  Hero(String pName, String pPower)
//     : name = pName,
//        power = pPower;
}

class Team
{
  String name;
  String type;

  Team({
    required this.name,
    this.type = 'No definido'
    });
  
  @override
  String toString()
  {
    return 'Grupo : $name, Tipo: $type';
  }
}