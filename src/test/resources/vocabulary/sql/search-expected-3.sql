select CONCEPT_ID, CONCEPT_NAME, ISNULL(STANDARD_CONCEPT,'N') STANDARD_CONCEPT, ISNULL(INVALID_REASON,'V') INVALID_REASON, CONCEPT_CODE, CONCEPT_CLASS_ID, DOMAIN_ID, VOCABULARY_ID, VALID_START_DATE, VALID_END_DATE
from omop_v5.concept
where 1=1 AND (LOWER(CONCEPT_NAME) LIKE ? or LOWER(CONCEPT_CODE) LIKE ? or CONCEPT_ID = CAST(? as int))
order by CONCEPT_NAME ASC
