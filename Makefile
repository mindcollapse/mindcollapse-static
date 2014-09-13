PYTHON_BIN := python 

freeze:
	$(PYTHON_BIN) manage.py freeze

deploy:
	cd build/
	git add --all .
	git commit -m "regenerated"
	git push
	ssh root@mindcollapse.com "su www-data -c \"cd /home/www/mindcollapse.com; git pull\""
