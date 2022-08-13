#Ejercicio 6
Historial2=(23500,5960,2300,10200,8900)
def fcont(tupla):
    cont=0
    for i in tupla:
        if i>5000:
            cont+=1
    return cont
print(fcont(Historial2))

#Ejercicio 7
Historial3=(9530,4120,4580,1500,890,7516,426)
Prom=0
Suma=0
cont=0
for i in Historial3:
    cont+=1
    Suma+=i
Prom=Suma/cont
if Prom>4500:
    print("Se ha excedido del gasto promedio para su mascota")
else:
    print("Promedio en presupuesto")