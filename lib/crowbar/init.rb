#
# Copyright 2016, SUSE Linux GmbH
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

ENV["CURRENT_GEMFILE"] ||= File.expand_path("../../../Gemfile", __FILE__)

require "uri"
require "net/http"
require "open3"

if File.exist? ENV["CURRENT_GEMFILE"]
  require "bundler"
  Bundler.require(:default, :development)
else
  gem "chef", version: "~> 10.32.2"
  require "chef"

  gem "puma", version: ">= 2.11.3"
  require "puma"

  gem "json", version: ">= 1.4.4 <= 1.8.1"
  require "json"

  gem "sinatra", version: ">= 1.4.6"
  require "sinatra/base"

  gem "sinatra-contrib", version: ">= 1.4.7"
  require "sinatra/json"

  gem "pg", version: "~> 0.17.1"
  require "pg"
end

module Crowbar
  #
  # Application to initialize Crowbar
  #
  module Init
    autoload :Application,
      File.expand_path("../init/application", __FILE__)

    autoload :Helpers,
      File.expand_path("../init/helpers", __FILE__)

    autoload :Version,
      File.expand_path("../init/version", __FILE__)
  end
end
