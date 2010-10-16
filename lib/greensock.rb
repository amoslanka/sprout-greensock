require 'sprout'

module Greensock

  NAME = "greensock"
  VERSION = "0.1.0.pre"
  
end

Sprout::Specification.new do |s|
   s.name    = Greensock::NAME
   s.version = Greensock::VERSION
   
   s.add_remote_file_target do |t|
     # Apply the windows-specific configuration:
     t.platform = :universal
     # Apply the shared platform configuration:
     # Remote Archive:
     t.archive_type = :zip
     t.url = "http://www.greensock.com/as/greensock-as3.zip"
     t.md5          = "48ce7343e8d004c3bc9e335dc0c2f190"
     t.add_library :swc, "greensock.swc"
   end
   
end
