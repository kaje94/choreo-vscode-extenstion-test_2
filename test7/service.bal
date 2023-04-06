import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "test7",
	id: "test7-040ccd51-3d03-45c1-9939-5a7807305625"
}
service / on new http:Listener(9090) {

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get greeting(string name) returns string|error {
        // Send a response back to the caller.
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }
}
