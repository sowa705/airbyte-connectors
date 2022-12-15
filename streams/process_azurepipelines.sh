#!/bin/bash
cat apipeline.log | jq -c -R 'fromjson? | select(.type == "RECORD") | .record.stream = "mytestsource__azurepipeline__\(.record.stream)"' > apipeline_processed.log