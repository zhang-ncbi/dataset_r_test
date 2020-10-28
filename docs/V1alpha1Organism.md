# ncbi.datasets::V1alpha1Organism

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**assembly_count** | **character** | The number of assemblies at this node, and all children. | [optional] 
**assembly_counts** | [**OrganismCounts**](OrganismCounts.md) |  | [optional] 
**blast_node** | **character** |  | [optional] 
**breed** | **character** |  | [optional] 
**children** | [**array[V1alpha1Organism]**](v1alpha1Organism.md) | List of all children tax nodes. | [optional] 
**common_name** | **character** |  | [optional] 
**counts** | [**array[OrganismCountByType]**](OrganismCountByType.md) |  | [optional] 
**cultivar** | **character** |  | [optional] 
**ecotype** | **character** |  | [optional] 
**icon** | **character** |  | [optional] 
**isolate** | **character** |  | [optional] 
**key** | **character** |  | [optional] 
**max_ord** | **integer** |  | [optional] 
**merged** | [**array[V1alpha1Organism]**](v1alpha1Organism.md) | List of all merged tax nodes for the pruned taxonomic tree. | [optional] 
**merged_tax_ids** | **array[character]** | List of merged (now deprecated) Taxonomy IDs for the current Organism. | [optional] 
**min_ord** | **integer** |  | [optional] 
**parent_tax_id** | **character** |  | [optional] 
**rank** | [**OrganismRankType**](OrganismRankType.md) |  | [optional] 
**sci_name** | **character** |  | [optional] 
**search_text** | **array[character]** |  | [optional] 
**sex** | **character** |  | [optional] 
**strain** | **character** |  | [optional] 
**tax_id** | **character** |  | [optional] 
**title** | **character** |  | [optional] 


