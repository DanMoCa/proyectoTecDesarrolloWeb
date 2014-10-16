require 'sinatra' 

get '/' do 
  "Hola mundo" 
end 

get '/saludar/:nombre' do 
  "Hola #{params[:nombre]}" 
end 

get "/saludar" do
  forma = <<-eos
  <form name="saludo" action="/saludar" method="post"> 
  Nombre: <input type="text" name="nombre"> 
  <input type="submit" value="Guardar">
  </form> 
eos
end

get "/suma" do
  forma = <<-num
  <form name="suma" action="/suma" method="post"> 
  Numero 1: <input type="text" name="num1"> 
  Numero 2: <input type="text" name="num2"> 
  <input type="submit" value="Guardar">
  </form> 
num
  return forma
end

post '/suma' do
  num = params[:num1].to_i + params[:num2].to_i "La suma es #{num}"
end 

post '/saludar' do 
  "Hola #{params['nombre']}" 
end