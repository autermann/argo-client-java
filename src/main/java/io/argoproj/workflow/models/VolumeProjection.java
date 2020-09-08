/*
 * Argo
 * Argo
 *
 * The version of the OpenAPI document: v2.10.1
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package io.argoproj.workflow.models;

import java.util.Objects;
import java.util.Arrays;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import io.argoproj.workflow.models.ConfigMapProjection;
import io.argoproj.workflow.models.DownwardAPIProjection;
import io.argoproj.workflow.models.SecretProjection;
import io.argoproj.workflow.models.ServiceAccountTokenProjection;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;

/**
 * Projection that may be projected along with other supported volume types
 */
@ApiModel(description = "Projection that may be projected along with other supported volume types")

public class VolumeProjection {
  public static final String SERIALIZED_NAME_CONFIG_MAP = "configMap";
  @SerializedName(SERIALIZED_NAME_CONFIG_MAP)
  private ConfigMapProjection configMap;

  public static final String SERIALIZED_NAME_DOWNWARD_A_P_I = "downwardAPI";
  @SerializedName(SERIALIZED_NAME_DOWNWARD_A_P_I)
  private DownwardAPIProjection downwardAPI;

  public static final String SERIALIZED_NAME_SECRET = "secret";
  @SerializedName(SERIALIZED_NAME_SECRET)
  private SecretProjection secret;

  public static final String SERIALIZED_NAME_SERVICE_ACCOUNT_TOKEN = "serviceAccountToken";
  @SerializedName(SERIALIZED_NAME_SERVICE_ACCOUNT_TOKEN)
  private ServiceAccountTokenProjection serviceAccountToken;


  public VolumeProjection configMap(ConfigMapProjection configMap) {
    
    this.configMap = configMap;
    return this;
  }

   /**
   * Get configMap
   * @return configMap
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public ConfigMapProjection getConfigMap() {
    return configMap;
  }


  public void setConfigMap(ConfigMapProjection configMap) {
    this.configMap = configMap;
  }


  public VolumeProjection downwardAPI(DownwardAPIProjection downwardAPI) {
    
    this.downwardAPI = downwardAPI;
    return this;
  }

   /**
   * Get downwardAPI
   * @return downwardAPI
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public DownwardAPIProjection getDownwardAPI() {
    return downwardAPI;
  }


  public void setDownwardAPI(DownwardAPIProjection downwardAPI) {
    this.downwardAPI = downwardAPI;
  }


  public VolumeProjection secret(SecretProjection secret) {
    
    this.secret = secret;
    return this;
  }

   /**
   * Get secret
   * @return secret
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public SecretProjection getSecret() {
    return secret;
  }


  public void setSecret(SecretProjection secret) {
    this.secret = secret;
  }


  public VolumeProjection serviceAccountToken(ServiceAccountTokenProjection serviceAccountToken) {
    
    this.serviceAccountToken = serviceAccountToken;
    return this;
  }

   /**
   * Get serviceAccountToken
   * @return serviceAccountToken
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public ServiceAccountTokenProjection getServiceAccountToken() {
    return serviceAccountToken;
  }


  public void setServiceAccountToken(ServiceAccountTokenProjection serviceAccountToken) {
    this.serviceAccountToken = serviceAccountToken;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    VolumeProjection volumeProjection = (VolumeProjection) o;
    return Objects.equals(this.configMap, volumeProjection.configMap) &&
        Objects.equals(this.downwardAPI, volumeProjection.downwardAPI) &&
        Objects.equals(this.secret, volumeProjection.secret) &&
        Objects.equals(this.serviceAccountToken, volumeProjection.serviceAccountToken);
  }

  @Override
  public int hashCode() {
    return Objects.hash(configMap, downwardAPI, secret, serviceAccountToken);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class VolumeProjection {\n");
    sb.append("    configMap: ").append(toIndentedString(configMap)).append("\n");
    sb.append("    downwardAPI: ").append(toIndentedString(downwardAPI)).append("\n");
    sb.append("    secret: ").append(toIndentedString(secret)).append("\n");
    sb.append("    serviceAccountToken: ").append(toIndentedString(serviceAccountToken)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }

}

