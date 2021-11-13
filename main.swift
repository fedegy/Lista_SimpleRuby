class Nodo{
  let dato:String

  init(dato:String){
    self.dato = dato
    self.siguiente = nil
  }
}

class ListaSimple{
  
  let primero:nil
  let ultimo:nil

  init(){
    self.primero = nil
    self.ultimo = nil
  }
  
  func insertar(dato:String){
    let nuevo = Nodo(dato)
    if(nuevo == nil){
      self.primero = self.ultimo = nuevo
    }else{
      self.ultimo.siguiente = nuevo
      self.ultimo = nuevo
    }
  }
}

let prin = ListaSimple()
prin.insertar("1")
