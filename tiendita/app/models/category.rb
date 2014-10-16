class Category < ActiveRecord::Base
  has_many :productos
  validates :name, presence: true
  before_validation do
    puts "Antes de la validación"
  end
  after_validation do
    puts "Despues de la validación"
  end
  before_save do
    puts "Antes de guardar"
  end
  after_save do
    puts "Despues de guardar"
  end
  after_initialize do
    if self.description.nil?
      self.description = 'No hay una descripcion disponible'
    end
  end
end