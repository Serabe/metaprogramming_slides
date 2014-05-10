class Class
  def include_method mod, name, new_name=name
    m = mod.instance_method name.to_sym
    define_method new_name.to_sym do |*args|
      m.bind(self).call(*args)
    end
  end
end

module M
  def hola
    puts hola
  end
end

class A
  include_method M, :hola, :adios
  def hola; "Adios"; end
end

puts A.new.adios # "Adios"

module M
  def hola
    puts "It's a me! Mario!"
  end
end

puts A.new.adios # "Adios"