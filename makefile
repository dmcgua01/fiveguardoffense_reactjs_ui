new: 
	wget https://raw.githubusercontent.com/github/gitignore/master/Node.gitignore -O .gitignore
	wget https://raw.githubusercontent.com/dmcgua01/fiveguardoffense_reactjs_ui/master/package.json -O package.json
	wget https://raw.githubusercontent.com/dmcgua01/fiveguardoffense_reactjs_ui/master/bower.json -O bower.json
	mkdir components models public public/css public/js public/svg utils views views/layouts
	touch views/layouts/main.handlebars views/home.handlebars app.js config.js package.json routes.js server.js
	make deps

delete:
	rm -rf components models public public/css public/js public/svg utils views views/layouts
	rm -f .gitignore app.js config.js package.json routes.js server.js
	rm -rf node_modules

start:
	node server

bundle:
	browserify app.js -o public/js/bundle.js

deps:
	npm install
	bower install

clean:
	rm -rf bower_components 
	rm -rf node_modules

rebuild:
	make clean && make deps && make bundle
