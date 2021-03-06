# NCBI Datasets API
#
# NCBI service to query and download biological sequence data across all domains of life from NCBI databases.
#
# The version of the OpenAPI document: v1alpha
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title OrganismCountType
#' @description OrganismCountType Class
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OrganismCountType <- R6::R6Class(
  'OrganismCountType',
  public = list(
    initialize = function(...){
      local.optional.var <- list(...)
    },
    toJSON = function() {
      OrganismCountTypeObject <- list()

      OrganismCountTypeObject
    },
    fromJSON = function(OrganismCountTypeJson) {
      OrganismCountTypeObject <- jsonlite::fromJSON(OrganismCountTypeJson)
    },
    toJSONString = function() {
      jsoncontent <- c(
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(OrganismCountTypeJson) {
      OrganismCountTypeObject <- jsonlite::fromJSON(OrganismCountTypeJson)
      self
    }
  )
)
