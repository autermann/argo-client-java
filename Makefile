VERSION := $(shell cat VERSION)

.PHONY: build
build:
	find . -mindepth 1 -maxdepth 1 -not -name Makefile -not -name .git -not -name .gitignore -exec rm -Rf {} ';'
	echo $(VERSION) > VERSION
	curl https://raw.githubusercontent.com/argoproj/argo/$(VERSION)/api/openapi-spec/swagger.json | sed 's/io.argoproj.workflow.v1alpha1.//' > swagger.json
	docker run -u $(shell id -u):$(shell id -g) --rm -v `pwd`:/wd openapitools/openapi-generator-cli:v4.3.1 \
		generate \
		-i /wd/swagger.json \
		-g java \
		-o /wd \
		-p hideGenerationTimestamp=true \
		-p dateLibrary=joda \
		--api-package io.argoproj.workflow.apis \
		--invoker-package io.argoproj.workflow \
		--model-package io.argoproj.workflow.models \
		--group-id io.argoproj.workflow \
		--artifact-id argo-client-java \
		--artifact-version $(VERSION) \
		--import-mappings io.k8s.api.core.v1.Affinity=io.kubernetes.client.openapi.models.V1Affinity  \
		--import-mappings io.k8s.api.core.v1.AWSElasticBlockStoreVolumeSource=io.kubernetes.client.openapi.models.V1AWSElasticBlockStoreVolumeSource  \
		--import-mappings io.k8s.api.core.v1.AzureDiskVolumeSource=io.kubernetes.client.openapi.models.V1AzureDiskVolumeSource  \
		--import-mappings io.k8s.api.core.v1.AzureFileVolumeSource=io.kubernetes.client.openapi.models.V1AzureFileVolumeSource  \
		--import-mappings io.k8s.api.core.v1.Capabilities=io.kubernetes.client.openapi.models.V1Capabilities  \
		--import-mappings io.k8s.api.core.v1.CephFSVolumeSource=io.kubernetes.client.openapi.models.V1CephFSVolumeSource  \
		--import-mappings io.k8s.api.core.v1.CinderVolumeSource=io.kubernetes.client.openapi.models.V1CinderVolumeSource  \
		--import-mappings io.k8s.api.core.v1.ConfigMapEnvSource=io.kubernetes.client.openapi.models.V1ConfigMapEnvSource  \
		--import-mappings io.k8s.api.core.v1.ConfigMapKeySelector=io.kubernetes.client.openapi.models.V1ConfigMapKeySelector  \
		--import-mappings io.k8s.api.core.v1.ConfigMapProjection=io.kubernetes.client.openapi.models.V1ConfigMapProjection  \
		--import-mappings io.k8s.api.core.v1.ConfigMapVolumeSource=io.kubernetes.client.openapi.models.V1ConfigMapVolumeSource  \
		--import-mappings io.k8s.api.core.v1.Container=io.kubernetes.client.openapi.models.V1Container  \
		--import-mappings io.k8s.api.core.v1.ContainerPort=io.kubernetes.client.openapi.models.V1ContainerPort  \
		--import-mappings io.k8s.api.core.v1.CSIVolumeSource=io.kubernetes.client.openapi.models.V1CSIVolumeSource  \
		--import-mappings io.k8s.api.core.v1.DownwardAPIProjection=io.kubernetes.client.openapi.models.V1DownwardAPIProjection  \
		--import-mappings io.k8s.api.core.v1.DownwardAPIVolumeFile=io.kubernetes.client.openapi.models.V1DownwardAPIVolumeFile  \
		--import-mappings io.k8s.api.core.v1.DownwardAPIVolumeSource=io.kubernetes.client.openapi.models.V1DownwardAPIVolumeSource  \
		--import-mappings io.k8s.api.core.v1.EmptyDirVolumeSource=io.kubernetes.client.openapi.models.V1EmptyDirVolumeSource  \
		--import-mappings io.k8s.api.core.v1.EnvFromSource=io.kubernetes.client.openapi.models.V1EnvFromSource  \
		--import-mappings io.k8s.api.core.v1.EnvVar=io.kubernetes.client.openapi.models.V1EnvVar  \
		--import-mappings io.k8s.api.core.v1.EnvVarSource=io.kubernetes.client.openapi.models.V1EnvVarSource  \
		--import-mappings io.k8s.api.core.v1.Event=io.kubernetes.client.openapi.models.V1Event  \
		--import-mappings io.k8s.api.core.v1.EventSeries=io.kubernetes.client.openapi.models.V1EventSeries  \
		--import-mappings io.k8s.api.core.v1.EventSource=io.kubernetes.client.openapi.models.V1EventSource  \
		--import-mappings io.k8s.api.core.v1.ExecAction=io.kubernetes.client.openapi.models.V1ExecAction  \
		--import-mappings io.k8s.api.core.v1.FCVolumeSource=io.kubernetes.client.openapi.models.V1FCVolumeSource  \
		--import-mappings io.k8s.api.core.v1.FlexVolumeSource=io.kubernetes.client.openapi.models.V1FlexVolumeSource  \
		--import-mappings io.k8s.api.core.v1.FlockerVolumeSource=io.kubernetes.client.openapi.models.V1FlockerVolumeSource  \
		--import-mappings io.k8s.api.core.v1.GCEPersistentDiskVolumeSource=io.kubernetes.client.openapi.models.V1GCEPersistentDiskVolumeSource  \
		--import-mappings io.k8s.api.core.v1.GitRepoVolumeSource=io.kubernetes.client.openapi.models.V1GitRepoVolumeSource  \
		--import-mappings io.k8s.api.core.v1.GlusterfsVolumeSource=io.kubernetes.client.openapi.models.V1GlusterfsVolumeSource  \
		--import-mappings io.k8s.api.core.v1.Handler=io.kubernetes.client.openapi.models.V1Handler  \
		--import-mappings io.k8s.api.core.v1.HostAlias=io.kubernetes.client.openapi.models.V1HostAlias  \
		--import-mappings io.k8s.api.core.v1.HostPathVolumeSource=io.kubernetes.client.openapi.models.V1HostPathVolumeSource  \
		--import-mappings io.k8s.api.core.v1.HTTPGetAction=io.kubernetes.client.openapi.models.V1HTTPGetAction  \
		--import-mappings io.k8s.api.core.v1.HTTPHeader=io.kubernetes.client.openapi.models.V1HTTPHeader  \
		--import-mappings io.k8s.api.core.v1.ISCSIVolumeSource=io.kubernetes.client.openapi.models.V1ISCSIVolumeSource  \
		--import-mappings io.k8s.api.core.v1.KeyToPath=io.kubernetes.client.openapi.models.V1KeyToPath  \
		--import-mappings io.k8s.api.core.v1.Lifecycle=io.kubernetes.client.openapi.models.V1Lifecycle  \
		--import-mappings io.k8s.api.core.v1.LocalObjectReference=io.kubernetes.client.openapi.models.V1LocalObjectReference  \
		--import-mappings io.k8s.api.core.v1.NFSVolumeSource=io.kubernetes.client.openapi.models.V1NFSVolumeSource  \
		--import-mappings io.k8s.api.core.v1.NodeAffinity=io.kubernetes.client.openapi.models.V1NodeAffinity  \
		--import-mappings io.k8s.api.core.v1.NodeSelector=io.kubernetes.client.openapi.models.V1NodeSelector  \
		--import-mappings io.k8s.api.core.v1.NodeSelectorRequirement=io.kubernetes.client.openapi.models.V1NodeSelectorRequirement  \
		--import-mappings io.k8s.api.core.v1.NodeSelectorTerm=io.kubernetes.client.openapi.models.V1NodeSelectorTerm  \
		--import-mappings io.k8s.api.core.v1.ObjectFieldSelector=io.kubernetes.client.openapi.models.V1ObjectFieldSelector  \
		--import-mappings io.k8s.api.core.v1.ObjectReference=io.kubernetes.client.openapi.models.V1ObjectReference  \
		--import-mappings io.k8s.api.core.v1.PersistentVolumeClaim=io.kubernetes.client.openapi.models.V1PersistentVolumeClaim  \
		--import-mappings io.k8s.api.core.v1.PersistentVolumeClaimCondition=io.kubernetes.client.openapi.models.V1PersistentVolumeClaimCondition  \
		--import-mappings io.k8s.api.core.v1.PersistentVolumeClaimSpec=io.kubernetes.client.openapi.models.V1PersistentVolumeClaimSpec  \
		--import-mappings io.k8s.api.core.v1.PersistentVolumeClaimStatus=io.kubernetes.client.openapi.models.V1PersistentVolumeClaimStatus  \
		--import-mappings io.k8s.api.core.v1.PersistentVolumeClaimVolumeSource=io.kubernetes.client.openapi.models.V1PersistentVolumeClaimVolumeSource  \
		--import-mappings io.k8s.api.core.v1.PhotonPersistentDiskVolumeSource=io.kubernetes.client.openapi.models.V1PhotonPersistentDiskVolumeSource  \
		--import-mappings io.k8s.api.core.v1.PodAffinity=io.kubernetes.client.openapi.models.V1PodAffinity  \
		--import-mappings io.k8s.api.core.v1.PodAffinityTerm=io.kubernetes.client.openapi.models.V1PodAffinityTerm  \
		--import-mappings io.k8s.api.core.v1.PodAntiAffinity=io.kubernetes.client.openapi.models.V1PodAntiAffinity  \
		--import-mappings io.k8s.api.core.v1.PodDNSConfig=io.kubernetes.client.openapi.models.V1PodDNSConfig  \
		--import-mappings io.k8s.api.core.v1.PodDNSConfigOption=io.kubernetes.client.openapi.models.V1PodDNSConfigOption  \
		--import-mappings io.k8s.api.core.v1.PodSecurityContext=io.kubernetes.client.openapi.models.V1PodSecurityContext  \
		--import-mappings io.k8s.api.core.v1.PortworxVolumeSource=io.kubernetes.client.openapi.models.V1PortworxVolumeSource  \
		--import-mappings io.k8s.api.core.v1.PreferredSchedulingTerm=io.kubernetes.client.openapi.models.V1PreferredSchedulingTerm  \
		--import-mappings io.k8s.api.core.v1.Probe=io.kubernetes.client.openapi.models.V1Probe  \
		--import-mappings io.k8s.api.core.v1.ProjectedVolumeSource=io.kubernetes.client.openapi.models.V1ProjectedVolumeSource  \
		--import-mappings io.k8s.api.core.v1.QuobyteVolumeSource=io.kubernetes.client.openapi.models.V1QuobyteVolumeSource  \
		--import-mappings io.k8s.api.core.v1.RBDVolumeSource=io.kubernetes.client.openapi.models.V1RBDVolumeSource  \
		--import-mappings io.k8s.api.core.v1.ResourceFieldSelector=io.kubernetes.client.openapi.models.V1ResourceFieldSelector  \
		--import-mappings io.k8s.api.core.v1.ResourceRequirements=io.kubernetes.client.openapi.models.V1ResourceRequirements  \
		--import-mappings io.k8s.api.core.v1.ScaleIOVolumeSource=io.kubernetes.client.openapi.models.V1ScaleIOVolumeSource  \
		--import-mappings io.k8s.api.core.v1.SecretEnvSource=io.kubernetes.client.openapi.models.V1SecretEnvSource  \
		--import-mappings io.k8s.api.core.v1.SecretKeySelector=io.kubernetes.client.openapi.models.V1SecretKeySelector  \
		--import-mappings io.k8s.api.core.v1.SecretProjection=io.kubernetes.client.openapi.models.V1SecretProjection  \
		--import-mappings io.k8s.api.core.v1.SecretVolumeSource=io.kubernetes.client.openapi.models.V1SecretVolumeSource  \
		--import-mappings io.k8s.api.core.v1.SecurityContext=io.kubernetes.client.openapi.models.V1SecurityContext  \
		--import-mappings io.k8s.api.core.v1.SELinuxOptions=io.kubernetes.client.openapi.models.V1SELinuxOptions  \
		--import-mappings io.k8s.api.core.v1.ServiceAccountTokenProjection=io.kubernetes.client.openapi.models.V1ServiceAccountTokenProjection  \
		--import-mappings io.k8s.api.core.v1.StorageOSVolumeSource=io.kubernetes.client.openapi.models.V1StorageOSVolumeSource  \
		--import-mappings io.k8s.api.core.v1.Sysctl=io.kubernetes.client.openapi.models.V1Sysctl  \
		--import-mappings io.k8s.api.core.v1.TCPSocketAction=io.kubernetes.client.openapi.models.V1TCPSocketAction  \
		--import-mappings io.k8s.api.core.v1.Toleration=io.kubernetes.client.openapi.models.V1Toleration  \
		--import-mappings io.k8s.api.core.v1.TypedLocalObjectReference=io.kubernetes.client.openapi.models.V1TypedLocalObjectReference  \
		--import-mappings io.k8s.api.core.v1.Volume=io.kubernetes.client.openapi.models.V1Volume  \
		--import-mappings io.k8s.api.core.v1.VolumeDevice=io.kubernetes.client.openapi.models.V1VolumeDevice  \
		--import-mappings io.k8s.api.core.v1.VolumeMount=io.kubernetes.client.openapi.models.V1VolumeMount  \
		--import-mappings io.k8s.api.core.v1.VolumeProjection=io.kubernetes.client.openapi.models.V1VolumeProjection  \
		--import-mappings io.k8s.api.core.v1.VsphereVirtualDiskVolumeSource=io.kubernetes.client.openapi.models.V1VsphereVirtualDiskVolumeSource  \
		--import-mappings io.k8s.api.core.v1.WeightedPodAffinityTerm=io.kubernetes.client.openapi.models.V1WeightedPodAffinityTerm  \
		--import-mappings io.k8s.api.core.v1.WindowsSecurityContextOptions=io.kubernetes.client.openapi.models.V1WindowsSecurityContextOptions  \
		--import-mappings io.k8s.api.policy.v1beta1.PodDisruptionBudgetSpec=io.kubernetes.client.openapi.models.V1beta1PodDisruptionBudgetSpec  \
		--import-mappings io.k8s.apimachinery.pkg.api.resource.Quantity=io.kubernetes.client.custom.Quantity  \
		--import-mappings io.k8s.apimachinery.pkg.apis.meta.v1.CreateOptions=io.kubernetes.client.util.generic.options.CreateOptions  \
		--import-mappings io.k8s.apimachinery.pkg.apis.meta.v1.Fields=io.kubernetes.client.openapi.models.V1Fields  \
		--import-mappings io.k8s.apimachinery.pkg.apis.meta.v1.FieldsV1=io.kubernetes.client.openapi.models.V1FieldsV1  \
		--import-mappings io.k8s.apimachinery.pkg.apis.meta.v1.Initializer=io.kubernetes.client.openapi.models.V1Initializer  \
		--import-mappings io.k8s.apimachinery.pkg.apis.meta.v1.Initializers=io.kubernetes.client.openapi.models.V1Initializers  \
		--import-mappings io.k8s.apimachinery.pkg.apis.meta.v1.LabelSelector=io.kubernetes.client.openapi.models.V1LabelSelector  \
		--import-mappings io.k8s.apimachinery.pkg.apis.meta.v1.LabelSelectorRequirement=io.kubernetes.client.openapi.models.V1LabelSelectorRequirement  \
		--import-mappings io.k8s.apimachinery.pkg.apis.meta.v1.ListMeta=io.kubernetes.client.openapi.models.V1ListMeta  \
		--import-mappings io.k8s.apimachinery.pkg.apis.meta.v1.ManagedFieldsEntry=io.kubernetes.client.openapi.models.V1ManagedFieldsEntry  \
		--import-mappings io.k8s.apimachinery.pkg.apis.meta.v1.MicroTime=io.kubernetes.client.openapi.models.V1MicroTime  \
		--import-mappings io.k8s.apimachinery.pkg.apis.meta.v1.ObjectMeta=io.kubernetes.client.openapi.models.V1ObjectMeta  \
		--import-mappings io.k8s.apimachinery.pkg.apis.meta.v1.OwnerReference=io.kubernetes.client.openapi.models.V1OwnerReference  \
		--import-mappings io.k8s.apimachinery.pkg.apis.meta.v1.Status=io.kubernetes.client.openapi.models.V1Status  \
		--import-mappings io.k8s.apimachinery.pkg.apis.meta.v1.StatusCause=io.kubernetes.client.openapi.models.V1StatusCause  \
		--import-mappings io.k8s.apimachinery.pkg.apis.meta.v1.StatusDetails=io.kubernetes.client.openapi.models.V1StatusDetails  \
		--import-mappings io.k8s.apimachinery.pkg.apis.meta.v1.Time=org.joda.time.DateTime  \
		--import-mappings io.k8s.apimachinery.pkg.util.intstr.IntOrString=io.kubernetes.client.custom.IntOrString \
		--generate-alias-as-model
	# add the io.kubernetes:java-client to the deps
	sed 's/<dependencies>/<dependencies><dependency><groupId>io.kubernetes<\/groupId><artifactId>client-java<\/artifactId><version>10.0.0<\/version><\/dependency>/g' pom.xml > tmp && mv tmp pom.xml
	docker run -v ~/.m2:/root/.m2 -v `pwd`:/wd -w /wd maven:3-openjdk-8 \
		mvn install -DskipTests -Dmaven.javadoc.skip
	git add .
	git commit -m 'Updated to $(VERSION)' || git diff --exit-code
	git tag -f $(VERSION)

.PHONY: publish
publish: build
	# https://help.github.com/en/packages/using-github-packages-with-your-projects-ecosystem/configuring-apache-maven-for-use-with-github-packages
	docker run -v ~/.m2:/root/.m2 -v `pwd`:/wd -w /wd maven:3-openjdk-8 \
		mvn deploy -DskipTests -Dmaven.javadoc.skip -DaltDeploymentRepository=github::default::https://maven.pkg.github.com/argoproj-labs/argo-client-java
	git push --tags
