#!/bin/bash
cat arepo.log | jq -c -R 'fromjson? | select(.type == "RECORD") | .record.stream = "mytestsource__azure-repos__\(.record.stream)"' > arepo_processed.log