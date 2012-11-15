#
# Cookbook Name:: haproxy
# Default:: default
#
# Copyright 2010, Opscode, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default['haproxy']['incoming_port']           = "80"
default['haproxy']['enable_admin']            = true
default['haproxy']['balance_algorithm']       = "roundrobin" 
default['haproxy']['x_forwarded_for']         = false
default['haproxy']['enable_ssl']              = false
default['haproxy']['ssl_incoming_port']       = "443"
default['haproxy']['member_max_connections']  = "100"

default['haproxy']['source']['enabled'] = false
default['haproxy']['source']['version_branch'] = '1.5'
default['haproxy']['source']['version'] = '1.5-dev11'
default['haproxy']['source']['user'] = 'root'
default['haproxy']['source']['install_prefix_root'] = '/usr/local'

default['haproxy']['backend_servers'] = [
    "hostname"        => "app0",
    "ipaddress"       => "0.0.0.0",
    "port"            => "8080",
    "proxy_weight"    => 1,
    "max_connections" => 100,
    "ssl_port"        => 443
]
