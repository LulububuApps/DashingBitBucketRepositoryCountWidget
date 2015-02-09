#!/usr/bin/env ruby
# Thanks to https://github.com/vongrippen/bitbucket
# gem install bitbucket_rest_api

gem 'bitbucket_rest_api'

require 'date'
require 'net/http'
require 'bitbucket_rest_api'
require 'json'

# This job will count all your bitbucket projects

# Config
bitbucket_repo_username = ""
bitbucket_username = ""
bitbucket_password = ""

# Script
bitbucket = BitBucket.new :basic_auth => "#{bitbucket_username}:#{bitbucket_password}"

# Function
def getRepositoryCount (bitbucket, username)
	return bitbucket.repos.list.length
end

#getRepositoryCount(bitbucket, bitbucket_repo_username)

SCHEDULER.every '5m', :first_in => 0 do |job|
	count = getRepositoryCount(bitbucket, bitbucket_repo_username)

	send_event('bitbucket_repository_count', current: count)
end