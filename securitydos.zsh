id #see the main group
id -gn                           # Muestra únicamente el nombre del grupo primario del usuario actual
ls -la                           # Lista el contenido detallado para ver el grupo de cada archivo y carpeta
touch ~/test_grupo_heredado.txt  # Crea un archivo vacío para verificar qué grupo hereda de forma automática
ls -la ~/test_grupo_heredado.txt # Inspecciona las propiedades del archivo creado para comprobar su grupo
echo "Grupo actual: $(id -gn)"   # Imprime en la terminal un mensaje indicando el grupo activo de la sesión
touch ~/antes_de_newgrp.txt      # Genera un archivo antes de efectuar el cambio con el comando newgrp
ls -ls ~/antes_de_newgrp.txt     # Muestra los bloques de disco y detalles del archivo previo al cambio de grupo
apt-get update && apt-get install -y util-linux-extra login passwd  # Update package repositories and install required group/login utilities
newgrp desarrolladores                                              # Switch the current shell session's primary group to "desarrolladores"
groupadd desarrolladores                                            # Create a new user group named "desarrolladores" in the system
cat /etc/group                                                      # Display the list of all existing user groups on the system