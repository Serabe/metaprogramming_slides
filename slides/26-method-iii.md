##  method III

```
obj = Object.new
def obj.quack
  puts "HOLA"
end

mm.bind(obj).() # What is this?
#> HOLA
```
