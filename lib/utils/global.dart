class Global{


  static int selectedMode=0;

  static List<String> tipoDeMovimiento = [
    "Puerta a puerto", "Puerto  a puerto", "puerto a puerta", "puerta a puerta"
  ];

  static List<String> servico = [
    "FCL","LCL","Bulk - BreakBulk","BULK - RoRo"
  ];

  static List<String> contendedor  = [
    "20 DC",
    "40 DC",
    "20 REF",
    "20 REF",
    "40 HC",
    "20 OT",
    "40 OT",
    "20 FR",
    "40 FR",
    "20 GC",
    "40 GC",
    "45 HC"
  ];

  static List<String> units = ["Cm","Mts.","Pulgadas","Pies"];

}