#!/usr/bin/env ruby
#
ENV['RAILS_ENV'] ||= 'development'

require File.join(File.dirname(__FILE__), '..', 'config', 'environment')
require 'net/imap'
require 'net/http'

#config = YAML.load(File.read(File.join(RAILS_ROOT,'config', 'mail.yml')))
