# VirusApi

All URIs are relative to *https://api.ncbi.nlm.nih.gov/datasets/v1alpha*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Sars2ProteinDownload**](VirusApi.md#Sars2ProteinDownload) | **GET** /virus/taxon/sars2/protein/{proteins}/download | Download SARS-CoV-2 protein and CDS datasets by protein name
[**Sars2ProteinSummary**](VirusApi.md#Sars2ProteinSummary) | **GET** /virus/taxon/sars2/protein/{proteins} | Summary of SARS-CoV-2 protein and CDS datasets by protein name
[**Sars2ProteinTable**](VirusApi.md#Sars2ProteinTable) | **GET** /virus/taxon/sars2/protein/{proteins}/table | Get SARS-CoV-2 protein metadata in a tabular format.
[**VirusGenomeDownload**](VirusApi.md#VirusGenomeDownload) | **GET** /virus/taxon/{taxon}/genome/download | Download Coronavirus genome datasets by taxon
[**VirusGenomeSummary**](VirusApi.md#VirusGenomeSummary) | **GET** /virus/taxon/{taxon}/genome | Get summary data for Coronaviridae genomes by taxon
[**VirusGenomeTable**](VirusApi.md#VirusGenomeTable) | **GET** /virus/taxon/{taxon}/genome/table | Get viral genomic metadata in a tabular format.


# **Sars2ProteinDownload**
> data.frame Sars2ProteinDownload(proteins, refseq.only=var.refseq.only, annotated.only=var.annotated.only, released.since=var.released.since, host=var.host, geo.location=var.geo.location, complete.only=var.complete.only, include.annotation.type=var.include.annotation.type, filename='ncbi_dataset.zip')

Download SARS-CoV-2 protein and CDS datasets by protein name

Download a SARS-CoV-2 protein datasets

### Example
```R
library(ncbi.datasets)

var.proteins <- list("inner_example") # array[character] | Which proteins to retrieve in the data package
var.refseq.only <- 'refseq.only_example' # character | If true, limit results to RefSeq genomes.
var.annotated.only <- 'annotated.only_example' # character | If true, limit results to annotated genomes.
var.released.since <- 'released.since_example' # character | If set, limit results to viral genomes that have been released after a specified date and time. April 1, 2020 midnight UTC should be formatted as follows: 2020-04-01T00:00:00.000Z.
var.host <- 'host_example' # character | If set, limit results to genomes extracted from this host (Taxonomy ID or name) or its taxonomic descendants.
var.geo.location <- 'geo.location_example' # character | Assemblies from this location (country and state, or continent).
var.complete.only <- 'complete.only_example' # character | only include complete genomes.
var.include.annotation.type <- list("include_annotation_type_example") # array[character] | Select additional types of annotation to include in the data package.  If unset, no annotation is provided.
var.filename <- 'ncbi_dataset.zip' # character | Output file name.

#Download SARS-CoV-2 protein and CDS datasets by protein name
api.instance <- VirusApi$new()
result <- api.instance$Sars2ProteinDownload(var.proteins, refseq.only=var.refseq.only, annotated.only=var.annotated.only, released.since=var.released.since, host=var.host, geo.location=var.geo.location, complete.only=var.complete.only, include.annotation.type=var.include.annotation.type, filename=var.filename)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **proteins** | list( **character** )| Which proteins to retrieve in the data package | 
 **refseq.only** | **character**| If true, limit results to RefSeq genomes. | [optional] 
 **annotated.only** | **character**| If true, limit results to annotated genomes. | [optional] 
 **released.since** | **character**| If set, limit results to viral genomes that have been released after a specified date and time. April 1, 2020 midnight UTC should be formatted as follows: 2020-04-01T00:00:00.000Z. | [optional] 
 **host** | **character**| If set, limit results to genomes extracted from this host (Taxonomy ID or name) or its taxonomic descendants. | [optional] 
 **geo.location** | **character**| Assemblies from this location (country and state, or continent). | [optional] 
 **complete.only** | **character**| only include complete genomes. | [optional] 
 **include.annotation.type** | Enum [CDS_FASTA, PROT_FASTA, GENOME_GPFF, PDB_FILES] | Select additional types of annotation to include in the data package.  If unset, no annotation is provided. | [optional] 
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
| **200** | Download selected SARS-CoV-2 proteins and associated annotation data as a zip file. |  -  |

# **Sars2ProteinSummary**
> V1alpha1DownloadSummary Sars2ProteinSummary(proteins, refseq.only=var.refseq.only, annotated.only=var.annotated.only, released.since=var.released.since, host=var.host, geo.location=var.geo.location, complete.only=var.complete.only, include.annotation.type=var.include.annotation.type, format='tsv')

Summary of SARS-CoV-2 protein and CDS datasets by protein name

Download a summary of available SARS-CoV-2 protein datasets

### Example
```R
library(ncbi.datasets)

var.proteins <- list("inner_example") # array[character] | Which proteins to retrieve in the data package
var.refseq.only <- 'refseq.only_example' # character | If true, limit results to RefSeq genomes.
var.annotated.only <- 'annotated.only_example' # character | If true, limit results to annotated genomes.
var.released.since <- 'released.since_example' # character | If set, limit results to viral genomes that have been released after a specified date and time. April 1, 2020 midnight UTC should be formatted as follows: 2020-04-01T00:00:00.000Z.
var.host <- 'host_example' # character | If set, limit results to genomes extracted from this host (Taxonomy ID or name) or its taxonomic descendants.
var.geo.location <- 'geo.location_example' # character | Assemblies from this location (country and state, or continent).
var.complete.only <- 'complete.only_example' # character | only include complete genomes.
var.include.annotation.type <- list("include_annotation_type_example") # array[character] | Select additional types of annotation to include in the data package.  If unset, no annotation is provided.
var.format <- 'tsv' # character | Choose download format.

#Summary of SARS-CoV-2 protein and CDS datasets by protein name
api.instance <- VirusApi$new()
result <- api.instance$Sars2ProteinSummary(var.proteins, refseq.only=var.refseq.only, annotated.only=var.annotated.only, released.since=var.released.since, host=var.host, geo.location=var.geo.location, complete.only=var.complete.only, include.annotation.type=var.include.annotation.type, format=var.format)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **proteins** | list( **character** )| Which proteins to retrieve in the data package | 
 **refseq.only** | **character**| If true, limit results to RefSeq genomes. | [optional] 
 **annotated.only** | **character**| If true, limit results to annotated genomes. | [optional] 
 **released.since** | **character**| If set, limit results to viral genomes that have been released after a specified date and time. April 1, 2020 midnight UTC should be formatted as follows: 2020-04-01T00:00:00.000Z. | [optional] 
 **host** | **character**| If set, limit results to genomes extracted from this host (Taxonomy ID or name) or its taxonomic descendants. | [optional] 
 **geo.location** | **character**| Assemblies from this location (country and state, or continent). | [optional] 
 **complete.only** | **character**| only include complete genomes. | [optional] 
 **include.annotation.type** | Enum [CDS_FASTA, PROT_FASTA, GENOME_GPFF, PDB_FILES] | Select additional types of annotation to include in the data package.  If unset, no annotation is provided. | [optional] 
 **format** | Enum [tsv, csv, jsonl] | Choose download format. | [optional] [default to &#39;tsv&#39;]

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

# **Sars2ProteinTable**
> StreamResultOfV1alpha1TabularOutput Sars2ProteinTable(proteins, refseq.only=var.refseq.only, annotated.only=var.annotated.only, released.since=var.released.since, host=var.host, geo.location=var.geo.location, complete.only=var.complete.only, table.fields=var.table.fields, format='tsv', filename='ncbi_dataset.zip')

Get SARS-CoV-2 protein metadata in a tabular format.

Get protein metadata in tabular format for SARS-CoV-2 genomes.

### Example
```R
library(ncbi.datasets)

var.proteins <- list("inner_example") # array[character] | Which proteins to retrieve in the data package
var.refseq.only <- 'refseq.only_example' # character | If true, limit results to RefSeq genomes.
var.annotated.only <- 'annotated.only_example' # character | If true, limit results to annotated genomes.
var.released.since <- 'released.since_example' # character | If set, limit results to viral genomes that have been released after a specified date and time. April 1, 2020 midnight UTC should be formatted as follows: 2020-04-01T00:00:00.000Z.
var.host <- 'host_example' # character | If set, limit results to genomes extracted from this host (Taxonomy ID or name) or its taxonomic descendants.
var.geo.location <- 'geo.location_example' # character | Assemblies from this location (country and state, or continent).
var.complete.only <- 'complete.only_example' # character | only include complete genomes.
var.table.fields <- list("table_fields_example") # array[character] | Specify which fields to include in the tabular report.
var.format <- 'tsv' # character | Choose download format.
var.filename <- 'ncbi_dataset.zip' # character | Output file name.

#Get SARS-CoV-2 protein metadata in a tabular format.
api.instance <- VirusApi$new()
result <- api.instance$Sars2ProteinTable(var.proteins, refseq.only=var.refseq.only, annotated.only=var.annotated.only, released.since=var.released.since, host=var.host, geo.location=var.geo.location, complete.only=var.complete.only, table.fields=var.table.fields, format=var.format, filename=var.filename)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **proteins** | list( **character** )| Which proteins to retrieve in the data package | 
 **refseq.only** | **character**| If true, limit results to RefSeq genomes. | [optional] 
 **annotated.only** | **character**| If true, limit results to annotated genomes. | [optional] 
 **released.since** | **character**| If set, limit results to viral genomes that have been released after a specified date and time. April 1, 2020 midnight UTC should be formatted as follows: 2020-04-01T00:00:00.000Z. | [optional] 
 **host** | **character**| If set, limit results to genomes extracted from this host (Taxonomy ID or name) or its taxonomic descendants. | [optional] 
 **geo.location** | **character**| Assemblies from this location (country and state, or continent). | [optional] 
 **complete.only** | **character**| only include complete genomes. | [optional] 
 **table.fields** | Enum [nucleotide_accession, species_tax_id, species_name, genus, family, nucleotide_length, isolate_name, sequence_type, nuc_completeness, geo_location, us_state, host_name, host_tax_id, collection_date, bioproject, biosample, polyprotein_name, protein_name, protein_accession, protein_synonym, cds_span] | Specify which fields to include in the tabular report. | [optional] 
 **format** | Enum [tsv, csv, jsonl] | Choose download format. | [optional] [default to &#39;tsv&#39;]
 **filename** | **character**| Output file name. | [optional] [default to &#39;ncbi_dataset.zip&#39;]

### Return type

[**StreamResultOfV1alpha1TabularOutput**](Stream_result_of_v1alpha1TabularOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/tsv

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A successful response.(streaming responses) |  -  |
| **0** | An unexpected error response. |  -  |

# **VirusGenomeDownload**
> data.frame VirusGenomeDownload(taxon, refseq.only=var.refseq.only, annotated.only=var.annotated.only, released.since=var.released.since, host=var.host, geo.location=var.geo.location, complete.only=var.complete.only, exclude.sequence=var.exclude.sequence, include.annotation.type=var.include.annotation.type, filename='ncbi_dataset.zip')

Download Coronavirus genome datasets by taxon

Download a Coronavirus genome datasets by taxon

### Example
```R
library(ncbi.datasets)

var.taxon <- 'taxon_example' # character | NCBI Taxonomy ID or name (common or scientific) at any taxonomic rank
var.refseq.only <- 'refseq.only_example' # character | If true, limit results to RefSeq genomes.
var.annotated.only <- 'annotated.only_example' # character | If true, limit results to annotated genomes.
var.released.since <- 'released.since_example' # character | If set, limit results to viral genomes that have been released after a specified date (and optionally, time). April 1, 2020 midnight UTC should be formatted as follows: 2020-04-01T00:00:00.000Z.
var.host <- 'host_example' # character | If set, limit results to genomes extracted from this host (Taxonomy ID or name) or its taxonomic descendants.
var.geo.location <- 'geo.location_example' # character | Assemblies from this location (country and state, or continent).
var.complete.only <- 'complete.only_example' # character | only include complete genomes.
var.exclude.sequence <- 'exclude.sequence_example' # character | Set to true to omit the genomic sequence.
var.include.annotation.type <- list("include_annotation_type_example") # array[character] | Select additional types of annotation to include in the data package.  If unset, no annotation is provided.
var.filename <- 'ncbi_dataset.zip' # character | Output file name.

#Download Coronavirus genome datasets by taxon
api.instance <- VirusApi$new()
result <- api.instance$VirusGenomeDownload(var.taxon, refseq.only=var.refseq.only, annotated.only=var.annotated.only, released.since=var.released.since, host=var.host, geo.location=var.geo.location, complete.only=var.complete.only, exclude.sequence=var.exclude.sequence, include.annotation.type=var.include.annotation.type, filename=var.filename)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taxon** | **character**| NCBI Taxonomy ID or name (common or scientific) at any taxonomic rank | 
 **refseq.only** | **character**| If true, limit results to RefSeq genomes. | [optional] 
 **annotated.only** | **character**| If true, limit results to annotated genomes. | [optional] 
 **released.since** | **character**| If set, limit results to viral genomes that have been released after a specified date (and optionally, time). April 1, 2020 midnight UTC should be formatted as follows: 2020-04-01T00:00:00.000Z. | [optional] 
 **host** | **character**| If set, limit results to genomes extracted from this host (Taxonomy ID or name) or its taxonomic descendants. | [optional] 
 **geo.location** | **character**| Assemblies from this location (country and state, or continent). | [optional] 
 **complete.only** | **character**| only include complete genomes. | [optional] 
 **exclude.sequence** | **character**| Set to true to omit the genomic sequence. | [optional] 
 **include.annotation.type** | Enum [DEFAULT, CDS_FASTA, PROT_FASTA, GENOME_GBFF, GENOME_GPFF, PDB_FILES] | Select additional types of annotation to include in the data package.  If unset, no annotation is provided. | [optional] 
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
| **200** | Download selected viral genome and associated annotation data as a zip file. |  -  |

# **VirusGenomeSummary**
> V1alpha1DownloadSummary VirusGenomeSummary(taxon, refseq.only=var.refseq.only, annotated.only=var.annotated.only, released.since=var.released.since, host=var.host, geo.location=var.geo.location, complete.only=var.complete.only, exclude.sequence=var.exclude.sequence, include.annotation.type=var.include.annotation.type)

Get summary data for Coronaviridae genomes by taxon

Get summary data and download by command line instructions for Coronaviridae genomes by taxon.

### Example
```R
library(ncbi.datasets)

var.taxon <- 'taxon_example' # character | NCBI Taxonomy ID or name (common or scientific) at any taxonomic rank
var.refseq.only <- 'refseq.only_example' # character | If true, limit results to RefSeq genomes.
var.annotated.only <- 'annotated.only_example' # character | If true, limit results to annotated genomes.
var.released.since <- 'released.since_example' # character | If set, limit results to viral genomes that have been released after a specified date (and optionally, time). April 1, 2020 midnight UTC should be formatted as follows: 2020-04-01T00:00:00.000Z.
var.host <- 'host_example' # character | If set, limit results to genomes extracted from this host (Taxonomy ID or name) or its taxonomic descendants.
var.geo.location <- 'geo.location_example' # character | Assemblies from this location (country and state, or continent).
var.complete.only <- 'complete.only_example' # character | only include complete genomes.
var.exclude.sequence <- 'exclude.sequence_example' # character | Set to true to omit the genomic sequence.
var.include.annotation.type <- list("include_annotation_type_example") # array[character] | Select additional types of annotation to include in the data package.  If unset, no annotation is provided.

#Get summary data for Coronaviridae genomes by taxon
api.instance <- VirusApi$new()
result <- api.instance$VirusGenomeSummary(var.taxon, refseq.only=var.refseq.only, annotated.only=var.annotated.only, released.since=var.released.since, host=var.host, geo.location=var.geo.location, complete.only=var.complete.only, exclude.sequence=var.exclude.sequence, include.annotation.type=var.include.annotation.type)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taxon** | **character**| NCBI Taxonomy ID or name (common or scientific) at any taxonomic rank | 
 **refseq.only** | **character**| If true, limit results to RefSeq genomes. | [optional] 
 **annotated.only** | **character**| If true, limit results to annotated genomes. | [optional] 
 **released.since** | **character**| If set, limit results to viral genomes that have been released after a specified date (and optionally, time). April 1, 2020 midnight UTC should be formatted as follows: 2020-04-01T00:00:00.000Z. | [optional] 
 **host** | **character**| If set, limit results to genomes extracted from this host (Taxonomy ID or name) or its taxonomic descendants. | [optional] 
 **geo.location** | **character**| Assemblies from this location (country and state, or continent). | [optional] 
 **complete.only** | **character**| only include complete genomes. | [optional] 
 **exclude.sequence** | **character**| Set to true to omit the genomic sequence. | [optional] 
 **include.annotation.type** | Enum [DEFAULT, CDS_FASTA, PROT_FASTA, GENOME_GBFF, GENOME_GPFF, PDB_FILES] | Select additional types of annotation to include in the data package.  If unset, no annotation is provided. | [optional] 

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

# **VirusGenomeTable**
> StreamResultOfV1alpha1TabularOutput VirusGenomeTable(taxon, refseq.only=var.refseq.only, annotated.only=var.annotated.only, released.since=var.released.since, host=var.host, geo.location=var.geo.location, complete.only=var.complete.only, table.fields=var.table.fields, format='tsv', filename='ncbi_dataset.zip')

Get viral genomic metadata in a tabular format.

Get viral genomic metadata in tabular format for Coronaviridae genomes by taxon.

### Example
```R
library(ncbi.datasets)

var.taxon <- 'taxon_example' # character | NCBI Taxonomy ID or name (common or scientific) at any taxonomic rank
var.refseq.only <- 'refseq.only_example' # character | If true, limit results to RefSeq genomes.
var.annotated.only <- 'annotated.only_example' # character | If true, limit results to annotated genomes.
var.released.since <- 'released.since_example' # character | If set, limit results to viral genomes that have been released after a specified date (and optionally, time). April 1, 2020 midnight UTC should be formatted as follows: 2020-04-01T00:00:00.000Z.
var.host <- 'host_example' # character | If set, limit results to genomes extracted from this host (Taxonomy ID or name) or its taxonomic descendants.
var.geo.location <- 'geo.location_example' # character | Assemblies from this location (country and state, or continent).
var.complete.only <- 'complete.only_example' # character | only include complete genomes.
var.table.fields <- list("table_fields_example") # array[character] | Specify which fields to include in the tabular report.
var.format <- 'tsv' # character | Choose download format.
var.filename <- 'ncbi_dataset.zip' # character | Output file name.

#Get viral genomic metadata in a tabular format.
api.instance <- VirusApi$new()
result <- api.instance$VirusGenomeTable(var.taxon, refseq.only=var.refseq.only, annotated.only=var.annotated.only, released.since=var.released.since, host=var.host, geo.location=var.geo.location, complete.only=var.complete.only, table.fields=var.table.fields, format=var.format, filename=var.filename)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taxon** | **character**| NCBI Taxonomy ID or name (common or scientific) at any taxonomic rank | 
 **refseq.only** | **character**| If true, limit results to RefSeq genomes. | [optional] 
 **annotated.only** | **character**| If true, limit results to annotated genomes. | [optional] 
 **released.since** | **character**| If set, limit results to viral genomes that have been released after a specified date (and optionally, time). April 1, 2020 midnight UTC should be formatted as follows: 2020-04-01T00:00:00.000Z. | [optional] 
 **host** | **character**| If set, limit results to genomes extracted from this host (Taxonomy ID or name) or its taxonomic descendants. | [optional] 
 **geo.location** | **character**| Assemblies from this location (country and state, or continent). | [optional] 
 **complete.only** | **character**| only include complete genomes. | [optional] 
 **table.fields** | Enum [nucleotide_accession, species_tax_id, species_name, genus, family, nucleotide_length, isolate_name, sequence_type, nuc_completeness, geo_location, us_state, host_name, host_tax_id, collection_date, bioproject, biosample, polyprotein_name, protein_name, protein_accession, protein_synonym, cds_span] | Specify which fields to include in the tabular report. | [optional] 
 **format** | Enum [tsv, csv, jsonl] | Choose download format. | [optional] [default to &#39;tsv&#39;]
 **filename** | **character**| Output file name. | [optional] [default to &#39;ncbi_dataset.zip&#39;]

### Return type

[**StreamResultOfV1alpha1TabularOutput**](Stream_result_of_v1alpha1TabularOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/tsv

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A successful response.(streaming responses) |  -  |
| **0** | An unexpected error response. |  -  |

