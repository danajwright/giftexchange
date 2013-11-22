require 'open-uri'
require 'json'
namespace :member do
  desc "Import users into member table"
  task :import => :environment do
    # //import json file
    # loop through json file with create commands
    # file = File.open("README.rdoc").read
    # puts file

    jsonstuff = JSON.parse(members.json)

    result.each do |doc|
      puts doc["first_name"] #reference properties like this
      puts doc # this is the result in object form

      # jsonstuff.each....
        # create statement for each json item
      end
    end
end