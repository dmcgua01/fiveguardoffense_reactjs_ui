new: 
	wget https://raw.githubusercontent.com/github/gitignore/master/Node.gitignore -O .gitignore
	wget https://raw.githubusercontent.com/scotch-io/react-tweets/master/package.json -O package.json
	mkdir components models public public/css public/js public/svg utils views views/layouts
	touch views/layouts/main.handlebars views/home.handlebars app.js config.js package.json routes.js server.js
	npm install

delete:
	rm -rf components models public public/css public/js public/svg utils views views/layouts
	rm -f .gitignore app.js config.js package.json routes.js server.js
	rm -rf node_modules

start:
	node server
