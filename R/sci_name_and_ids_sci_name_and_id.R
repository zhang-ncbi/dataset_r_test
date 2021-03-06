# NCBI Datasets API
#
# NCBI service to query and download biological sequence data across all domains of life from NCBI databases.
#
# The version of the OpenAPI document: v1alpha
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title SciNameAndIdsSciNameAndId
#' @description SciNameAndIdsSciNameAndId Class
#' @format An \code{R6Class} generator object
#' @field sci_name Scientific name character [optional]
#'
#' @field tax_id NCBI Taxonomy ID character [optional]
#'
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SciNameAndIdsSciNameAndId <- R6::R6Class(
  'SciNameAndIdsSciNameAndId',
  public = list(
    `sci_name` = NULL,
    `tax_id` = NULL,
    initialize = function(`sci_name`=NULL, `tax_id`=NULL, ...){
      local.optional.var <- list(...)
      if (!is.null(`sci_name`)) {
        stopifnot(is.character(`sci_name`), length(`sci_name`) == 1)
        self$`sci_name` <- `sci_name`
      }
      if (!is.null(`tax_id`)) {
        stopifnot(is.character(`tax_id`), length(`tax_id`) == 1)
        self$`tax_id` <- `tax_id`
      }
    },
    toJSON = function() {
      SciNameAndIdsSciNameAndIdObject <- list()
      if (!is.null(self$`sci_name`)) {
        SciNameAndIdsSciNameAndIdObject[['sci_name']] <-
          self$`sci_name`
      }
      if (!is.null(self$`tax_id`)) {
        SciNameAndIdsSciNameAndIdObject[['tax_id']] <-
          self$`tax_id`
      }

      SciNameAndIdsSciNameAndIdObject
    },
    fromJSON = function(SciNameAndIdsSciNameAndIdJson) {
      SciNameAndIdsSciNameAndIdObject <- jsonlite::fromJSON(SciNameAndIdsSciNameAndIdJson)
      if (!is.null(SciNameAndIdsSciNameAndIdObject$`sci_name`)) {
        self$`sci_name` <- SciNameAndIdsSciNameAndIdObject$`sci_name`
      }
      if (!is.null(SciNameAndIdsSciNameAndIdObject$`tax_id`)) {
        self$`tax_id` <- SciNameAndIdsSciNameAndIdObject$`tax_id`
      }
    },
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`sci_name`)) {
        sprintf(
        '"sci_name":
          "%s"
                ',
        self$`sci_name`
        )},
        if (!is.null(self$`tax_id`)) {
        sprintf(
        '"tax_id":
          "%s"
                ',
        self$`tax_id`
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(SciNameAndIdsSciNameAndIdJson) {
      SciNameAndIdsSciNameAndIdObject <- jsonlite::fromJSON(SciNameAndIdsSciNameAndIdJson)
      self$`sci_name` <- SciNameAndIdsSciNameAndIdObject$`sci_name`
      self$`tax_id` <- SciNameAndIdsSciNameAndIdObject$`tax_id`
      self
    }
  )
)
