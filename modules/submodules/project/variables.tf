/**
 * Copyright 2022 Google LLC
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

variable "billing_account_id" {
  description = "Billing account ID to attach to the project."
  type        = string
}

variable "create_project" {
  description = "Whether to create the project or not."
  type        = bool
  default     = true
}

variable "labels" {
  description = "Labels to attach to the project."
  type        = map(string)
  default     = {}
}

variable "parent" {
  description = "Parent where the project should be created.  Should be in the form folders/XYZ or organization/XYZ"
  type        = string
  default     = null
}

variable "project_id" {
  description = "Project ID to be assigned to the project."
  type        = string
  default     = null
}

variable "project_name" {
  description = "Name to be assigned to the project.  When create_project = false, this should match the existing Project ID."
  type        = string
  default     = null
}

variable "project_services" {
  description = "List of APIs to enable on the project."
  type        = set(string)
  default     = []
}