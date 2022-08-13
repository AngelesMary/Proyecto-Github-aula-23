# **Insert**

Para agregar datos a las tablas se utiliza la instrucción Insert into, este comando es uno de los más usados en los diferentes gestores de Base de Datos. Para insertar los registros se puede hacer de uno en uno, o agregar varios registros a través de una misma instrucción insert into.
La sintaxis para usar la instrucción insert into en una tabla de MySQL es la siguiente:

    INSERT INTO "NombreTabla" ("PrimeraColumna",etc)
    VALUES ("Dato1","Dato2",etc)

# **Actualizar datos en una tabla en MySQL (UPDATE)**

##La Sentencia UPDATE nos permite:
 - Modificar los valores existentes en una tabla.
 - Actualizar más de una fila cada vez (si es necesario).

    UPDATE table
    SET column = value [, column = value, ...]
    [WHERE condition]

##Si se especifica la cláusula WHERE, se modifican los valores de una fila o varias filas específicas:

    UPDATE empleyees
    SET departament_id = 50
    WHERE employee id = 113;

Especificar SET column_name= NULL para actualizar un valor de columna a NULL.

# **Borrado de filas en una tabla en MySQL.**

##La sentencia DELETE:
Puede eliminar filas existentes de una tabla.

    DELETE [FROM] table
    [WHERE        condition];

Se suprimen filas concretas si se especifica la cláusula:
    DELETE FROM departments
    WHERE department_name = 'Finance';

Se suprimen todas las filas de la tabla si omite la cláusula WHERE

    DELETE FROM copy_emp;




