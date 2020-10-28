# ncbi.datasets::V1alpha1AssemblyDatasetDescriptor

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**annotation_metadata** | [**V1alpha1AnnotationForAssembly**](v1alpha1AnnotationForAssembly.md) |  | [optional] 
**assembly_accession** | **character** |  | [optional] 
**assembly_category** | **character** | Category of assembly, like reference. | [optional] 
**assembly_level** | **character** |  | [optional] 
**chromosomes** | **array[character]** | Which chromosomes are included in this dataset. NB: Mitochondria is encoded as &#39;MT&#39;. | [optional] 
**contig_n50** | **integer** |  | [optional] 
**display_name** | **character** | The name of the Assembly dataset to be displayed in a user interface. | [optional] 
**estimated_size** | **character** |  | [optional] 
**org** | [**V1alpha1Organism**](v1alpha1Organism.md) |  | [optional] 
**seq_length** | **character** |  | [optional] 
**submission_date** | **character** |  | [optional] 


