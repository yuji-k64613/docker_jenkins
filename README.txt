docker build -t yuji/jenkins .
docker run -it -p 8080:8080 --name jenkins01 yuji/jenkins
