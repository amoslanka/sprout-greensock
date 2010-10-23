require 'sprout'
require 'greensock/version'

module Greensock
end

Sprout::Specification.new do |s|
   s.name    = Greensock::NAME
   s.version = Greensock::VERSION
   
   s.add_remote_file_target do |t|
     t.platform = :universal
     t.archive_type = :zip
     t.url = "http://www.greensock.com/as/greensock-as3.zip"
     t.md5          = "5571e64359f7d77fa272dd9ed32dfb38"

     # All 
     t.add_library :swc, "greensock-as3/greensock.swc"
     t.add_library :src, "greensock-as3"
     t.add_library :docs, "greensock-as3/docs"
     t.add_library :demos, "greensock-as3/demo_swfs"
     t.add_library :all, "greensock-as3"
   end
   
end
