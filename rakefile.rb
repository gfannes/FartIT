require(File.join(ENV['gubg'], 'shared'))
include GUBG

task :define do
    require('gubg/build/Executable')
    exe = Build::Executable.new('fart')
    exe.add_include_path('Fart')
    exe.set_cache_dir('.cache')
    exe.add_sources(FileList.new('Fart/*.c*'))
    exe.add_sources(FileList.new('Fart/*.h'))
    exe.build
    publish(exe.exe_filename, dst: 'bin')
end
