#
# Copyright 2016, SUSE LINUX GmbH
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default[:postgresql][:config][:rails] = "/opt/dell/crowbar_framework/config/database.yml"
default[:postgresql][:config][:pg_hba] = "/var/lib/pgsql/data/pg_hba.conf"
default[:postgresql][:config][:postgresql] = "/var/lib/pgsql/data/postgresql.conf"
default[:postgresql][:config][:client_auth_method] = "trust"
default[:postgresql][:config][:host_auth_method] = "trust"
default[:postgresql][:config][:log_destination] = "syslog"
default[:postgresql][:remote] = false
default[:postgresql][:host] = "localhost"
default[:postgresql][:port] = "5432"
default[:postgresql][:database] = "crowbar_production"
default[:postgresql][:username] = "crowbar"
default[:postgresql][:password] = "crowbar"
