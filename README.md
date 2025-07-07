# pmap

**pmap** est un outil en ligne de commande Windows puissant, polyvalent et léger développé en Python, permettant d’exécuter plusieurs commandes système utiles, allant de la récupération d’informations système à la gestion du nettoyage et la récupération de tokens Discord (uniquement à des fins légitimes et éthiques).

---

## Fonctionnalités principales

- **Récupération de la localisation géographique approximative** (via IP publique)
- **Récupération du HWID** (identifiant matériel unique sous Windows)
- **Nettoyage système** : purge du cache DNS, dossier TEMP, corbeille Windows
- **Lancement de Chrome en mode navigation privée** (Windows uniquement)
- **Affichage des informations système détaillées** (CPU, RAM, disque, uptime, IP locale)
- **Extraction et déchiffrement des tokens Discord** (Windows uniquement, à utiliser de manière responsable)
- **Affichage de la version Python utilisée**

---

## Installation

Le projet est fourni avec un script d’installation batch (`install.bat`) qui automatise les étapes suivantes :

1. Création d’un dossier d’installation dans `%APPDATA%\p-map`
2. Copie du fichier exécutable `p.exe` dans ce dossier
3. Création d’un script batch wrapper (`p.bat`) pointant vers l’exécutable
4. Ajout du dossier dans la variable d’environnement `PATH` de l’utilisateur pour un accès facile depuis n’importe quel terminal

---

## Utilisation

Ouvrez un nouveau terminal (`cmd` ou PowerShell) et tapez :

```bash
p help
pour afficher la liste des commandes disponibles.
```

### Commandes principales 
| Commande    | Description                                             |
| ----------- | ------------------------------------------------------- |
| `help`      | Affiche ce message d’aide                               |
| `location`  | Affiche la localisation approximative (via IP)          |
| `hwid`      | Affiche le HWID de la machine (Windows uniquement)      |
| `clean`     | Nettoie cache DNS, dossier TEMP et corbeille (Windows)  |
| `stealth`   | Lance Google Chrome en mode navigation privée (Windows) |
| `sysinfo`   | Affiche les informations système basiques               |
| `discord`   | Récupère et déchiffre les tokens Discord (Windows)      |
| `pyversion` | Affiche la version de Python installée                  |


### Notes importantes
- Certaines commandes sont spécifiques à Windows (ex : hwid, clean, stealth, discord).

- La récupération des tokens Discord doit être utilisée uniquement à des fins légales et éthiques (ex : audit personnel).

- L’outil ne nécessite pas de droits administrateur pour fonctionner, sauf pour certaines commandes avancées.

### Contribution
Les contributions sont bienvenues !
N’hésitez pas à ouvrir une issue ou proposer une pull request pour ajouter des fonctionnalités ou améliorer le code.

### Licence
Ce projet est sous licence MIT. Voir le fichier LICENSE pour plus d’informations.

### Contact 
Pour toute question, contactez-moi via Discord : **benewww**
