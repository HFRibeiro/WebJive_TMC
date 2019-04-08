.PHONY: all run

all : webjive web-maxiv-tangogql webjive-auth dashboard-repo

webjive :
	git clone https://gitlab.com/MaxIV/webjive.git

web-maxiv-tangogql :
	git clone https://gitlab.com/MaxIV/web-maxiv-tangogql.git
		
webjive-auth :
	git clone https://gitlab.com/MaxIV/webjive-auth.git

dashboard-repo :
	git clone https://gitlab.com/MaxIV/dashboard-repo.git

run : all
	docker-compose build && docker-compose up
