
### Create Ballerina App and Modules

```sh
ballerina new grpc-healthcare-app
cd grpc-healthcare-app
ballerina add client
ballerina add server
```

### Generate Boilerplate Code

```sh
cd src/client
ballerina grpc --input health-stub.proto --mode client --output .
```