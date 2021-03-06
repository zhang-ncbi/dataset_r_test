# NCBI Datasets API
#
# NCBI service to query and download biological sequence data across all domains of life from NCBI databases.
#
# The version of the OpenAPI document: v1alpha
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title GatewayruntimeError
#' @description GatewayruntimeError Class
#' @format An \code{R6Class} generator object
#' @field code  integer [optional]
#'
#' @field details  list( \link{ProtobufAny} ) [optional]
#'
#' @field error  character [optional]
#'
#' @field message  character [optional]
#'
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GatewayruntimeError <- R6::R6Class(
  'GatewayruntimeError',
  public = list(
    `code` = NULL,
    `details` = NULL,
    `error` = NULL,
    `message` = NULL,
    initialize = function(`code`=NULL, `details`=NULL, `error`=NULL, `message`=NULL, ...){
      local.optional.var <- list(...)
      if (!is.null(`code`)) {
        stopifnot(is.numeric(`code`), length(`code`) == 1)
        self$`code` <- `code`
      }
      if (!is.null(`details`)) {
        stopifnot(is.vector(`details`), length(`details`) != 0)
        sapply(`details`, function(x) stopifnot(R6::is.R6(x)))
        self$`details` <- `details`
      }
      if (!is.null(`error`)) {
        stopifnot(is.character(`error`), length(`error`) == 1)
        self$`error` <- `error`
      }
      if (!is.null(`message`)) {
        stopifnot(is.character(`message`), length(`message`) == 1)
        self$`message` <- `message`
      }
    },
    toJSON = function() {
      GatewayruntimeErrorObject <- list()
      if (!is.null(self$`code`)) {
        GatewayruntimeErrorObject[['code']] <-
          self$`code`
      }
      if (!is.null(self$`details`)) {
        GatewayruntimeErrorObject[['details']] <-
          lapply(self$`details`, function(x) x$toJSON())
      }
      if (!is.null(self$`error`)) {
        GatewayruntimeErrorObject[['error']] <-
          self$`error`
      }
      if (!is.null(self$`message`)) {
        GatewayruntimeErrorObject[['message']] <-
          self$`message`
      }

      GatewayruntimeErrorObject
    },
    fromJSON = function(GatewayruntimeErrorJson) {
      GatewayruntimeErrorObject <- jsonlite::fromJSON(GatewayruntimeErrorJson)
      if (!is.null(GatewayruntimeErrorObject$`code`)) {
        self$`code` <- GatewayruntimeErrorObject$`code`
      }
      if (!is.null(GatewayruntimeErrorObject$`details`)) {
        self$`details` <- ApiClient$new()$deserializeObj(GatewayruntimeErrorObject$`details`, "array[ProtobufAny]", loadNamespace("ncbi.datasets"))
      }
      if (!is.null(GatewayruntimeErrorObject$`error`)) {
        self$`error` <- GatewayruntimeErrorObject$`error`
      }
      if (!is.null(GatewayruntimeErrorObject$`message`)) {
        self$`message` <- GatewayruntimeErrorObject$`message`
      }
    },
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`code`)) {
        sprintf(
        '"code":
          %d
                ',
        self$`code`
        )},
        if (!is.null(self$`details`)) {
        sprintf(
        '"details":
        [%s]
',
        paste(sapply(self$`details`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox=TRUE, digits = NA)), collapse=",")
        )},
        if (!is.null(self$`error`)) {
        sprintf(
        '"error":
          "%s"
                ',
        self$`error`
        )},
        if (!is.null(self$`message`)) {
        sprintf(
        '"message":
          "%s"
                ',
        self$`message`
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(GatewayruntimeErrorJson) {
      GatewayruntimeErrorObject <- jsonlite::fromJSON(GatewayruntimeErrorJson)
      self$`code` <- GatewayruntimeErrorObject$`code`
      self$`details` <- ApiClient$new()$deserializeObj(GatewayruntimeErrorObject$`details`, "array[ProtobufAny]", loadNamespace("ncbi.datasets"))
      self$`error` <- GatewayruntimeErrorObject$`error`
      self$`message` <- GatewayruntimeErrorObject$`message`
      self
    }
  )
)
