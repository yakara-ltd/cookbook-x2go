#
# Cookbook Name:: x2go
# Recipe:: apt_repo
#
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

apt_repository 'x2go' do
  uri 'http://packages.x2go.org/debian'
  distribution node['lsb']['codename']
  components ['main']
  key 'x2go.public.key'
end
