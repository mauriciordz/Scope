## Lunes 13 de Junio del 2016
## Domingo y Mauricio

## Local Variables within the Global Scope
# local_var= "this is my local var"

# def return_my_local_var
#   local_var
# end

# puts return_my_local_var

## Son dos variables con el mismo nombre y por lo tanto cuando imprimes el metodo con la 
##variable local_var no regresa nada porque no tiene guardado nada.. 


## Local Variables within a Class

$global_var = "This is a global variable"
CONSTANT = 3.1416 

  def global_var=(string)
    $global_var = sting
  end

  def global_var
    $global_var
  end

  def CONSTANT
    CONSTANT
  end


class DummyClass
  @@class_variable= "This is a class variable"

  def class_variable=(string)
    @@class_variable=string
  end

  def class_variable
    @@class_variable
  end

  def instance_var=(string) 
    @instance_var = string
  end
 
  def instance_var
    @instance_var
  end

## Glo

  def global_var=(string)
    $global_var = string
  end

  def global_var
    $global_var
  end

  def CONSTANT
    CONSTANT
  end


end

# ejemplo = DummyClass.new
# p ejemplo.instance_var = ("this is my local var")

# ## Las variables de instacias sirven para ser utilizadas dentro de las clases y se declaran con 
# ## una @ antes del nombre

# ## Pruebas
# ejemplo2 = DummyClass.new
# ejemplo3 = DummyClass.new

# p ejemplo2.instance_var = ("Bar")
# p ejemplo3.instance_var   =    "Baz"


dummy_1 = DummyClass.new
dummy_2 = DummyClass.new

p dummy_2 == dummy_1
p dummy_1
p dummy_2

p dummy_1.class_variable = "New value for the class variable"
p dummy_1.class_variable 
p dummy_2.class_variable

p dummy_1.class_variable == dummy_2.class_variable ## si son iguales


dummy_3 = DummyClass.new
p dummy_3.CONSTANT
p dummy_3.CONSTANT == 3.1416 ## Las CONSTANTES no se pueden cambiar


dummy_4 = DummyClass.new
p dummy_4.global_var  
p dummy_4.global_var = "Aqui si podemos asignar una nueva varialbe jajajejejijijojojuju "

