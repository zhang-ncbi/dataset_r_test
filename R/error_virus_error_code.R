# NCBI Datasets API
#
# NCBI service to query and download biological sequence data across all domains of life from NCBI databases.
#
# The version of the OpenAPI document: v1alpha
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title ErrorVirusErrorCode
#' @description ErrorVirusErrorCode Class
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ErrorVirusErrorCode <- R6::R6Class(
  'ErrorVirusErrorCode',
  public = list(
    initialize = function(...){
      local.optional.var <- list(...)
    },
    toJSON = function() {
      ErrorVirusErrorCodeObject <- list()

      ErrorVirusErrorCodeObject
    },
    fromJSON = function(ErrorVirusErrorCodeJson) {
      ErrorVirusErrorCodeObject <- jsonlite::fromJSON(ErrorVirusErrorCodeJson)
    },
    toJSONString = function() {
      jsoncontent <- c(
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(ErrorVirusErrorCodeJson) {
      ErrorVirusErrorCodeObject <- jsonlite::fromJSON(ErrorVirusErrorCodeJson)
      self
    }
  )
)
