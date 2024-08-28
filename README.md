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

Validate

```console
openssl verify -CAfile volumes/secrets/dqs_idam_root.crt -untrusted volumes/secrets/dqs_idam_intermediate.crt volumes/secrets/test/tls.crt 
volumes/secrets/test/tls.crt: OK
```

## Clean up

```console
docker-compose down

```
