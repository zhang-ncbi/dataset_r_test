# GeneApi

All URIs are relative to *https://api.ncbi.nlm.nih.gov/datasets/v1alpha*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DownloadGenePackage**](GeneApi.md#DownloadGenePackage) | **GET** /gene/id/{gene_ids}/download | Get a gene dataset by gene ID
[**DownloadGenePackagePost**](GeneApi.md#DownloadGenePackagePost) | **POST** /gene/download | Get a gene dataset by POST
[**GeneDownloadSummaryByAccession**](GeneApi.md#GeneDownloadSummaryByAccession) | **GET** /gene/accession/{accessions}/download_summary | Get gene download summary by RefSeq Accession
[**GeneDownloadSummaryById**](GeneApi.md#GeneDownloadSummaryById) | **GET** /gene/id/{gene_ids}/download_summary | Get gene download summary by GeneID
[**GeneDownloadSummaryByPost**](GeneApi.md#GeneDownloadSummaryByPost) | **POST** /gene/download_summary | Get gene download summary
[**GeneDownloadSummaryByTaxAndSymbol**](GeneApi.md#GeneDownloadSummaryByTaxAndSymbol) | **GET** /gene/symbol/{symbols}/taxon/{taxon}/download_summary | Get gene download summary by gene symbol.
[**GeneMetadataByAccession**](GeneApi.md#GeneMetadataByAccession) | **GET** /gene/accession/{accessions} | Get gene metadata by RefSeq Accession
[**GeneMetadataById**](GeneApi.md#GeneMetadataById) | **GET** /gene/id/{gene_ids} | Get gene metadata by GeneID
[**GeneMetadataByPost**](GeneApi.md#GeneMetadataByPost) | **POST** /gene | Get gene metadata
[**GeneMetadataByTaxAndSymbol**](GeneApi.md#GeneMetadataByTaxAndSymbol) | **GET** /gene/symbol/{symbols}/taxon/{taxon} | Get gene metadata by gene symbol.
[**GeneTaxNameQuery**](GeneApi.md#GeneTaxNameQuery) | **GET** /gene/taxon_suggest/{taxon_query} | Get a list of taxonomy names and IDs found in the gene dataset given a partial taxonomic name.
[**GeneTaxTree**](GeneApi.md#GeneTaxTree) | **GET** /gene/taxon/{taxon}/tree | Retrieve tax tree


# **DownloadGenePackage**
> data.frame DownloadGenePackage(gene.ids, include.annotation.type=var.include.annotation.type, sort.schema.field='SORT_FIELD_UNSPECIFIED', sort.schema.direction='SORT_DIRECTION_UNSPECIFIED', filename='ncbi_dataset.zip')

Get a gene dataset by gene ID

Get a gene dataset including gene, transcript and protein fasta sequence, annotation and metadata by gene ID.

### Example
```R
library(ncbi.datasets)

var.gene.ids <- list(123) # array[integer] | 
var.include.annotation.type <- list("include_annotation_type_example") # array[character] | Select additional types of annotation to include in the data package.  If unset, no annotation is provided.
var.sort.schema.field <- 'SORT_FIELD_UNSPECIFIED' # character | 
var.sort.schema.direction <- 'SORT_DIRECTION_UNSPECIFIED' # character | 
var.filename <- 'ncbi_dataset.zip' # character | Output file name.

#Get a gene dataset by gene ID
api.instance <- GeneApi$new()
result <- api.instance$DownloadGenePackage(var.gene.ids, include.annotation.type=var.include.annotation.type, sort.schema.field=var.sort.schema.field, sort.schema.direction=var.sort.schema.direction, filename=var.filename)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gene.ids** | list( **integer** )|  | 
 **include.annotation.type** | Enum [FASTA_GENE, FASTA_RNA, FASTA_PROTEIN] | Select additional types of annotation to include in the data package.  If unset, no annotation is provided. | [optional] 
 **sort.schema.field** | Enum [SORT_FIELD_UNSPECIFIED, SORT_FIELD_GENE_ID, SORT_FIELD_GENE_TYPE, SORT_FIELD_GENE_SYMBOL] |  | [optional] [default to &#39;SORT_FIELD_UNSPECIFIED&#39;]
 **sort.schema.direction** | Enum [SORT_DIRECTION_UNSPECIFIED, SORT_DIRECTION_ASCENDING, SORT_DIRECTION_DESCENDING] |  | [optional] [default to &#39;SORT_DIRECTION_UNSPECIFIED&#39;]
 **filename** | **character**| Output file name. | [optional] [default to &#39;ncbi_dataset.zip&#39;]

### Return type

**data.frame**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/zip

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Download selected gene data as a zip file. |  -  |

# **DownloadGenePackagePost**
> data.frame DownloadGenePackagePost(body, filename='ncbi_dataset.zip')

Get a gene dataset by POST

Get a gene dataset including gene, transcript and protein fasta sequence, annotation and metadata by POST.

### Example
```R
library(ncbi.datasets)

var.body <- v1alpha1GeneDatasetRequest$new(list("accessions_example"), list(123), list(GeneDatasetRequestFasta$new()), v1alpha1GeneDatasetRequestContentType$new(), GeneDatasetRequestSort$new(v1alpha1SortDirection$new(), GeneDatasetRequestSortField$new()), GeneDatasetRequestSymbolsForTaxon$new(list("symbols_example"), "taxon_example")) # V1alpha1GeneDatasetRequest | 
var.filename <- 'ncbi_dataset.zip' # character | Output file name.

#Get a gene dataset by POST
api.instance <- GeneApi$new()
result <- api.instance$DownloadGenePackagePost(var.body, filename=var.filename)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1alpha1GeneDatasetRequest**](V1alpha1GeneDatasetRequest.md)|  | 
 **filename** | **character**| Output file name. | [optional] [default to &#39;ncbi_dataset.zip&#39;]

### Return type

**data.frame**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/zip

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Download selected gene data as a zip file. |  -  |

# **GeneDownloadSummaryByAccession**
> V1alpha1DownloadSummary GeneDownloadSummaryByAccession(accessions, returned.content='COMPLETE', sort.schema.field='SORT_FIELD_UNSPECIFIED', sort.schema.direction='SORT_DIRECTION_UNSPECIFIED')

Get gene download summary by RefSeq Accession

Get gene download summary by RefSeq Accession in a JSON output format.

### Example
```R
library(ncbi.datasets)

var.accessions <- list("inner_example") # array[character] | RNA or Protein accessions.
var.returned.content <- 'COMPLETE' # character | 
var.sort.schema.field <- 'SORT_FIELD_UNSPECIFIED' # character | 
var.sort.schema.direction <- 'SORT_DIRECTION_UNSPECIFIED' # character | 

#Get gene download summary by RefSeq Accession
api.instance <- GeneApi$new()
result <- api.instance$GeneDownloadSummaryByAccession(var.accessions, returned.content=var.returned.content, sort.schema.field=var.sort.schema.field, sort.schema.direction=var.sort.schema.direction)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessions** | list( **character** )| RNA or Protein accessions. | 
 **returned.content** | Enum [COMPLETE, IDS_ONLY] |  | [optional] [default to &#39;COMPLETE&#39;]
 **sort.schema.field** | Enum [SORT_FIELD_UNSPECIFIED, SORT_FIELD_GENE_ID, SORT_FIELD_GENE_TYPE, SORT_FIELD_GENE_SYMBOL] |  | [optional] [default to &#39;SORT_FIELD_UNSPECIFIED&#39;]
 **sort.schema.direction** | Enum [SORT_DIRECTION_UNSPECIFIED, SORT_DIRECTION_ASCENDING, SORT_DIRECTION_DESCENDING] |  | [optional] [default to &#39;SORT_DIRECTION_UNSPECIFIED&#39;]

### Return type

[**V1alpha1DownloadSummary**](v1alpha1DownloadSummary.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A successful response. |  -  |
| **0** | An unexpected error response. |  -  |

# **GeneDownloadSummaryById**
> V1alpha1DownloadSummary GeneDownloadSummaryById(gene.ids, returned.content='COMPLETE', sort.schema.field='SORT_FIELD_UNSPECIFIED', sort.schema.direction='SORT_DIRECTION_UNSPECIFIED')

Get gene download summary by GeneID

Get a download summary by GeneID in a JSON output format.

### Example
```R
library(ncbi.datasets)

var.gene.ids <- list(123) # array[integer] | 
var.returned.content <- 'COMPLETE' # character | 
var.sort.schema.field <- 'SORT_FIELD_UNSPECIFIED' # character | 
var.sort.schema.direction <- 'SORT_DIRECTION_UNSPECIFIED' # character | 

#Get gene download summary by GeneID
api.instance <- GeneApi$new()
result <- api.instance$GeneDownloadSummaryById(var.gene.ids, returned.content=var.returned.content, sort.schema.field=var.sort.schema.field, sort.schema.direction=var.sort.schema.direction)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gene.ids** | list( **integer** )|  | 
 **returned.content** | Enum [COMPLETE, IDS_ONLY] |  | [optional] [default to &#39;COMPLETE&#39;]
 **sort.schema.field** | Enum [SORT_FIELD_UNSPECIFIED, SORT_FIELD_GENE_ID, SORT_FIELD_GENE_TYPE, SORT_FIELD_GENE_SYMBOL] |  | [optional] [default to &#39;SORT_FIELD_UNSPECIFIED&#39;]
 **sort.schema.direction** | Enum [SORT_DIRECTION_UNSPECIFIED, SORT_DIRECTION_ASCENDING, SORT_DIRECTION_DESCENDING] |  | [optional] [default to &#39;SORT_DIRECTION_UNSPECIFIED&#39;]

### Return type

[**V1alpha1DownloadSummary**](v1alpha1DownloadSummary.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A successful response. |  -  |
| **0** | An unexpected error response. |  -  |

# **GeneDownloadSummaryByPost**
> V1alpha1DownloadSummary GeneDownloadSummaryByPost(body)

Get gene download summary

Get gene download summary in a JSON output format.

### Example
```R
library(ncbi.datasets)

var.body <- v1alpha1GeneDatasetRequest$new(list("accessions_example"), list(123), list(GeneDatasetRequestFasta$new()), v1alpha1GeneDatasetRequestContentType$new(), GeneDatasetRequestSort$new(v1alpha1SortDirection$new(), GeneDatasetRequestSortField$new()), GeneDatasetRequestSymbolsForTaxon$new(list("symbols_example"), "taxon_example")) # V1alpha1GeneDatasetRequest | 

#Get gene download summary
api.instance <- GeneApi$new()
result <- api.instance$GeneDownloadSummaryByPost(var.body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1alpha1GeneDatasetRequest**](V1alpha1GeneDatasetRequest.md)|  | 

### Return type

[**V1alpha1DownloadSummary**](v1alpha1DownloadSummary.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A successful response. |  -  |
| **0** | An unexpected error response. |  -  |

# **GeneDownloadSummaryByTaxAndSymbol**
> V1alpha1DownloadSummary GeneDownloadSummaryByTaxAndSymbol(symbols, taxon, returned.content='COMPLETE', sort.schema.field='SORT_FIELD_UNSPECIFIED', sort.schema.direction='SORT_DIRECTION_UNSPECIFIED')

Get gene download summary by gene symbol.

Get gene download summary by gene symbol in a JSON output format.

### Example
```R
library(ncbi.datasets)

var.symbols <- list("inner_example") # array[character] | 
var.taxon <- 'taxon_example' # character | 
var.returned.content <- 'COMPLETE' # character | 
var.sort.schema.field <- 'SORT_FIELD_UNSPECIFIED' # character | 
var.sort.schema.direction <- 'SORT_DIRECTION_UNSPECIFIED' # character | 

#Get gene download summary by gene symbol.
api.instance <- GeneApi$new()
result <- api.instance$GeneDownloadSummaryByTaxAndSymbol(var.symbols, var.taxon, returned.content=var.returned.content, sort.schema.field=var.sort.schema.field, sort.schema.direction=var.sort.schema.direction)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbols** | list( **character** )|  | 
 **taxon** | **character**|  | 
 **returned.content** | Enum [COMPLETE, IDS_ONLY] |  | [optional] [default to &#39;COMPLETE&#39;]
 **sort.schema.field** | Enum [SORT_FIELD_UNSPECIFIED, SORT_FIELD_GENE_ID, SORT_FIELD_GENE_TYPE, SORT_FIELD_GENE_SYMBOL] |  | [optional] [default to &#39;SORT_FIELD_UNSPECIFIED&#39;]
 **sort.schema.direction** | Enum [SORT_DIRECTION_UNSPECIFIED, SORT_DIRECTION_ASCENDING, SORT_DIRECTION_DESCENDING] |  | [optional] [default to &#39;SORT_DIRECTION_UNSPECIFIED&#39;]

### Return type

[**V1alpha1DownloadSummary**](v1alpha1DownloadSummary.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A successful response. |  -  |
| **0** | An unexpected error response. |  -  |

# **GeneMetadataByAccession**
> V1alpha1GeneMetadata GeneMetadataByAccession(accessions, returned.content='COMPLETE', sort.schema.field='SORT_FIELD_UNSPECIFIED', sort.schema.direction='SORT_DIRECTION_UNSPECIFIED')

Get gene metadata by RefSeq Accession

Get detailed gene metadata by RefSeq Accession in a JSON output format.

### Example
```R
library(ncbi.datasets)

var.accessions <- list("inner_example") # array[character] | RNA or Protein accessions.
var.returned.content <- 'COMPLETE' # character | 
var.sort.schema.field <- 'SORT_FIELD_UNSPECIFIED' # character | 
var.sort.schema.direction <- 'SORT_DIRECTION_UNSPECIFIED' # character | 

#Get gene metadata by RefSeq Accession
api.instance <- GeneApi$new()
result <- api.instance$GeneMetadataByAccession(var.accessions, returned.content=var.returned.content, sort.schema.field=var.sort.schema.field, sort.schema.direction=var.sort.schema.direction)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessions** | list( **character** )| RNA or Protein accessions. | 
 **returned.content** | Enum [COMPLETE, IDS_ONLY] |  | [optional] [default to &#39;COMPLETE&#39;]
 **sort.schema.field** | Enum [SORT_FIELD_UNSPECIFIED, SORT_FIELD_GENE_ID, SORT_FIELD_GENE_TYPE, SORT_FIELD_GENE_SYMBOL] |  | [optional] [default to &#39;SORT_FIELD_UNSPECIFIED&#39;]
 **sort.schema.direction** | Enum [SORT_DIRECTION_UNSPECIFIED, SORT_DIRECTION_ASCENDING, SORT_DIRECTION_DESCENDING] |  | [optional] [default to &#39;SORT_DIRECTION_UNSPECIFIED&#39;]

### Return type

[**V1alpha1GeneMetadata**](v1alpha1GeneMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A successful response. |  -  |
| **0** | An unexpected error response. |  -  |

# **GeneMetadataById**
> V1alpha1GeneMetadata GeneMetadataById(gene.ids, returned.content='COMPLETE', sort.schema.field='SORT_FIELD_UNSPECIFIED', sort.schema.direction='SORT_DIRECTION_UNSPECIFIED')

Get gene metadata by GeneID

Get detailed gene metadata by GeneID in a JSON output format.

### Example
```R
library(ncbi.datasets)

var.gene.ids <- list(123) # array[integer] | 
var.returned.content <- 'COMPLETE' # character | 
var.sort.schema.field <- 'SORT_FIELD_UNSPECIFIED' # character | 
var.sort.schema.direction <- 'SORT_DIRECTION_UNSPECIFIED' # character | 

#Get gene metadata by GeneID
api.instance <- GeneApi$new()
result <- api.instance$GeneMetadataById(var.gene.ids, returned.content=var.returned.content, sort.schema.field=var.sort.schema.field, sort.schema.direction=var.sort.schema.direction)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gene.ids** | list( **integer** )|  | 
 **returned.content** | Enum [COMPLETE, IDS_ONLY] |  | [optional] [default to &#39;COMPLETE&#39;]
 **sort.schema.field** | Enum [SORT_FIELD_UNSPECIFIED, SORT_FIELD_GENE_ID, SORT_FIELD_GENE_TYPE, SORT_FIELD_GENE_SYMBOL] |  | [optional] [default to &#39;SORT_FIELD_UNSPECIFIED&#39;]
 **sort.schema.direction** | Enum [SORT_DIRECTION_UNSPECIFIED, SORT_DIRECTION_ASCENDING, SORT_DIRECTION_DESCENDING] |  | [optional] [default to &#39;SORT_DIRECTION_UNSPECIFIED&#39;]

### Return type

[**V1alpha1GeneMetadata**](v1alpha1GeneMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A successful response. |  -  |
| **0** | An unexpected error response. |  -  |

# **GeneMetadataByPost**
> V1alpha1GeneMetadata GeneMetadataByPost(body)

Get gene metadata

Get detailed gene metadata in a JSON output format.

### Example
```R
library(ncbi.datasets)

var.body <- v1alpha1GeneDatasetRequest$new(list("accessions_example"), list(123), list(GeneDatasetRequestFasta$new()), v1alpha1GeneDatasetRequestContentType$new(), GeneDatasetRequestSort$new(v1alpha1SortDirection$new(), GeneDatasetRequestSortField$new()), GeneDatasetRequestSymbolsForTaxon$new(list("symbols_example"), "taxon_example")) # V1alpha1GeneDatasetRequest | 

#Get gene metadata
api.instance <- GeneApi$new()
result <- api.instance$GeneMetadataByPost(var.body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1alpha1GeneDatasetRequest**](V1alpha1GeneDatasetRequest.md)|  | 

### Return type

[**V1alpha1GeneMetadata**](v1alpha1GeneMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A successful response. |  -  |
| **0** | An unexpected error response. |  -  |

# **GeneMetadataByTaxAndSymbol**
> V1alpha1GeneMetadata GeneMetadataByTaxAndSymbol(symbols, taxon, returned.content='COMPLETE', sort.schema.field='SORT_FIELD_UNSPECIFIED', sort.schema.direction='SORT_DIRECTION_UNSPECIFIED')

Get gene metadata by gene symbol.

Get detailed gene metadata by gene symbol in a JSON output format.

### Example
```R
library(ncbi.datasets)

var.symbols <- list("inner_example") # array[character] | 
var.taxon <- 'taxon_example' # character | 
var.returned.content <- 'COMPLETE' # character | 
var.sort.schema.field <- 'SORT_FIELD_UNSPECIFIED' # character | 
var.sort.schema.direction <- 'SORT_DIRECTION_UNSPECIFIED' # character | 

#Get gene metadata by gene symbol.
api.instance <- GeneApi$new()
result <- api.instance$GeneMetadataByTaxAndSymbol(var.symbols, var.taxon, returned.content=var.returned.content, sort.schema.field=var.sort.schema.field, sort.schema.direction=var.sort.schema.direction)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbols** | list( **character** )|  | 
 **taxon** | **character**|  | 
 **returned.content** | Enum [COMPLETE, IDS_ONLY] |  | [optional] [default to &#39;COMPLETE&#39;]
 **sort.schema.field** | Enum [SORT_FIELD_UNSPECIFIED, SORT_FIELD_GENE_ID, SORT_FIELD_GENE_TYPE, SORT_FIELD_GENE_SYMBOL] |  | [optional] [default to &#39;SORT_FIELD_UNSPECIFIED&#39;]
 **sort.schema.direction** | Enum [SORT_DIRECTION_UNSPECIFIED, SORT_DIRECTION_ASCENDING, SORT_DIRECTION_DESCENDING] |  | [optional] [default to &#39;SORT_DIRECTION_UNSPECIFIED&#39;]

### Return type

[**V1alpha1GeneMetadata**](v1alpha1GeneMetadata.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A successful response. |  -  |
| **0** | An unexpected error response. |  -  |

# **GeneTaxNameQuery**
> V1alpha1SciNameAndIds GeneTaxNameQuery(taxon.query)

Get a list of taxonomy names and IDs found in the gene dataset given a partial taxonomic name.

This endpoint retrieves a list of taxonomy names and IDs found in the gene dataset given a partial taxonomic name of any rank.

### Example
```R
library(ncbi.datasets)

var.taxon.query <- 'taxon.query_example' # character | NCBI Taxonomy ID or name (common or scientific) at any taxonomic rank

#Get a list of taxonomy names and IDs found in the gene dataset given a partial taxonomic name.
api.instance <- GeneApi$new()
result <- api.instance$GeneTaxNameQuery(var.taxon.query)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taxon.query** | **character**| NCBI Taxonomy ID or name (common or scientific) at any taxonomic rank | 

### Return type

[**V1alpha1SciNameAndIds**](v1alpha1SciNameAndIds.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A successful response. |  -  |
| **0** | An unexpected error response. |  -  |

# **GeneTaxTree**
> V1alpha1Organism GeneTaxTree(taxon)

Retrieve tax tree

### Example
```R
library(ncbi.datasets)

var.taxon <- 'taxon_example' # character | NCBI Taxonomy ID or name (common or scientific) at any taxonomic rank

#Retrieve tax tree
api.instance <- GeneApi$new()
result <- api.instance$GeneTaxTree(var.taxon)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taxon** | **character**| NCBI Taxonomy ID or name (common or scientific) at any taxonomic rank | 

### Return type

[**V1alpha1Organism**](v1alpha1Organism.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A successful response. |  -  |
| **0** | An unexpected error response. |  -  |

