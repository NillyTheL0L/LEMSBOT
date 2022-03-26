# -*- encoding: utf-8 -*-
# stub: configatron 4.5.1 ruby lib

Gem::Specification.new do |s|
  s.name = "configatron".freeze
  s.version = "4.5.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Mark Bates".freeze]
  s.date = "2017-03-08"
  s.description = "A powerful Ruby configuration system.".freeze
  s.email = ["mark@markbates.com".freeze]
  s.homepage = "https://github.com/markbates/configatron".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.2.24".freeze
  s.summary = "A powerful Ruby configuration system.".freeze

  s.installed_by_version = "3.2.24" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    s.add_development_dependency(%q<mocha>.freeze, [">= 0"])
    s.add_development_dependency(%q<subprocess>.freeze, [">= 0"])
    s.add_development_dependency(%q<minitest>.freeze, [">= 5.2.3"])
  else
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<mocha>.freeze, [">= 0"])
    s.add_dependency(%q<subprocess>.freeze, [">= 0"])
    s.add_dependency(%q<minitest>.freeze, [">= 5.2.3"])
  end
end
