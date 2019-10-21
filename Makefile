

docker-compose-apromore.yml :
	wget -O $@ "https://raw.githubusercontent.com/apromore/ApromoreDocker/master/docker-compose.yml" 

.PHONY : apromore
apromore : docker-compose-apromore.yml 
	docker-compose -f $< up

.PHONY :
pmlab : docker-compose.yml
	docker run -it fgregg/pmlab-full:latest python

PHONY :
pm4py : docker-compose.yml
	docker run -it javert899/pm4py:latest python

