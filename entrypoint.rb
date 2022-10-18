#!/usr/bin/env ruby

require 'octokit'
require 'optparse'

options = {}
OptionParser.new do |opt|
  opt.on('--branch BRANCH') { |o| options[:branch] = o }
  opt.on('--repository REPOSITORY') { |o| options[:repository] = o }
  opt.on('--token TOKEN') { |o| options[:token] = o }
end.parse!

client = Octokit::Client.new(:access_token => options[:token])

response = client.commit(options[:repository], options[:branch])

head_sha = response[:sha]

File.open(ENV['GITHUB_OUTPUT'], 'a') { |f| f.puts "head-sha=#{head_sha}" }
