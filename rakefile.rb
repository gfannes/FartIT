require(File.join(ENV['gubg'], 'shared'))
include GUBG

task :define do
    publish("fart.exe", dst: 'bin') do |fn|
        case os
        when :windows then fn
        else fn.gsub(/\.exe$/, "") end
    end
end
