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
id -gn                                     # Retrieve and display only the name of the current active group
echo "Nuevo grupo activo: $(id -gn)"       # Print a message showing the newly activated group name
touch ~/dentro_de_newgrp.txt      # Create a new file while active under the new group to test inheritance
ls -la ~/dentro_de_newgrp.txt     # Display the file's details to verify it belongs to the "desarrolladores" group
mkdir -p ~/proyecto_dev/src       # Create the project directory structure recursively, including parent directories
ls -la ~/                         # List all files and directories in the home folder with their ownership details
echo "Grupo restaurado: $(id -gn)"  # Print a message showing the restored primary group name
git add ~/dentro_de_newgrp.txt ~/antes_de_newgrp.txt  # Add the new files to the staging area / Añade los nuevos archivos a la zona de preparación
git commit -m "Add script testing file group inheritance"  # Commit the changes with a message / Registra el commit con un mensaje descriptivo
