all: solitaire_defs.cmo solitaire.cmo main.cmo 
	ocamlc -o solitaire.exe solitaire_defs.cmo solitaire.cmo main.cmo
    
    
solitaire_defs.cmo:
	ocamlc -c solitaire_defs.ml
solitaire.cmo:  solitaire.ml
	ocamlc -c solitaire.ml

main.cmo:  main.ml solitaire.cmo
	ocamlc -c main.ml
    
clean:
	rm -f solitaire.cm* main.cm* solitaire.exe solitaire_defs.cm*

test: solitaire.cmo
	rlwrap ocaml -noinit solitaire_defs.cmo solitaire.cmo -open Solitaire_defs -open Solitaire


