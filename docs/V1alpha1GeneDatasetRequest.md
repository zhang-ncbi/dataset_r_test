# ncbi.datasets::V1alpha1GeneDatasetRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accessions** | **array[character]** | RNA or Protein accessions. | [optional] 
**gene_ids** | **array[integer]** |  | [optional] 
**include_annotation_type** | [**array[GeneDatasetRequestFasta]**](GeneDatasetRequestFasta.md) | Select additional types of annotation to include in the data package.  If unset, no annotation is provided. | [optional] 
**returned_content** | [**V1alpha1GeneDatasetRequestContentType**](v1alpha1GeneDatasetRequestContentType.md) |  | [optional] 
**sort_schema** | [**GeneDatasetRequestSort**](GeneDatasetRequestSort.md) |  | [optional] 
**symbols_for_taxon** | [**GeneDatasetRequestSymbolsForTaxon**](GeneDatasetRequestSymbolsForTaxon.md) |  | [optional] 


