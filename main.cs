using System;

class Nodo{
  public int dato;
  public Nodo siguiente;

  public Nodo(int dato){
    this.dato = dato;
    this.siguiente = null;
  }
  public int getDato(){
    return this.dato;
  }
  public Nodo getSiguiente(){
    return this.siguiente;
  }
}

class Program {

  Nodo primero;
  Nodo ultimo;

  public Program(){
    this.primero = null;
    this.ultimo = null;
  }

  public void insertar(int dato){
    Nodo nuevo = new Nodo(dato);
    if(this.primero == null){
      this.primero = nuevo;
      this.ultimo = nuevo;
    }else{
      nuevo = this.ultimo.getSiguiente();
      nuevo = this.ultimo;
    }
  }

  public void mostrar(){
    Nodo temp;
    temp = this.primero;
    while(temp != null){
      Console.WriteLine(temp.getDato());
      temp = temp.getSiguiente();
    }
    //Console.WriteLine(contador);
  }

  public static void Main (string[] args) {
    Program programa = new Program();
    programa.insertar(2);
    programa.insertar(3);
    programa.insertar(3);
    programa.mostrar();
    
  }
}