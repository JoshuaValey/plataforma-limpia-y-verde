class Singleton {
  // Instancia única de la clase
  static final Singleton _instance = Singleton._internal();

  // Constructor privado
  Singleton._internal();

  // Método estático para acceder a la instancia
  static Singleton get instance => _instance;

  // Métodos y propiedades de la clase
  //------------------------------------------------------------------
  void someMethod() {
    print('Método del singleton');
  }























}