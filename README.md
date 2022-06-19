# Home Infra

Repo containing configuration, scripts and stacks for all self-hosted software on my home server.

## Environment configuration

Run:
```
cp sample.env .env
```

Fill out all relevant fields with values to configure the system.

## Usage:

### Deploying compose stacks

To deploy all services listed out in the `/compose` folder which are considered core or media related.

```sh
ansible-playbook deploy/compose_deployment/playbook.yaml
```