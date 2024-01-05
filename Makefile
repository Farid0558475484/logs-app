run:
	docker run -d -p 3000:3000 -v logs:/app/data --name logsapp logsapp:volumes

run-dev:
	docker run -d -p 3000:3000 -v "/Users/xamyak/Desktop/logs-app:/app" -v /app/node_modules -v logs:/app/data --name logsapp logsapp:volumes

stop:
	docker stop $(shell docker ps -q --filter ancestor=logsapp )

	