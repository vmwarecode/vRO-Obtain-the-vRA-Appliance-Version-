//host is of type vCACCAFE:VCACHost

var restClient = host.createRestClient(vCACCAFEServicesEnum.AUTHENTICATION_SERVICE);
var response = restClient.get("/about");
var version = response.getProperty("productVersion");
restClient.close();
return version.toString();