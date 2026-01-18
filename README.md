# Terraform Workspaces

This repository demonstrates how to use **Terraform workspaces** to manage multiple environments (such as `dev` and `prod`) using different variable files.

---

## Prerequisites

* Terraform installed (v1.x recommended)
* Basic knowledge of Terraform CLI

---

## Workspace Commands

List all available workspaces:

```bash
terraform workspace list
```

Show the currently selected workspace:

```bash
terraform workspace show
```

Create new workspaces:

```bash
terraform workspace new dev
terraform workspace new prod
```

Select a workspace:

```bash
terraform workspace select dev
```

---

## Planning and Applying Infrastructure

### Dev Environment

```bash
terraform plan  --var-file=dev.tfvars
terraform apply --var-file=dev.tfvars
```

### Prod Environment

```bash
terraform plan  --var-file=prod.tfvars
terraform apply --var-file=prod.tfvars
```

Each workspace can share the same Terraform code while using different variable values.

---

## Variable Files

### `dev.tfvars`

```hcl
region = "some-region"
zone   = "some-zone"
```

You can create a similar `prod.tfvars` file with production-specific values.

---

## Best Practices

* Use the **same Terraform codebase** for all environments
* Separate environment-specific values using `.tfvars` files
* Always verify the active workspace before running `apply`
* Consider using a **remote backend** for state management in team environments

---

## Notes

Terraform workspaces help reduce code duplication and make it easier to manage multiple environments safely.
