# terraform-demo
This repo I use for different Terraform demos


# Terraform CLI commands
```
terraform init
```

The -migrate-state option will attempt to copy existing state to the new backend, and depending on what changed, may result in interactive prompts to confirm migration of workspace states. The -force-copy option suppresses these prompts and answers "yes" to the migration questions. Enabling -force-copy also automatically enables the -migrate-state option.

The -reconfigure option disregards any existing configuration, preventing migration of any existing state.

To skip backend configuration, use -backend=false. Note that some other init steps require an initialized backend, so it is recommended to use this flag only when the working directory was already previously initialized for a particular backend.

Plan :
```
terraform plan
```
OR
```
terraform plan -var-file="override.tfvars"
```
OR
```
terraform plan -var app_service_name="tf-demo-nginx"
```

Plan into file
```
terraform plan -out=plan.tfvars
```

Update infra state
```
terraform plan -refresh-only
```

To destroy infra
```
terraform plan -destroy
```


# Graph

```
terraform graph | dot -Tsvg > graph.svg
```