# NCBI Datasets API
#
# NCBI service to query and download biological sequence data across all domains of life from NCBI databases.
#
# The version of the OpenAPI document: v1alpha
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title AssemblyDatasetRequestResolution
#' @description AssemblyDatasetRequestResolution Class
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AssemblyDatasetRequestResolution <- R6::R6Class(
  'AssemblyDatasetRequestResolution',
  public = list(
    initialize = function(...){
      local.optional.var <- list(...)
    },
    toJSON = function() {
      AssemblyDatasetRequestResolutionObject <- list()

      AssemblyDatasetRequestResolutionObject
    },
    fromJSON = function(AssemblyDatasetRequestResolutionJson) {
      AssemblyDatasetRequestResolutionObject <- jsonlite::fromJSON(AssemblyDatasetRequestResolutionJson)
    },
    toJSONString = function() {
      jsoncontent <- c(
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(AssemblyDatasetRequestResolutionJson) {
      AssemblyDatasetRequestResolutionObject <- jsonlite::fromJSON(AssemblyDatasetRequestResolutionJson)
      self
    }
  )
)
