(* Hola mundo en OCaml *)
print_endline "¡Hola mundo!"

(* Función simple *)
let suma x y = x + y

(* Lista y función map *)
let numeros = [1; 2; 3; 4; 5]
let duplicados = List.map (fun x -> x * 2) numeros