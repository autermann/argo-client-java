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
 * TarStrategy will tar and gzip the file or directory when saving
 */
@ApiModel(description = "TarStrategy will tar and gzip the file or directory when saving")

public class TarStrategy {
  public static final String SERIALIZED_NAME_COMPRESSION_LEVEL = "compressionLevel";
  @SerializedName(SERIALIZED_NAME_COMPRESSION_LEVEL)
  private Integer compressionLevel;


  public TarStrategy compressionLevel(Integer compressionLevel) {
    
    this.compressionLevel = compressionLevel;
    return this;
  }

   /**
   * CompressionLevel specifies the gzip compression level to use for the artifact. Defaults to gzip.DefaultCompression.
   * @return compressionLevel
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "CompressionLevel specifies the gzip compression level to use for the artifact. Defaults to gzip.DefaultCompression.")

  public Integer getCompressionLevel() {
    return compressionLevel;
  }


  public void setCompressionLevel(Integer compressionLevel) {
    this.compressionLevel = compressionLevel;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    TarStrategy tarStrategy = (TarStrategy) o;
    return Objects.equals(this.compressionLevel, tarStrategy.compressionLevel);
  }

  @Override
  public int hashCode() {
    return Objects.hash(compressionLevel);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class TarStrategy {\n");
    sb.append("    compressionLevel: ").append(toIndentedString(compressionLevel)).append("\n");
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

