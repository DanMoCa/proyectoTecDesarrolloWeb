class HelloController < ApplicationController
  
  def saludar
    @nombre = "Mundo"
  end
  
  def saludar_nombre
    @nombre = params[:nombre]
    render 'saludar'
  end
  
  def saludar_forma
  end
  
  def procesar_forma
    @nombre = params[:nombre]
    render 'saludar'
  end
  
  def sum
  end
  
  def sum_forma
    @num = params[:num1].to_i + params[:num2].to_i 
    render 'sum_forma'
  end
end