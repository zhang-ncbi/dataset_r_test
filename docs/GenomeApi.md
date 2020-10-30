# GenomeApi

All URIs are relative to *https://api.ncbi.nlm.nih.gov/datasets/v1alpha*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AssemblyDescriptorsByAccessions**](GenomeApi.md#AssemblyDescriptorsByAccessions) | **GET** /genome/accession/{accessions} | Get genome metadata by accession
[**AssemblyDescriptorsByTaxon**](GenomeApi.md#AssemblyDescriptorsByTaxon) | **GET** /genome/taxon/{taxon} | Get genome metadata by taxonomic identifier
[**CheckAssemblyAvailability**](GenomeApi.md#CheckAssemblyAvailability) | **GET** /genome/accession/{accessions}/check | Check the validity of genome accessions
[**CheckAssemblyAvailabilityPost**](GenomeApi.md#CheckAssemblyAvailabilityPost) | **POST** /genome/check | Check the validity of many genome accessions in a single request
[**DownloadAssemblyPackage**](GenomeApi.md#DownloadAssemblyPackage) | **GET** /genome/accession/{accessions}/download | Get a genome dataset by accession
[**DownloadAssemblyPackagePost**](GenomeApi.md#DownloadAssemblyPackagePost) | **POST** /genome/download | Get a genome dataset by post
[**GenomeDownloadSummary**](GenomeApi.md#GenomeDownloadSummary) | **GET** /genome/accession/{accessions}/download_summary | Preview genome dataset download
[**GenomeDownloadSummaryByPost**](GenomeApi.md#GenomeDownloadSummaryByPost) | **POST** /genome/download_summary | Preview genome dataset download by POST
[**GenomeTaxNameQuery**](GenomeApi.md#GenomeTaxNameQuery) | **GET** /genome/taxon_suggest/{taxon_query} | Get a list of taxonomy names and IDs found in the assembly dataset given a partial taxonomic name.
[**GenomeTaxTree**](GenomeApi.md#GenomeTaxTree) | **GET** /genome/taxon/{taxon}/tree | Get a taxonomic subtree by taxonomic identifier


# **AssemblyDescriptorsByAccessions**
> V1alpha1AssemblyMetadata AssemblyDescriptorsByAccessions(accessions, limit=var.limit, filters.refseq.only=var.filters.refseq.only, returned.content='COMPLETE')

Get genome metadata by accession

Get detailed metadata for assembled genomes by accession in a JSON output format.

### Example
```R
library(ncbi.datasets)

var.accessions <- list("inner_example") # array[character] | 
var.limit <- 'limit_example' # character | Limit the number of returned results (\"all\", \"none\", otherwise an integer value).
var.filters.refseq.only <- 'filters.refseq.only_example' # character | If true, only return RefSeq (GCF_) assemblies.
var.returned.content <- 'COMPLETE' # character | 

#Get genome metadata by accession
api.instance <- GenomeApi$new()
result <- api.instance$AssemblyDescriptorsByAccessions(var.accessions, limit=var.limit, filters.refseq.only=var.filters.refseq.only, returned.content=var.returned.content)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessions** | list( **character** )|  | 
 **limit** | **character**| Limit the number of returned results (\&quot;all\&quot;, \&quot;none\&quot;, otherwise an integer value). | [optional] 
 **filters.refseq.only** | **character**| If true, only return RefSeq (GCF_) assemblies. | [optional] 
 **returned.content** | Enum [COMPLETE, ASSM_ACC] |  | [optional] [default to &#39;COMPLETE&#39;]

### Return type

[**V1alpha1AssemblyMetadata**](v1alpha1AssemblyMetadata.md)

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

# **AssemblyDescriptorsByTaxon**
> V1alpha1AssemblyMetadata AssemblyDescriptorsByTaxon(taxon, limit=var.limit, filters.refseq.only=var.filters.refseq.only, tax.exact.match=var.tax.exact.match, returned.content='COMPLETE')

Get genome metadata by taxonomic identifier

Get detailed metadata on all assembled genomes for a specified NCBI Taxonomy ID or name (common or scientific) at any taxonomic rank

### Example
```R
library(ncbi.datasets)

var.taxon <- 'taxon_example' # character | NCBI Taxonomy ID or name (common or scientific) at any taxonomic rank
var.limit <- 'limit_example' # character | Limit the number of returned results (\"all\", \"none\", otherwise an integer value).
var.filters.refseq.only <- 'filters.refseq.only_example' # character | If true, only return RefSeq (GCF_) assemblies.
var.tax.exact.match <- 'tax.exact.match_example' # character | If true, only return assemblies with the given NCBI Taxonomy ID, or name. Otherwise, assemblies from taxonomy subtree are included, too. Ignored for assembly_accession request.
var.returned.content <- 'COMPLETE' # character | 

#Get genome metadata by taxonomic identifier
api.instance <- GenomeApi$new()
result <- api.instance$AssemblyDescriptorsByTaxon(var.taxon, limit=var.limit, filters.refseq.only=var.filters.refseq.only, tax.exact.match=var.tax.exact.match, returned.content=var.returned.content)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taxon** | **character**| NCBI Taxonomy ID or name (common or scientific) at any taxonomic rank | 
 **limit** | **character**| Limit the number of returned results (\&quot;all\&quot;, \&quot;none\&quot;, otherwise an integer value). | [optional] 
 **filters.refseq.only** | **character**| If true, only return RefSeq (GCF_) assemblies. | [optional] 
 **tax.exact.match** | **character**| If true, only return assemblies with the given NCBI Taxonomy ID, or name. Otherwise, assemblies from taxonomy subtree are included, too. Ignored for assembly_accession request. | [optional] 
 **returned.content** | Enum [COMPLETE, ASSM_ACC] |  | [optional] [default to &#39;COMPLETE&#39;]

### Return type

[**V1alpha1AssemblyMetadata**](v1alpha1AssemblyMetadata.md)

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

# **CheckAssemblyAvailability**
> V1alpha1AssemblyDatasetAvailability CheckAssemblyAvailability(accessions, include.tsv=var.include.tsv)

Check the validity of genome accessions

The 'GET' version of check is limited by the size of the GET URL (2KB, which works out to about 140 genomic accessions).  The POST operation is provided to allow users to supply a larger number of accessions in a single request.

### Example
```R
library(ncbi.datasets)

var.accessions <- list("inner_example") # array[character] | NCBI genome assembly accessions
var.include.tsv <- 'include.tsv_example' # character | 

#Check the validity of genome accessions
api.instance <- GenomeApi$new()
result <- api.instance$CheckAssemblyAvailability(var.accessions, include.tsv=var.include.tsv)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessions** | list( **character** )| NCBI genome assembly accessions | 
 **include.tsv** | **character**|  | [optional] 

### Return type

[**V1alpha1AssemblyDatasetAvailability**](v1alpha1AssemblyDatasetAvailability.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A successful response. |  -  |

# **CheckAssemblyAvailabilityPost**
> V1alpha1AssemblyDatasetAvailability CheckAssemblyAvailabilityPost(body)

Check the validity of many genome accessions in a single request

The 'GET' version of check is limited by the size of the GET URL (2KB, which works out to about 140 genomic accessions).  The POST operation is provided to allow users to supply a larger number of accessions in a single request.

### Example
```R
library(ncbi.datasets)

var.body <- v1alpha1AssemblyDatasetRequest$new(list("accessions_example"), list("assembly_accessions_example"), list("chromosomes_example"), "exclude_sequence_example", AssemblyDatasetRequestResolution$new(), "include_annotation_example", list(v1alpha1AnnotationForAssemblyType$new()), "include_tsv_example") # V1alpha1AssemblyDatasetRequest | 

#Check the validity of many genome accessions in a single request
api.instance <- GenomeApi$new()
result <- api.instance$CheckAssemblyAvailabilityPost(var.body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1alpha1AssemblyDatasetRequest**](V1alpha1AssemblyDatasetRequest.md)|  | 

### Return type

[**V1alpha1AssemblyDatasetAvailability**](v1alpha1AssemblyDatasetAvailability.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A successful response. |  -  |

# **DownloadAssemblyPackage**
> data.frame DownloadAssemblyPackage(accessions, chromosomes=var.chromosomes, exclude.sequence=var.exclude.sequence, include.annotation.type=var.include.annotation.type, hydrated='FULLY_HYDRATED', filename='ncbi_dataset.zip')

Get a genome dataset by accession

Download a genome dataset including fasta sequence, annotation and a detailed data report by accession.

### Example
```R
library(ncbi.datasets)

var.accessions <- list("inner_example") # array[character] | NCBI genome assembly accessions
var.chromosomes <- list("inner_example") # array[character] | The default setting is all chromosome. Specify individual chromosome by string (1,2,MT or chr1,chr2.chrMT). Unplaced sequences are treated like their own chromosome ('Un'). The filter only applies to fasta sequence.
var.exclude.sequence <- 'exclude.sequence_example' # character | Set to true to omit the genomic sequence.
var.include.annotation.type <- list("include_annotation_type_example") # array[character] | Select additional types of annotation to include in the data package.  If unset, no annotation is provided.
var.hydrated <- 'FULLY_HYDRATED' # character | 
var.filename <- 'ncbi_dataset.zip' # character | Output file name.

#Get a genome dataset by accession
api.instance <- GenomeApi$new()
result <- api.instance$DownloadAssemblyPackage(var.accessions, chromosomes=var.chromosomes, exclude.sequence=var.exclude.sequence, include.annotation.type=var.include.annotation.type, hydrated=var.hydrated, filename=var.filename)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessions** | list( **character** )| NCBI genome assembly accessions | 
 **chromosomes** | list( **character** )| The default setting is all chromosome. Specify individual chromosome by string (1,2,MT or chr1,chr2.chrMT). Unplaced sequences are treated like their own chromosome (&#39;Un&#39;). The filter only applies to fasta sequence. | [optional] 
 **exclude.sequence** | **character**| Set to true to omit the genomic sequence. | [optional] 
 **include.annotation.type** | Enum [GENOME_GFF, GENOME_GBFF, RNA_FASTA, PROT_FASTA, GENOME_GTF] | Select additional types of annotation to include in the data package.  If unset, no annotation is provided. | [optional] 
 **hydrated** | Enum [FULLY_HYDRATED, DATA_REPORT_ONLY] |  | [optional] [default to &#39;FULLY_HYDRATED&#39;]
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
| **200** | Download selected genome assemblies and associated annotation data as a zip file. |  -  |

# **DownloadAssemblyPackagePost**
> data.frame DownloadAssemblyPackagePost(body, filename='ncbi_dataset.zip')

Get a genome dataset by post

The 'GET' version of download is limited by the size of the GET URL (2KB, which works out to about 140 genomic accessions).  The POST operation is provided to allow users to supply a larger number of accessions in a single request.

### Example
```R
library(ncbi.datasets)

var.body <- v1alpha1AssemblyDatasetRequest$new(list("accessions_example"), list("assembly_accessions_example"), list("chromosomes_example"), "exclude_sequence_example", AssemblyDatasetRequestResolution$new(), "include_annotation_example", list(v1alpha1AnnotationForAssemblyType$new()), "include_tsv_example") # V1alpha1AssemblyDatasetRequest | 
var.filename <- 'ncbi_dataset.zip' # character | Output file name.

#Get a genome dataset by post
api.instance <- GenomeApi$new()
result <- api.instance$DownloadAssemblyPackagePost(var.body, filename=var.filename)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1alpha1AssemblyDatasetRequest**](V1alpha1AssemblyDatasetRequest.md)|  | 
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
| **200** | Download selected genome assemblies and associated annotation data as a zip file. |  -  |

# **GenomeDownloadSummary**
> V1alpha1DownloadSummary GenomeDownloadSummary(accessions, chromosomes=var.chromosomes, exclude.sequence=var.exclude.sequence, include.annotation.type=var.include.annotation.type, hydrated='FULLY_HYDRATED', include.tsv=var.include.tsv)

Preview genome dataset download

Get a download summary by accession in a JSON output format.

### Example
```R
library(ncbi.datasets)

var.accessions <- list("inner_example") # array[character] | NCBI genome assembly accessions
var.chromosomes <- list("inner_example") # array[character] | The default setting is all chromosome. Specify individual chromosome by string (1,2,MT or chr1,chr2.chrMT). Unplaced sequences are treated like their own chromosome ('Un'). The filter only applies to fasta sequence.
var.exclude.sequence <- 'exclude.sequence_example' # character | Set to true to omit the genomic sequence.
var.include.annotation.type <- list("include_annotation_type_example") # array[character] | Select additional types of annotation to include in the data package.  If unset, no annotation is provided.
var.hydrated <- 'FULLY_HYDRATED' # character | 
var.include.tsv <- 'include.tsv_example' # character | 

#Preview genome dataset download
api.instance <- GenomeApi$new()
result <- api.instance$GenomeDownloadSummary(var.accessions, chromosomes=var.chromosomes, exclude.sequence=var.exclude.sequence, include.annotation.type=var.include.annotation.type, hydrated=var.hydrated, include.tsv=var.include.tsv)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessions** | list( **character** )| NCBI genome assembly accessions | 
 **chromosomes** | list( **character** )| The default setting is all chromosome. Specify individual chromosome by string (1,2,MT or chr1,chr2.chrMT). Unplaced sequences are treated like their own chromosome (&#39;Un&#39;). The filter only applies to fasta sequence. | [optional] 
 **exclude.sequence** | **character**| Set to true to omit the genomic sequence. | [optional] 
 **include.annotation.type** | Enum [GENOME_GFF, GENOME_GBFF, RNA_FASTA, PROT_FASTA, GENOME_GTF] | Select additional types of annotation to include in the data package.  If unset, no annotation is provided. | [optional] 
 **hydrated** | Enum [FULLY_HYDRATED, DATA_REPORT_ONLY] |  | [optional] [default to &#39;FULLY_HYDRATED&#39;]
 **include.tsv** | **character**|  | [optional] 

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

# **GenomeDownloadSummaryByPost**
> V1alpha1DownloadSummary GenomeDownloadSummaryByPost(body)

Preview genome dataset download by POST

The 'GET' version of download summary is limited by the size of the GET URL (2KB, which works out to about 140 genomic accessions).  The POST operation is provided to allow users to supply a larger number of accessions in a single request.

### Example
```R
library(ncbi.datasets)

var.body <- v1alpha1AssemblyDatasetRequest$new(list("accessions_example"), list("assembly_accessions_example"), list("chromosomes_example"), "exclude_sequence_example", AssemblyDatasetRequestResolution$new(), "include_annotation_example", list(v1alpha1AnnotationForAssemblyType$new()), "include_tsv_example") # V1alpha1AssemblyDatasetRequest | 

#Preview genome dataset download by POST
api.instance <- GenomeApi$new()
result <- api.instance$GenomeDownloadSummaryByPost(var.body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1alpha1AssemblyDatasetRequest**](V1alpha1AssemblyDatasetRequest.md)|  | 

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

# **GenomeTaxNameQuery**
> V1alpha1SciNameAndIds GenomeTaxNameQuery(taxon.query)

Get a list of taxonomy names and IDs found in the assembly dataset given a partial taxonomic name.

This endpoint retrieves a list of taxonomy names and IDs found in the assembly dataset given a partial taxonomic name of any rank.

### Example
```R
library(ncbi.datasets)

var.taxon.query <- 'taxon.query_example' # character | NCBI Taxonomy ID or name (common or scientific) at any taxonomic rank

#Get a list of taxonomy names and IDs found in the assembly dataset given a partial taxonomic name.
api.instance <- GenomeApi$new()
result <- api.instance$GenomeTaxNameQuery(var.taxon.query)
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

# **GenomeTaxTree**
> V1alpha1Organism GenomeTaxTree(taxon)

Get a taxonomic subtree by taxonomic identifier

Using a NCBI Taxonomy ID or name (common or scientific) at any rank, get a subtree filtered for species with assembled genomes

### Example
```R
library(ncbi.datasets)

var.taxon <- 'taxon_example' # character | NCBI Taxonomy ID or name (common or scientific) at any taxonomic rank

#Get a taxonomic subtree by taxonomic identifier
api.instance <- GenomeApi$new()
result <- api.instance$GenomeTaxTree(var.taxon)
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

