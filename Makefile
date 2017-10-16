CONTAINER := change_name

image:
	docker build -t vue_image .
bash:
	docker run -it --rm --name vue_image_bash-$(shell date +%s) \
		-v $(PWD):/src \
		vue_image bash
server:
	docker run -it --rm --name $(CONTAINER) \
		-v $(PWD):/src \
		-p 8080:8080 \
		vue_image npm run dev
install:
	docker run -it --rm --name $(CONTAINER)-install \
		-v $(PWD):/src \
		vue_image npm install
finish:
  sh finish.sh
