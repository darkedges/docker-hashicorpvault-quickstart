# Docker Quickstart HashiCorp Vault

## Init

```console
docker-compose up dqs-terraform
```

## Access

1. Open <https://lopalhost:8200>
2. Get the Root Token

    ```console
    docker exec -it dqs-vault cat /vault/file/keys.json | jq .root_token -r
    ```

## Secrets

Secrets are generated in the `volumes/secrets` folder.

## Clean up

```console
docker-compose down
```
