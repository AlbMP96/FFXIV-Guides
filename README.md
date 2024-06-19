# FFXIV Guides

Web aimed to the creation of guides on the FFXIV game.

## Technologies used
- [Laravel](https://laravel.com/)
- [VueJS](https://vuejs.org/)
- [InertiaJS](https://inertiajs.com/)
- [Tailwind](https://tailwindcss.com/)
- [MySQL](https://www.mysql.com/)
- [Docker](https://www.docker.com/)

## Local installation

- If you want to run the project on a docker container the installation of all Composer dependecies are needed through this command:
```
docker run --rm \
    -u "$(id -u):$(id -g)" \
    -v "$(pwd):/var/www/html" \
    -w /var/www/html \
    laravelsail/php83-composer:latest \
    composer install --ignore-platform-reqs
```
- After that configure the enviromental variables (MySQL , App URL...).
- Run the containers with ``./vendor/bin/sail up`` (You can create an alias E.g. ``alias sail='sh $([ -f sail ] && echo sail || echo vendor/bin/sail)'``).
- With the containers running ``sail artisan key:generate`` to create the necesary app keys.
- Run the DB migrations: ``sail artisan migrate ``

Now the container is ready to run or start development
<p align="center">
<img width="75%" src="https://github.com/AlbMP96/FFXIV-Guides/assets/92947424/c6f26e25-6788-4f58-8df2-127a3c704c3a"/>

<img width="75%" src="https://github.com/AlbMP96/FFXIV-Guides/assets/92947424/4ba2cfe4-2437-46bd-abcf-1cfe0dc431a5"/>

<img width="75%" src="https://github.com/AlbMP96/FFXIV-Guides/assets/92947424/6f418e05-b319-4983-8b67-592c90ddcd59"/>

<img width="75%" src="https://github.com/AlbMP96/FFXIV-Guides/assets/92947424/7cc8a318-ccbf-48ca-899e-6f9db818e0db"/>

<img width="75%" src="https://github.com/AlbMP96/FFXIV-Guides/assets/92947424/42d75739-a597-45b5-8aba-3329a9974369"/>

<img width="25%" src="https://github.com/AlbMP96/FFXIV-Guides/assets/92947424/438c446a-d5f1-49b6-bdd0-a9304f1a29bb"/>
</p>
