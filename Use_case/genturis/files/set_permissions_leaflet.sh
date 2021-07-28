curl -u admin -X POST 'https://genturis-registry.eu/api/permissions/entity-sys_FileMeta/aaaac6r6ahffv6qwh2yrdsqaae' \
-H 'Content-Type: application/json' \
--data-raw '{
    "permissions": [
        {
            "permission": "READ",
            "role": "ANONYMOUS"
        }
    ]
}'
