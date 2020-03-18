import ballerina/grpc;
import ballerina/io;

public function main(string... args) {

    HealthServerBlockingClient blockingEp = new ("http://localhost:9090");

    // Patient registration service call
    Patient patient = {
        id: "a001",
        name: "Ann Robinson",
        gender: GENDER_FEMALE,
        disease: "Migraine"
    };
    grpc:Headers headers = new;
    var registerResponse = blockingEp->registerPatient(patient);

    if (registerResponse is grpc:Error) {
        io:println("Error in registration call: " + registerResponse.reason() + " - " + <string>registerResponse.detail()["message"]);
    } else {
        boolean isRegisterSucceed = false;
        [isRegisterSucceed, _] = registerResponse;
        if isRegisterSucceed {
            io:println(patient.name + " registered successfully.");
        } else {
            io:println(patient.name + " registration failed.");
        }
    }

    // Patient extract information service call
    string patientId = "a002";
    var infoResponse = blockingEp->getPatientInfo(patientId);

    if (infoResponse is grpc:Error) {
        io:println("Error in information extraction call: " + infoResponse.reason() + " - " + <string>infoResponse.detail()["message"]);
    } else {
        Patient extractedPatient;
        [extractedPatient, _] = infoResponse;
        io:println("Patient ID: " + extractedPatient.id);
        io:println("Patient name: " + extractedPatient.name);
        io:println("Patient gender: " + extractedPatient.gender.toString());
        io:println("Patient disease: " + extractedPatient.disease);
    }
}
