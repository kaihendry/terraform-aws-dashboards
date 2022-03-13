# How to setup Cloudwatch dashboards with Terraform

https://youtu.be/eOyZhtRuUgA

1. Create a "scratch" dashboard
2. Export the dashboard's JSON to your Terraform project (like this one)
3. Convert the JSON's environment strings and account_ids to variables exported in `dashboard.tf`
4. `terraform apply` and test the dashboard looks the same as your "scratch" one
