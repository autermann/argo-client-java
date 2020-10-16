

# SubmitOpts

SubmitOpts are workflow submission options
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**dryRun** | **Boolean** | DryRun validates the workflow on the client-side without creating it. This option is not supported in API |  [optional]
**entryPoint** | **String** | Entrypoint overrides spec.entrypoint |  [optional]
**generateName** | **String** | GenerateName overrides metadata.generateName |  [optional]
**labels** | **String** | Labels adds to metadata.labels |  [optional]
**name** | **String** | Name overrides metadata.name |  [optional]
**ownerReference** | [**io.kubernetes.client.openapi.models.V1OwnerReference**](io.kubernetes.client.openapi.models.V1OwnerReference.md) |  |  [optional]
**parameterFile** | **String** | ParameterFile holds a reference to a parameter file. This option is not supported in API |  [optional]
**parameters** | **List&lt;String&gt;** | Parameters passes input parameters to workflow |  [optional]
**serverDryRun** | **Boolean** | ServerDryRun validates the workflow on the server-side without creating it |  [optional]
**serviceAccount** | **String** | ServiceAccount runs all pods in the workflow using specified ServiceAccount. |  [optional]



