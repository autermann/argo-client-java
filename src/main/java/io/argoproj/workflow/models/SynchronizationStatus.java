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
import io.argoproj.workflow.models.SemaphoreStatus;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;

/**
 * SynchronizationStatus
 */

public class SynchronizationStatus {
  public static final String SERIALIZED_NAME_SEMAPHORE = "semaphore";
  @SerializedName(SERIALIZED_NAME_SEMAPHORE)
  private SemaphoreStatus semaphore;


  public SynchronizationStatus semaphore(SemaphoreStatus semaphore) {
    
    this.semaphore = semaphore;
    return this;
  }

   /**
   * Get semaphore
   * @return semaphore
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public SemaphoreStatus getSemaphore() {
    return semaphore;
  }


  public void setSemaphore(SemaphoreStatus semaphore) {
    this.semaphore = semaphore;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SynchronizationStatus synchronizationStatus = (SynchronizationStatus) o;
    return Objects.equals(this.semaphore, synchronizationStatus.semaphore);
  }

  @Override
  public int hashCode() {
    return Objects.hash(semaphore);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SynchronizationStatus {\n");
    sb.append("    semaphore: ").append(toIndentedString(semaphore)).append("\n");
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

