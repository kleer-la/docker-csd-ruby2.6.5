# Elephant Carpaccio
## Definición
Construir una aplicación de línea de comando que permita calcular los datos de facturación incluyendo impuestos y descuentos.
## Enumeradores
* **Impuestos**
| Estado | Tasa  |
|--------|-------|
| UT     | 6.85% |
| NV     | 8.00% |
| TX     | 6.25% |
| AL     | 4.00% |
| CA     | 8.25% |
* **Descuentos**
| Más de  | %   |
|---------|-----|
| $0      | 0%  |
| $1,000  | 3%  |
| $5,000  | 5%  |
| $7,000  | 7%  |
| $10,000 | 10% |
| $50,000 | 15% |
## Flujo de operación
### Entradas
1. Cantidad: integer (Unidades)
2. Precio Unitario: float ($/Unidades)
3. Estado: Symbol
### Procesos
1. Calcular el precio total de un producto
2. Aplicar el descuento al precio bruto (Si aplica)
3. Calcular el impuesto del precio neto (Con descuento), de acuerdo al estado
## Salidas
1. Precio neto de un producto: float($)
## Ejemplo
### Entradas
1. 5 unidades  -> Cantidad
2. 10 $/Unidad -> Precio Unitario
3. AL          -> Estado 
### Procesos
1. 5 u * 10 $/u = $50  -> Precio total
2. $50 (1-0) = $50 -> Precio bruto
3. $50 (1.04) = $52 -> Precio neto
### Salidas 
1. Total = $52
## Criterios de aceptación
[] Poder facturar al menos CA
[] Entregar historial de incrementos del producto
[] Entregar solución en un repositorio