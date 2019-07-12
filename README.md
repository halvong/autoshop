Django2, Packtpub
7/04/2019, Thurs

pg234

#URL
http://127.0.0.1:8000/admin/

#superuser
tom:tom

docker-compose exec database psql -U tom -h database
docker-compose exec web python manage.py makemigrations shop
docker-compose exec web python manage.py sqlmigrate shop 0001
docker-compose exec web python manage.py migrate
docker-compose logs -f web 

#new steps
docker build -t recipe_app_api .

#commands
docker images  -- shows all docker images



#old steps
1. python manage.py migrate
2. python manage.py runserver
3. python manage.py startapp blogi
4. docker-compose exec web python manage.py makemigrations shop 
5. docker-compose exec web python manage.py sqlmigrate blogi 0001
6. docker-compose exec web python manage.py migrate
7. docker-compose exec web python manage.py createsuperuser 
8. docker-compose exec web python manage.py shell 
9. docker-compose exec database psql -U tom -h database

10. exec(open('script.py').read())
11. docker-compose stop web
    docker-compose up --build -d web
12. docker-compose exec web python manage.py test && flake8 
13. docker-compose run web sh -c "python manage.py test && flake8"
14. docker-compose up -d --force-recreate web   --recreate container web
