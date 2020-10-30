# ncbi.datasets::V1alpha1AssemblyDatasetRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accessions** | **array[character]** |  | [optional] 
**assembly_accessions** | **array[character]** |  | [optional] 
**chromosomes** | **array[character]** | The default setting is all chromosome. Specify individual chromosome by string (1,2,MT or chr1,chr2.chrMT). Unplaced sequences are treated like their own chromosome (&#39;Un&#39;). The filter only applies to fasta sequence. | [optional] 
**exclude_sequence** | **character** | Set to true to omit the genomic sequence. | [optional] 
**hydrated** | [**AssemblyDatasetRequestResolution**](AssemblyDatasetRequestResolution.md) |  | [optional] 
**include_annotation** | **character** |  | [optional] 
**include_annotation_type** | [**array[V1alpha1AnnotationForAssemblyType]**](v1alpha1AnnotationForAssemblyType.md) | Select additional types of annotation to include in the data package.  If unset, no annotation is provided. | [optional] 
**include_tsv** | **character** |  | [optional] 


