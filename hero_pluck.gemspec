Gem::Specification.new do |s|
    s.name        = 'hero_pluck'
    s.version     = '0.0.0'
    s.date        = '2015-11-21'
    s.summary     = "Hero Lab XML Parser"
    s.description = "Generates a json formated export of a Hero Lab xml file."
    s.authors     = ["Anthony Hatch"]
    s.email       = 'ahatch1490@gmail.com'
    s.add_runtime_dependency "nokogiri",["= 1.6.6.4"]
    s.add_development_dependency 'minitest', ['~> 5.8', '>= 5.8.3']
    s.add_development_dependency 'minitest-spec', ['~> 0.0.2.1']
    s.files       = ["lib/hero_pluck.rb","lib/hero_pluck/shadowrun.rb"]
    s.homepage    = 'http://rubygems.org/gems/hero_pluck'
    s.license       = 'MIT'
end
