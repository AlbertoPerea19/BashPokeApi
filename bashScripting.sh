#! /bin/bash

if [ $# -eq 0 ]
then
 echo "Error: Debe ingresar el nombre de un pokemon como parametro"
 exit 1
fi

pokemon=$1
api_url="https://pokeapi.co/api/v2/pokemon/$pokemon"
pokeApi_data=$(curl -s "$api_url" | jq '.')

id=$(jq -r '.id' <<< "$pokeApi_data")
name=$(jq -r '.name' <<< "$pokeApi_data")
weight=$(jq -r '.weight' <<< "$pokeApi_data")
height=$(jq -r '.height' <<< "$pokeApi_data")
order=$(jq -r '.order' <<< "$pokeApi_data")

echo "${name} (No. ${id})"
echo "Id = ${order}"
echo "Weight = ${weight}"
echo "Height = ${height}"
