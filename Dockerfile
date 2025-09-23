# 1. The cmatrix subdirectory uses the Alpine Linux image and installs the cmatrix screen saver.
# 2. The apachebench subdirectory uses the Ubuntu image and installs the apache2-utils package for running the ab benchmarking tool.



FROM alpine:latest

RUN apk add --no-cache cmatrix

ENTRYPOINT ["cmatrix"]

CMD ["-abs","-C","red"]
# To build the Docker image, run:
# docker build -t cmatrix .
# To run the cmatrix screen saver, execute:
# docker run --rm -it cmatrix