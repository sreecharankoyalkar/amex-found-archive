/**
 * Copyright 2020 Google LLC
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

variable project_id {}
variable name {}
variable instance_type {}


variable "boot_disk" {
  type = object({
    image   = string
    type    = string
    size_gb = number
  })
  default = {
    image   = "projects/debian-cloud/global/images/family/debian-10"
    type    = "pd-ssd"
    size_gb = 10
  }
}


variable "nic" {
  type = object({
    network    = string
    subnetwork = string
  })
}

variable startup_script {}
variable zone {}
