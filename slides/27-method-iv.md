##  method IV

```
obj2 = Object.new
def obj2.quack
  puts "QUACK"
end

mm.bind(obj2).()
#> QUACK
```