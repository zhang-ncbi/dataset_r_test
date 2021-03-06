# NCBI Datasets API
#
# NCBI service to query and download biological sequence data across all domains of life from NCBI databases.
#
# The version of the OpenAPI document: v1alpha
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title V1alpha1GeneDatasetRequestContentType
#' @description V1alpha1GeneDatasetRequestContentType Class
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V1alpha1GeneDatasetRequestContentType <- R6::R6Class(
  'V1alpha1GeneDatasetRequestContentType',
  public = list(
    initialize = function(...){
      local.optional.var <- list(...)
    },
    toJSON = function() {
      V1alpha1GeneDatasetRequestContentTypeObject <- list()

      V1alpha1GeneDatasetRequestContentTypeObject
    },
    fromJSON = function(V1alpha1GeneDatasetRequestContentTypeJson) {
      V1alpha1GeneDatasetRequestContentTypeObject <- jsonlite::fromJSON(V1alpha1GeneDatasetRequestContentTypeJson)
    },
    toJSONString = function() {
      jsoncontent <- c(
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(V1alpha1GeneDatasetRequestContentTypeJson) {
      V1alpha1GeneDatasetRequestContentTypeObject <- jsonlite::fromJSON(V1alpha1GeneDatasetRequestContentTypeJson)
      self
    }
  )
)
