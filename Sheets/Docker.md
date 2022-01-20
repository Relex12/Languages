# Docker CLI

* `docker run IMAGE` : télécharge si besoin et lance la dernière version du container
* `docker pull IMAGE` : télécharge uniquement
* `docker ps` : liste les containers en fonctionnement
* `docker ps -a` : inclu les containers terminés
* `docker stop IMAGE` : termine le container
* `docker rm IMAGE` : supprime le container
* `docker images` : liste les images téléchargées
* `docker rmi IMAGE` : supprime l'image
* `docker run IMAGE INSTRUCTION` : lance le contenaire et exécute l'instruction
* `docker run -d IMAGE` : lance en tâche de fond
* `docker run -p HOSTPORT:CONTAINERPORT IMAGE` : mappe le port du contenainer
* `docker run -P IMAGE` : mappe tous les ports
* `docker run -v HOSTDIR:TARGETDIR IMAGE` : mappe un dossier du container
* `docker run -it IMAGE` : prend en compte la STDIN
* `docker logs IMAGE` : affiche les logs du container
* `docker run IMAGE:TAG` : lance la version correspondante au tag
* `docker build PATH` : construit l'image à partir du Dockerfile
* `docker build PATH -t TAG` : ajoute le tag à l'image (TAG = USER/IMAGE)
* `docker login` : connecte à Docker Hub
* `docker push TAG` : publie l'image sur Docker Hub
* `docker inspect IMAGE` : ouvre la configuration JSON
* `docker run -e VAR=VALUE` : assigner une variable d'environnement du container
* `docker run --name=NAME IMAGE` : nomme le container
* `docker run --link LINKIMAGE:NAME IMAGE` : crée un lien entre les deux images
* `docker-compose up` : lance une pile selon le fichier `docker-compose.yaml``
* `docker -H ENGINE_IP:PORT` : utilise un moteur Docker distant
* `docker run --cpus=PERCENT IMAGE` : limite le container à un pourcentage du CPU total (valeur entre 0 et 1)
* `docker swarm init` : intialise un manager Docker swarm
* `docker swarm join` : rejoint un cluster Docker swarm
* `docker swarm leave` : quitte le cluster

# Dockerfile

* `FROM IMAGE` : image inférieure
* `RUN INSTRUCTION` : exécute l'instruction (installation dépendances)
* `COPY SOURCE DEST` : copie le dossier vers le container (code source)
* `ENTRYPOINT INSTRUCTION` :  instruction de démarrage (instruction de `docker run` ajouté comme argument après l'instruction)
* `CMD INSTRUCTION` : instruction de démarrage (instruction de `docker run` remplace l'instruction)

# docker-compose.yaml

```yaml
version: DOCKER_COMPOSE_VERSION			# version>=2
services:								# version>=2
	NAME1:
		image: IMAGE1
		networks:						# version>=2
			- NETWORK1
	NAME2:
		build: PATH
		depends_on: NAME1				# version>=2
		networks:						# version>=2
			- NETWORK2
	NAME3:
		image: IMAGE3
		ports:
			- HOSTPORT:CONTAINERPORT
	    links:							# version==2
	    	- NAME1
	    	- NAME2
		networks:						# version>=2
			- NETWORK1
			- NETWORK2
networks:								# version>=2
	NETWORK1:
   	NETWORK2:
```

# kubectl

* `kubectl run POD --image IMAGE` : lance un pod contenant un container correspondant à l'image
* `kubectl get pods` : liste les pods existants
* `kubectl describe POD` : donne des informations sur le pod
* `kubectl create -f FILE` : crée l'objet décrit dans le fichier

```yaml
apiVersion: v1
kind: Pod |
metadata:
	name:
	labels:
		app:
		type:
spec:
	containers:
	  - name:
		image:
```
