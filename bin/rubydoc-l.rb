#!/usr/bin/env ruby

module_name = ARGV[0]

$:.each do |path|
    Dir.glob("#{path}/**/*").each do |name|
        if /^#{path}\/#{module_name}\.(so|rb)$/ =~ name then
            puts "#{path}/#{module_name}.#{$1}" 
            break
        end
    end
end
