
class Person
    attr_reader :first_name, :last_name, :age
  
    def initialize(first, last, age)
      @first_name = first
      @last_name = last
      @age = age
    end
  
    def birthday
      @age += 1
    end
  
    def talk
      raise NotImplementedError, 'Este método debe ser implementado en subclases'
    end
  
    def introduce
      raise NotImplementedError, 'Este método debe ser implementado en subclases'
    end
  end
  
  # Subclase Student
  class Student < Person
    def talk
      puts "Aquí es la clase de programación con Ruby?"
    end
  
    def introduce
      puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
    end
  end
  
  # Subclase Teacher
  class Teacher < Person
    def talk
      puts "Bienvenidos a la clase de programación con Ruby!"
    end
  
    def introduce
      puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
    end
  end
  
  # Subclase Parent
  class Parent < Person
    def talk
      puts "Aquí es la reunión de apoderados?"
    end
  
    def introduce
      puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
    end
  end
  
  # Creación de instancias de cada subclase
  student = Student.new("Trent", "Reznor", 19)
  teacher = Teacher.new("Alice", "Cooper", 40)
  parent = Parent.new("David", "Bowie", 50)
  
  # Ejecución de métodos en cada instancia
  student.introduce
  student.talk
  
  teacher.introduce
  teacher.talk
  
  parent.introduce
  parent.talk
  