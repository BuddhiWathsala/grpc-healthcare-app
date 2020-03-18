import ballerina/grpc;

listener grpc:Listener ep = new (9090);

service HealthServer on ep {

    resource function registerPatient(grpc:Caller caller, Patient value) {
        // Implementation goes here.

        // You should return a boolean
    }
    resource function getPatientInfo(grpc:Caller caller, string value) {
        // Implementation goes here.

        // You should return a Patient
    }
}

public type Patient record {|
    string id = "";
    string name = "";
    Gender? gender = ();
    string disease = "";
    
|};

public type Gender "MALE"|"FEMALE"|"OTHER";
public const Gender GENDER_MALE = "MALE";
const Gender GENDER_FEMALE = "FEMALE";
const Gender GENDER_OTHER = "OTHER";



const string ROOT_DESCRIPTOR = "0A116865616C74682D737475622E70726F746F1A1E676F6F676C652F70726F746F6275662F77726170706572732E70726F746F229B010A0750617469656E74120E0A0269641801200128095202696412120A046E616D6518022001280952046E616D6512270A0667656E64657218032001280E320F2E50617469656E742E47656E646572520667656E64657212180A076469736561736518042001280952076469736561736522290A0647656E64657212080A044D414C451000120A0A0646454D414C45100112090A054F5448455210023281010A0C4865616C746853657276657212370A0F726567697374657250617469656E7412082E50617469656E741A1A2E676F6F676C652E70726F746F6275662E426F6F6C56616C756512380A0E67657450617469656E74496E666F121C2E676F6F676C652E70726F746F6275662E537472696E6756616C75651A082E50617469656E74620670726F746F33";
function getDescriptorMap() returns map<string> {
    return {
        "health-stub.proto":"0A116865616C74682D737475622E70726F746F1A1E676F6F676C652F70726F746F6275662F77726170706572732E70726F746F229B010A0750617469656E74120E0A0269641801200128095202696412120A046E616D6518022001280952046E616D6512270A0667656E64657218032001280E320F2E50617469656E742E47656E646572520667656E64657212180A076469736561736518042001280952076469736561736522290A0647656E64657212080A044D414C451000120A0A0646454D414C45100112090A054F5448455210023281010A0C4865616C746853657276657212370A0F726567697374657250617469656E7412082E50617469656E741A1A2E676F6F676C652E70726F746F6275662E426F6F6C56616C756512380A0E67657450617469656E74496E666F121C2E676F6F676C652E70726F746F6275662E537472696E6756616C75651A082E50617469656E74620670726F746F33",
        "google/protobuf/wrappers.proto":"0A1E676F6F676C652F70726F746F6275662F77726170706572732E70726F746F120F676F6F676C652E70726F746F62756622230A0B446F75626C6556616C756512140A0576616C7565180120012801520576616C756522220A0A466C6F617456616C756512140A0576616C7565180120012802520576616C756522220A0A496E74363456616C756512140A0576616C7565180120012803520576616C756522230A0B55496E74363456616C756512140A0576616C7565180120012804520576616C756522220A0A496E74333256616C756512140A0576616C7565180120012805520576616C756522230A0B55496E74333256616C756512140A0576616C756518012001280D520576616C756522210A09426F6F6C56616C756512140A0576616C7565180120012808520576616C756522230A0B537472696E6756616C756512140A0576616C7565180120012809520576616C756522220A0A427974657356616C756512140A0576616C756518012001280C520576616C756542570A13636F6D2E676F6F676C652E70726F746F627566420D577261707065727350726F746F50015A057479706573F80101A20203475042AA021E476F6F676C652E50726F746F6275662E57656C6C4B6E6F776E5479706573620670726F746F33"
        
    };
}
