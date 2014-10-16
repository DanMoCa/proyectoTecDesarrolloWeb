class Alumno
  attr_accessor :nombre, :facultad, :carrera
  attr_reader :matricula
  
  @@carrera_default = 'IS'
  FACULTAD_DEFAULT = 'FING'
  
  def initialize(matricula, nombre = 'Furgol')
    @matricula = matricula
    @nombre = nombre
    self.facultad = 'FING'
    @carrera = 'IS'
    @@carrera_default = 'IC'
    puts FACULTAD_DEFAULT
    puts "Creando un nuevo objeto: #{matricula} #{nombre}"    
  end
end


alumno = Alumno.new(123, 'Kargath')
puts alumno.matricula
puts alumno.nombre
alumno.nombre='Juan'
puts alumno.nombre
puts alumno.facultad
puts alumno.carrera