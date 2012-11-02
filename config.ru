# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)
run Baobab::Application

Encoding.default_internal = 'utf-8'
Encoding.default_external = 'utf-8'
