class Nodo
  def initialize(dato, siguiente)
    @dato = dato
    @siguiente = siguiente
  end

  def getDato
    return @dato
  end

  def getSiguiente
    return @siguiente
  end
end

class ListaSimple
  def initialize()
    @primero = @ultimo = nil
  end
  def insertar(dato)
    nuevo = Nodo.new(dato, nil)
    if @primero == nil
      @primero = @ultimo = nuevo
    else
      @ultimo.getSiguiente = nuevo
      @ultimo = nuevo
    end
  end
  
  def mostrar
    temp = @primero
    while temp != nil
      puts temp.getDato + " -> "
      temp = temp.getSiguiente
    end
  end
end

c = ListaSimple.new()
c.insertar("1")
c.insertar("2")
c.insertar("3")
c.mostrar
