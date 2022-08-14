# Ejercico n°1

Dueno= [ 28957346,Juan,Perez,4789689,Belgrano 101 ]
if Dueno[0]>26000000:
    print("El telefono del dueño es:",Dueno[3])


# Ejercicio n°2

Dueno2=[ 23546987,  “Maria”,  “Perez”, 4789689,  “Pueyrredon  811” ]
for i in Dueno2:
    if i!=Dueno2[0] and i!=Dueno[2]:
        print(i)

# Ejercicio n°3

Perro=[ 13, "Puppy", "11-12-2012", "Macho", 123 ]
Perro[2]="13-12-2012"
Perro[4]=28957346
print (Perro)


# Ejercicio n°5

Historial=(2350,5960,23000,1000,8900)
Total=0
for i in Historial:
    Total+=i
if Total<30000:
    print("El total es:", Total) 
else:
    print("Gastos por encima del presupuesto")       

