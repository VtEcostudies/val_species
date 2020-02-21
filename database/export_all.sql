--NOTE: pg just needs permissions to write to the specified folder. chmod 777 \dir\subdir.
copy (select
	"taxonId",
	"taxonId",
	"scientificName",
	"scientificNameAuthorship",
	"taxonRank",
	"taxonomicStatus",
	"acceptedNameUsageId",
	"acceptedNameUsage",
	"parentNameUsageId",
	"nomenclaturalCode",
	"specificEpithet",
	"infraspecificEpithet",
	"taxonRemarks",
	"vernacularName",
	"datasetName",
	"datasetId",
	"kingdom",
	"phylum",
	"class",
	"order",
	"family",
	"genus",
	"species",
    "bibliographicCitation",
    "references",
    "establishmentMeans",
    "institutionCode",
    "collectionCode"
	from val_species)
to 'C:\Users\jloomis\Documents\VCE\VAL_NameIndex\repo\database\export\val_species.csv' delimiter ',' csv header;

copy (select
"taxonId",
"taxonId",
"scientificName",
"vernacularName",
"lifeStage",
"sex",
"language",
"countryCode",
"source"
from val_vernacular)
to 'C:\Users\jloomis\Documents\VCE\VAL_NameIndex\repo\database\export\val_vernacular.csv' delimiter ',' csv header;

copy (select
"taxonId",
"taxonId",
"scientificName",
"SGCN",
"stateRank",
"stateList",
"globalRank",
"federalList"
from val_conservation_status)
to 'C:\Users\jloomis\Documents\VCE\VAL_NameIndex\repo\database\export\val_conservation_status.csv' delimiter ',' csv header;