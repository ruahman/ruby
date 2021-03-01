Gem::Specification.new do |s|
    s.authors = ["diego"]
    s.name = %q{toolbox}
    s.version = "0.0.5"
    s.date = %q{2021-01-31}
    s.summary = %q{this is my toolbox gem}
    s.files = [
        "bin/toolbox",
        "lib/toolbox.rb",
        "lib/init.rb",
        "lib/nodejs.rb",
        "lib/python.rb",
        "lib/dotnet.rb",
        "lib/tools.config.rb"
    ]
    s.require_paths = ["lib"]
    s.license   = 'Nonstandard' 
    s.homepage  = 'http://rubygems.org/gems/toolbox'
    s.executables = ['toolbox']
end
