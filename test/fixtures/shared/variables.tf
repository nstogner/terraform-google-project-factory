/**
 * Copyright 2018 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

variable "credentials_path" {
  description = "Path to a Service Account credentials file with permissions documented in the readme"
}

variable "org_id" {
  description = "The organization ID where test projects will be created."
}

variable "folder_id" {
  description = "The ID of a folder to host this project"
  default     = ""
}

variable "domain" {
  description = "The domain name"
}

variable "usage_bucket_name" {
  description = "Name of a GCS bucket to store GCE usage reports in (optional)"
  default     = ""
}

variable "usage_bucket_prefix" {
  description = "Prefix in the GCS bucket to store GCE usage reports in (optional)"
  default     = ""
}

variable "billing_account" {
  description = "The ID of the billing account to associate this project with"
}

variable "group_name" {
  description = "A group to control the project by being assigned group_role (defaults to project editor)"
  default     = ""
}

variable "create_group" {
  description = "Whether to create the group or not"
  default     = "false"
}

variable "group_role" {
  description = "The role to give the controlling group (group_name) over the project (defaults to project editor)"
  default     = "roles/viewer"
}

variable "shared_vpc" {
  description = <<EOD
The Shared VPC host project. An additional network and subnet will be provisioned within
this project. The provided project must already be configured as a shared VPC host.

Example:

```
org_id=$(gcloud organizations list --format='get(name)')
gcloud compute shared-vpc organizations list-host-projects $org_id
```
EOD

  default = ""
}

variable "sa_role" {
  description = "A role to give the default Service Account for the project (defaults to none)"
  default     = "roles/editor"
}

variable "sa_group" {
  description = "A GSuite group to place the default Service Account for the project in"
  default     = ""
}

variable "region" {
  description = "The region where the `full` test fixture will deploy the Google App Engine instance"
  default     = "us-east4"
}

variable "gsuite_admin_account" {
  description = "The G Suite admin account to impersonate when managing G Suite groups and group membership"
}
