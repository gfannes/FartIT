require(File.join(ENV['gubg'], 'shared'))
require("gubg/build/Cooker")
include GUBG

task :prepare

task :run do
    Build::Cooker.new().generate(:ninja).ninja()
    publish("fart.exe", dst: 'bin') do |fn|
        case os
        when :windows then fn
        else fn.gsub(/\.exe$/, "") end
    end
end
