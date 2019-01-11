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

output "project_id" {
  description = "The project ID of the created project."
  value       = "${module.project-factory.project_id}"
}

output "project_number" {
  description = "The project number of the created project."
  value       = "${module.project-factory.project_number}"
}

output "domain" {
  description = "The organization's domain"
  value       = "${module.project-factory.domain}"
}

output "group_email" {
  description = "The email of the created GSuite group with group_name"
  value       = "${module.project-factory.group_email}"
}

output "group_role" {
  description = "A forwarded copy of the `group_role` variable for access by InSpec"
  value       = "${var.group_role}"
}

output "service_account_email" {
  description = "The email of the default service account"
  value       = "${module.project-factory.service_account_email}"
}

output "gsuite_admin_account" {
  description = "A forwarded copy of the `group_role` variable for access by InSpec"
  value       = "${var.gsuite_admin_account}"
}

output "region" {
  description = "A forwarded copy of the `region` variable for access by InSpec"
  value       = "${var.region}"
}

output "credentials_path" {
  description = "A forwarded copy of the `credentials_path` variable for access by InSpec"
  value       = "${var.credentials_path}"
}

output "sa_role" {
  description = "A forwarded copy of the `sa_role` variable for access by InSpec"
  value       = "${var.sa_role}"
}

output "shared_vpc" {
  description = "A forwarded copy of the `shared_vpc` variable for access by InSpec"
  value       = "${var.shared_vpc}"
}

output "usage_bucket_name" {
  description = "A forwarded copy of the `usage_bucket_name` variable for access by InSpec"
  value       = "${var.usage_bucket_name}"
}

output "usage_bucket_prefix" {
  description = "A forwarded copy of the `usage_bucket_prefix` variable for access by InSpec"
  value       = "${var.usage_bucket_prefix}"
}
