# Pokémon Info Script

Este script de Bash consulta la PokeApi para obtener información sobre un Pokémon específico. Proporciona datos como el nombre, número de Pokédex, peso, altura y orden.

## Requisitos

- Bash (probado en versión X.X.X)
- cURL (para realizar solicitudes a la PokeApi)
- jq (para parsear y extraer datos del resultado JSON)

## Uso

Para obtener información sobre un Pokémon, ejecuta el script proporcionando el nombre del Pokémon como argumento:

```bash
./bashScripting.sh charmander
```

## Parámetros

- `pokemon`: El nombre del Pokémon del cual se desea obtener información.

## Ejemplo

```bash
./bashScripting.sh pikachu
```

Resultado:

```
PIKACHU (No. 25)
Id = 35
Weight = 60
Height = 4
```

## Notas

- Asegúrate de tener cURL y jq instalados antes de ejecutar el script.
- Si no se proporciona ningún argumento, el script mostrará un mensaje de error y se cerrará con un código de salida 1.

---
