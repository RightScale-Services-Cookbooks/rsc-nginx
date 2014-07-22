#
# Cookbook Name:: rsc-nginx
# Recipe:: default
#
# Copyright (C) 2014 RightScale, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#


node.override['ohai']['plugin_path']="/opt/rightscale/sandbox/lib/ruby/gems/1.8/gems/ohai-0.6.12.1/lib/ohai/plugins"

include_recipe 'nginx'
