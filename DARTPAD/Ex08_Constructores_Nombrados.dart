void main() {
  // Constructores Nombrados
  // CASO DE PRUEBA 1 -- Enviando todos
  final juanPerez = Person(
    ID: 250,
    cortesyTitle: "Sr.",
    name: "Juan Manuel",
    firstLastName: "Pérez",
    secondLastName: "Rodríguez",
    gender: "Hombre",
    bloodGroup: "O+",
    photoURL: "images/clientes/250.png",
    curp: "PERJ920805HPLRN07",
    birthdate: DateTime(1992, 08, 05),
    isActive: true,
    createdAt: DateTime(2024, 09, 2024, 11, 05, 16)
  );
  print(juanPerez);
  
  // CASO DE PRUEBA 2 -- Enviando solo los Datos requeridos (obligatorios)
  final marthaFlores = Person(
    ID: 125,
    name: "Martha",
    firstLastName: "Flores",
    gender: "Mujer",
    bloodGroup: "O-",
    birthdate: DateTime(2000, 01, 08)
  );
  print(marthaFlores);
}

class Person {
  int ID;
  String? cortesyTitle;
  String name;
  String firstLastName;
  String? secondLastName;
  String gender;
  String bloodGroup;
  String? photoURL;
  String? curp;
  DateTime birthdate;
  bool isActive;
  DateTime createdAt;
  DateTime? updatedAt;

  Person({
    required this.ID,
    this.cortesyTitle,
    required this.name,
    required this.firstLastName,
    this.secondLastName,
    required this.gender,
    required this.bloodGroup,
    this.photoURL,
    this.curp,
    required this.birthdate,
    this.isActive = true,
    DateTime? createdAt,
    this.updatedAt
  }): createdAt = createdAt ?? DateTime.now();

  @override  
  String toString() {
    final String formatedBirtDate =
      "${birthdate.day.toString().padLeft(2, '0')}/" +
        "${birthdate.month.toString().padLeft(2, '0')}/${birthdate.year}";

    final String formatedCreatedDate = 
      "${createdAt.day.toString().padLeft(2, '0')}/" +
        "${birthdate.month.toString().padLeft(2, '0')}/${birthdate.year} ${createdAt.hour.toString().padLeft(2, '0')}:${createdAt.minute.toString().padLeft(2, '0')}:${createdAt.second.toString().padLeft(2, '0')}";

    curp ??= "No registrado";
    if (curp == "") curp = "No registrado";

    String status = "Sin definir";
    if (isActive) 
      status = "Activo";
    else 
      status = "Inactivo";

    return """
    ------------------------------------------------------------
    DATOS DE LA PERSONA
    ------------------------------------------------------------
    ID: $ID,
    Nombre: $name $firstLastName $secondLastName
    Género: $gender
    Grupo Sanguineo: $bloodGroup
    Fecha de Nacimiento: $formatedBirtDate
    Foto: $photoURL
    CURP: $curp
    Estatus: $status
    Fecha de Registro: $formatedCreatedDate
    ------------------------------------------------------------
    """;
    //corregimos unos errores
  }
  
}