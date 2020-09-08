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
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;

/**
 * A link to another app.
 */
@ApiModel(description = "A link to another app.")

public class Link {
  public static final String SERIALIZED_NAME_NAME = "name";
  @SerializedName(SERIALIZED_NAME_NAME)
  private String name;

  public static final String SERIALIZED_NAME_SCOPE = "scope";
  @SerializedName(SERIALIZED_NAME_SCOPE)
  private String scope;

  public static final String SERIALIZED_NAME_URL = "url";
  @SerializedName(SERIALIZED_NAME_URL)
  private String url;


  public Link name(String name) {
    
    this.name = name;
    return this;
  }

   /**
   * The name of the link, E.g. \&quot;Workflow Logs\&quot; or \&quot;Pod Logs\&quot;
   * @return name
  **/
  @ApiModelProperty(required = true, value = "The name of the link, E.g. \"Workflow Logs\" or \"Pod Logs\"")

  public String getName() {
    return name;
  }


  public void setName(String name) {
    this.name = name;
  }


  public Link scope(String scope) {
    
    this.scope = scope;
    return this;
  }

   /**
   * Either \&quot;workflow\&quot; or \&quot;pod\&quot;
   * @return scope
  **/
  @ApiModelProperty(required = true, value = "Either \"workflow\" or \"pod\"")

  public String getScope() {
    return scope;
  }


  public void setScope(String scope) {
    this.scope = scope;
  }


  public Link url(String url) {
    
    this.url = url;
    return this;
  }

   /**
   * The URL. May contain \&quot;${metadata.namespace}\&quot; and \&quot;${metadata.name}\&quot;.
   * @return url
  **/
  @ApiModelProperty(required = true, value = "The URL. May contain \"${metadata.namespace}\" and \"${metadata.name}\".")

  public String getUrl() {
    return url;
  }


  public void setUrl(String url) {
    this.url = url;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    Link link = (Link) o;
    return Objects.equals(this.name, link.name) &&
        Objects.equals(this.scope, link.scope) &&
        Objects.equals(this.url, link.url);
  }

  @Override
  public int hashCode() {
    return Objects.hash(name, scope, url);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Link {\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    scope: ").append(toIndentedString(scope)).append("\n");
    sb.append("    url: ").append(toIndentedString(url)).append("\n");
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

