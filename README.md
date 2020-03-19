## How to Run this App
First of all, you need to install [Ballerina language 1.2.0+](https://ballerina.io/v1-1/learn/). Please refer to the official [Ballerina website](https://ballerina.io/v1-1/learn/) to follow the step by step guidelines to install Ballerina language in your preferred platform (macOS, Linux, or Windows). There are installers released for each platform. However, I normally preferred to use binaries to install Ballerina even though it is not the easiest way to do it.

### Install Ballerina using Binaries

1. Download Ballerina 1.2.0+ binaries from [here](https://github.com/ballerina-platform/ballerina-lang/releases).
1. Extract the zip file. Let assume you have extracted into your `/home` directory. Now you have Ballerina binaries in a directory called `/home/ballerina-1.2.0/`.
1. Setup your `PATH` environment variables like below (Normally, in Linux and macOS environments you can set the PATH variable by changing one of ` ~/.bash_profile, ~/.bashrc, ~/.zshrc, or ~/.profile` files).
    ```sh
    export BALLERINA_HOME="/home/ballerina-1.2.0/bin"
    export PATH=$PATH:$BALLERINA_HOME
    ```
 1. That's it, now you can simply reload the terminal and verify ballerina installation.
    ```sh
    $ ballerina version
    ```
### Run this gRPC Healthcare App

1. Clone this repository.
    ```sh
    $ git clone https://github.com/BuddhiWathsala/grpc-healthcare-app.git
    ```
1. Navigate to the app.
    ```sh
    $ cd grpc-healthcare-app
    ```
1. Build the app.
    ```sh
    $ ballerina build -a
    ```
1. Run the gRPC server.
    ```sh
    $ ballerina run target/bin/server.jar
    ```
1. In another terminal, run the gRPC client.
    ```sh
    $ ballerina run target/bin/client.jar
    ```

## How to Develop a gRPC Ballerina App

Before implementing a gRPC Ballerina app, you need to install Ballerina as I discussed in the [previous section](#install-ballerina-using-binaries).

After that, you can create a new Ballerina project using the following command.

```sh
$ ballerina new grpc-healthcare-app
```

In this implementation, I have created two separate modules for the client and the server implementation. Create client and server Ballerina modules as follows.

```sh
$ cd grpc-healthcare-app
$ ballerina add client
$ ballerina add server
```

The Ballerina CLI tool has enriched with the support of generating boilerplate codes of the gRPC server and client. Hence, you can generate boilerplate codes of the server and the client using the following commands.

Server Code Generation:

```sh
$ cd src/server
$ ballerina grpc --input health-stub.proto --mode service --output .
```

Client Code Generation:

```sh
$ cd src/client
$ ballerina grpc --input health-stub.proto --mode client --output .
```

## References

1. https://ballerina.io/v1-1/learn/by-example/
