# terraform

1 - Ecrivez un module pour créer une instance EC2 utilisant la dernière version de 
    ubuntu bionic
    → Elle s’atachera à l’e et à l’IP publique qui seront créé 
    → sa taille et son tag seront variabilisés
    
j'ai créer un module EC2 avec un fichier main.tf, un output.tf et un fichier variable.tf

![image](https://user-images.githubusercontent.com/77395886/217512345-57318ffe-57e5-4086-a961-96c17db7846b.png)

le fichier main.tf contient la configuration de l'instance EC2.
le fichier variable contient le différente variable utilisé dans l'instance notament la clé ssh ou le type de l'instance
le fichier output renvoi l'id de l'instance ainsi que la zone 



2 - Ecrivez un module pour créer un volume EBS dont la taille sera variabilisée
	PS: Dans Amazone, un EBS est un disque dur qu'on rattache à une VM. 
Meme raisonement que pour le module EC2 avec l'EBS

![image](https://user-images.githubusercontent.com/77395886/217513396-7b0d646e-1e73-4a13-b4fd-d43dac124ff7.png)

le fichier main.tf contient la configuration d'un volume EBS.
le fichier variable contient le différente variable utilisé dans l'ebs notament les tags ou la taille du disque 
le fichier output renvoi l'id du volume de l'ebs


3 - Ecrivez un module pour créer une IP publique 
        → Elle s’attachera au security group

![image](https://user-images.githubusercontent.com/77395886/217514368-a53ea3d1-dcca-41d9-b2be-931b4b3846ff.png)

le fichier main.tf contient la configuration du EIP.
le fichier variable contient est vide 
le fichier output renvoi l'id de l'eip et son id



4 - Ecrivez un module pour créer un security group qui ouvrira les ports 80 et 443

![image](https://user-images.githubusercontent.com/77395886/217514936-118d3032-3869-4ac3-bb9f-e61bc1d60909.png)

le fichier main.tf contient la configuration du security group
le fichier variable contient uniquement les tags du security group 
le fichier output renvoi le nom


5 - Créez un dossier app qui va utiliser les 4 modules pour déployer une ec2
        → vous allez surcharger les variables afin de rendre votre application 
          plus dynamique

6 - A la fin du déploiement, mettez en place le site web statitque suivant: 
	https://github.com/diranetafen/static-website-example
	Aussi, enregistrez l’ip publique de votre serveur dans un fichier nommé ip_ec2.txt 
        → ces  éléments sont à intégrer dans le module EC2

![image](https://user-images.githubusercontent.com/77395886/217515378-18aafcbd-a99c-48e9-a24f-904eb337edda.png)

lorsque l'on effectue les commandes
'terraform init' 

'terraform apply' 

on obtien le fichier IP_ec.txt dans lequel se trouve l'url du site créer par le projet dont voici une capture d'écran ci-dessous

![image](https://user-images.githubusercontent.com/77395886/217515899-70673bd5-12c1-4184-aca0-c883bb30e883.png)





