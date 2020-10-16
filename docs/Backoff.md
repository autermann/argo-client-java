

# Backoff

Backoff is a backoff strategy to use within retryStrategy
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**duration** | **String** | Duration is the amount to back off. Default unit is seconds, but could also be a duration (e.g. \&quot;2m\&quot;, \&quot;1h\&quot;) |  [optional]
**factor** | [**io.kubernetes.client.custom.IntOrString**](io.kubernetes.client.custom.IntOrString.md) |  |  [optional]
**maxDuration** | **String** | MaxDuration is the maximum amount of time allowed for the backoff strategy |  [optional]



