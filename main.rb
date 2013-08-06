class Anfitrion
  # Creamos el objeto
  def initialize(nombre = "Mundo")
    @nombres = nombre
    #@nombres = ["Pepe", "Juan", "Matias"]
  end

  # Saludamos
  def saludar
    if @nombres.nil?
      puts "..."
    elsif @nombres.respond_to?("each") && @nombres.respond_to?("join")
    	# Primer tipo de saludo
      @nombres.each do |nombre|
        puts "Hola #{nombre}!!"
      end
      # Segundo tipo de saludo
      puts "Hola #{@nombres.join(", ")}"
    else
      puts "Hola #{@nombres}!"
    end
  end
end

anfitrion = Anfitrion.new("nicolas")
anfitrion.saludar

#puts Anfitrion.instance_methods