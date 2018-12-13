This repo brefiely describes what is thrift and how to get started with it.

1. Read about thrift interface definition language from: 
https://thrift.apache.org/docs/idl

2. If you still have some doubts about it, follow this:
https://github.com/diwakergupta/thrift-missing-guide

3. Protocol buffer has an excellent guide about the basic idealogy on which thrift is built, so it's a good to read:
https://developers.google.com/protocol-buffers

4. I am adding a basic thrift example file, which you can use to generate service files in your favourite language.

5. You can use this docker image to generate your thrift file very quickly, without having to install thrift locally:
```
docker pull thrift
docker run -v "$PWD:/data" thrift thrift -o /data --gen go /data/example.thrift
```
here data directory is the docker volume which it will use to communicate between docker image and your local.
I am generating file in go. You can enter your language in it's place.

Once this command is run, you will find a directroy in your PWD with name like go-gen.

6. If you do not want to run thrift using docker image, you can follow this and install thirft in your local environment, and generate your files.
https://github.com/apache/thrift.git 


