//Trabajo Poo, Vehiculos en dart para Desarrollo en flutter.
//Nombre: Rodrigo Alejandro Bravo Piña
//Rut: 19474644-k

import 'dart:collection';

/////////////////////
//Interfaces  //////
////////////////////

abstract class Leyes {
  void DefinicionVehiculo();
  void EdadMinima();
}

abstract class Licencia {
  void TipoDeLicencia();
  void ValorDeLicencia();
  void Requerida();
}

///////////////////////////
//Clases Abstractas //////
//////////////////////////

abstract class Vehiculo implements Leyes {
  //Atributos
  String _nombre;
  String _color;
  double _precio; //dolares
  int _capacidadTransporte;

  //constructor abstracto
  Vehiculo(String nombre, String color, double precio, int capacidadTransporte);

  //Getters

  String get Nombre => _nombre;
  String get Color => _color;
  double get Precio => _precio;
  int get CapacidadTransp => _capacidadTransporte;

  //Setters
  set Nombre(String nombre) => this._nombre = nombre;
  set Color(String color) => this._color = color;
  set Precio(double precio) => this._precio = precio;
  set CapacidadTransp(int capacidad) => this._capacidadTransporte = capacidad;

  @override
  void DefinicionVehiculo() {
    print(
        "Aquel medio de desplazamiento terrestre, con propulsión propia, que se encuentra por su naturaleza destinado\n al transporte o traslado de personas o cosas y sujeto a la obligación\n de obtener permiso de circulación para transitar. Los remolques, acoplados, casa rodante, u otros similares, que carezcan de propulsión pero que circulen por vías públicas,\n también se considerarán como vehículos motorizados, debiendo contar con el seguro obligatorio de igual forma que el vehículo que los impele.\n ");
  }
}

abstract class TraccionaMotor extends Vehiculo {
  TraccionaMotor(
      String nombre, String color, double precio, int capacidadTransporte)
      : super(nombre, color, precio, capacidadTransporte);
}

abstract class TraccionaHumana extends Vehiculo {
  TraccionaHumana(
      String nombre, String color, double precio, int capacidadTransporte)
      : super(nombre, color, precio, capacidadTransporte);
}

////////////////////////////////////////////
//Clases  (eslavon mas bajo)          //////
///////////////////////////////////////////

class Auto extends TraccionaMotor implements Licencia {
  Auto(String nombre, String color, double precio, int capacidadTransporte)
      : super(nombre, color, precio, capacidadTransporte) {
    this._nombre = nombre;
    this._color = color;
    this._precio = precio;
    this._capacidadTransporte = capacidadTransporte;
  }

  @override
  void DefinicionVehiculo() {
    print(
        "Vehículo automóvil de cuatro ruedas para circular por tierra, que se dirige mediante un volante, está destinado al transporte de personas y tiene capacidad para un máximo de nueve plazas.\n");
  }

  @override
  void ValorDeLicencia() {
    print("Costo que va entre los 20.000 y los 40.000 clp");
  }

  @override
  void TipoDeLicencia() {
    print("Clase B");
  }

  @override
  void Requerida() {
    print("Si.");
  }

  @override
  void EdadMinima() {
    print("18 años");
  }
}

class Moto extends TraccionaMotor implements Licencia {
  Moto(String nombre, String color, double precio, int capacidadTransporte)
      : super(nombre, color, precio, capacidadTransporte) {
    this._nombre = nombre;
    this._color = color;
    this._precio = precio;
    this._capacidadTransporte = capacidadTransporte;
  }

  @override
  void DefinicionVehiculo() {
    print(
        "Vehículo automóvil de dos ruedas, con uno o dos sillines y, a veces, con sidecar.\n");
  }

  @override
  void ValorDeLicencia() {
    print("Costo que va entre los 20.000 y los 40.000 clp");
  }

  @override
  void TipoDeLicencia() {
    print("clase C");
  }

  @override
  void Requerida() {
    print("Si.");
  }

  @override
  void EdadMinima() {
    print("18 años");
  }
}

class Bicicleta extends TraccionaHumana implements Licencia {
  String _pedales;

  Bicicleta(String nombre, String color, double precio, int capacidadTransporte,
      String pedales)
      : super(nombre, color, precio, capacidadTransporte) {
    this._nombre = nombre;
    this._color = color;
    this._precio = precio;
    this._capacidadTransporte = capacidadTransporte;
    this._pedales = pedales;
  }

  //Setters
  set MaterialPedales(String pedales) => this._pedales = pedales;

  //Getters
  String get MaterialPedales => _pedales;

  @override
  void DefinicionVehiculo() {
    print(
        "Ciclo de dos ruedas cuyos pedales transmiten el movimiento a la rueda trasera, generalmente por medio de un plato, un piñón y una cadena.\n");
  }

  @override
  void ValorDeLicencia() {
    print("No tiene");
  }

  @override
  void TipoDeLicencia() {
    print("No tiene");
  }

  @override
  void Requerida() {
    print("Si.");
  }

  @override
  void EdadMinima() {
    print("Indefinido por la ley chilena.")
  }
}

void main() {
  //Ejemplo con auto

  Auto mazdav2 = new Auto("Mazda Version 4", "Rojo", 13.000, 2);
  print("Es el nombre del auto ${mazdav2.Nombre}");
  mazdav2.DefinicionVehiculo();

  //Ejemplo con motocicleta o moto

  Moto bmw = new Moto("Bmw 2005", "Amarillo", 10000, 2);
  print("Es el nombre de la moto ${bmw.Nombre}");
  bmw.DefinicionVehiculo();

  //Ejemplo con Bicicleta
  Bicicleta oxford_mont =
      new Bicicleta("Oxford montaña 003", "Azul", 1700, 1, "Pedales de metal");
  print("Es el nombre la Bicicleta ${oxford_mont.MaterialPedales}");

  oxford_mont.DefinicionVehiculo();

  oxford_mont.MaterialPedales = "Pedales de aleacion aluminio";
  print("Es el nombre Bicicleta cambiado: ${oxford_mont.MaterialPedales}");
}
