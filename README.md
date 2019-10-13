# gcp-continuous-integration-demo
Demoing setup of Continuous Integration on Google Cloud Platform


# To build:

1. cd into this directory
2. To build Run: `docker build . -t testinggcpstaticapp:1.0`
3. To Run: `docker run -e PORT=8080 -p 8080:8080 -it testinggcpstaticapp:10`
4. Now you can go to `http://localhost:8080` in a browser