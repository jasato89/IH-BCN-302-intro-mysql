# Normalización de bases de datos

## ¿Qué es la normalización?

Es una técnica de diseño de base de datos que organiza las tablas de una manera que reduce la redundancia y la dependencia de los datos.

Divide las tablas más grandes en tablas más pequeñas y las vincula usando relaciones.

Realizamos tres normalizaciones para asegurar que se evita la redunancia y dependencia:

![img](https://guru99.es/wp-content/uploads/2018/04/a4_2.png)

## **Reglas 1NF (First Normal Form)**

- Cada celda de tabla debe contener un solo valor.
- Cada registro debe ser único.





## ¿Qué es una CLAVE?

A KEY es un valor que se usa para identificar un registro en una tabla de manera única. Una LLAVE podría ser una sola columna o combinación de múltiples columnas

Nota: Las columnas en una tabla que NO se utilizan para identificar un registro de manera única se denominan columnas sin clave.

Tiene los siguientes atributos

- Una clave principal no puede ser NULL
- Un valor de clave principal debe ser único
- Los valores de clave primaria no se pueden cambiar
- La clave primaria debe tener un valor cuando se inserta un nuevo registro.

## Reglas 2NF (Segunda Forma Normal)

- Regla 1- Estar en 1NF
- Regla 2- Clave principal de una sola columna

Está claro que no podemos avanzar para hacer que nuestra base de datos simple esté en el 2 °formulario de normalización a menos que particionemos la tabla anterior.

![a4_6](https://guru99.es/wp-content/uploads/2018/04/a4_6.png)

![a4_7](https://guru99.es/wp-content/uploads/2018/04/a4_7.png)



## ¿Qué son las dependencias funcionales transitorias?

Una dependencia funcional transitiva es cuando el cambio de una columna que no es clave puede hacer que cambie cualquier otra columna que no sea clave

Considere la tabla 1. Cambiar la columna que no es clave El nombre completo puede cambiar el saludo.

## Base de datos – Clave externa

En la Tabla 2, Membership_ID es la clave externa

![img](https://guru99.es/wp-content/uploads/2018/04/a4_8.png)



Foreign Key hace referencia a la clave principal de otra Table! Te ayuda a conectar tus tablas

- Una clave externa puede tener un nombre diferente de su clave principal
- Asegura que las filas en una tabla tengan filas correspondientes en otra
- A diferencia de la clave principal, no tienen que ser únicos. La mayoría de las veces no son
- Las claves externas pueden ser nulas aunque las claves primarias no puedan

## Reglas 3NF (tercera forma normal)

- Regla 1- Estar en 2NF
- Regla 2- No tiene dependencias funcionales transitorias

Para mover nuestra tabla 2NF a 3NF, nuevamente debemos dividir nuestra tabla nuevamente.

![a4_15](https://guru99.es/wp-content/uploads/2018/04/a4_15.png)