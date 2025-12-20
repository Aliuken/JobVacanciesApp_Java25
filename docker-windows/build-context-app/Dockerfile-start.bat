docker build -t job-vacancies-app --build-arg PRINT_ARG=new_value -f Dockerfile .
docker network create external-net-app

docker container run -d --name tomcat-app --network external-net-app -p 9080:8080 -v //c/AppData_Java25/JobVacanciesApp:/AppData_Java25/JobVacanciesApp job-vacancies-app
