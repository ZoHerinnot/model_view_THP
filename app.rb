require 'bundler'
#require 'pry'
Bundler.require

$:.unshift File.expand_path("./../lib",__FILE__)

require 'router'
require 'controller'
require 'gossip'

Router.new.perform