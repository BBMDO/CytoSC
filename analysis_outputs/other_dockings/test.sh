#!/bin/bash

# Diretório de origem (onde estão as pastas que deseja verificar)
source_dir="/home/danilo/Ciro/Seqs/Docking"

# Diretório de destino (para onde você quer copiar as pastas)
destination_dir="/home/danilo/Ciro/Seqs/Docking/pronto"

# Verifica se o diretório de destino existe, senão cria
mkdir -p "$destination_dir"

# Itera sobre os diretórios no diretório de origem
for dir in "$source_dir"/*; do
  if [ -d "$dir" ]; then
    # Conta o número de arquivos no diretório
    file_count=$(find "$dir" -type f | wc -l)
    
    # Verifica se o número de arquivos é 13
    if [ "$file_count" -eq 13 ]; then
      # Copia o diretório para o diretório de destino
      cp -r "$dir" "$destination_dir"
    fi
  fi
done

echo "Cópia concluída."
