# -*- encoding: utf-8 -*-
# stub: dad_jokes 0.1.2 ruby lib

Gem::Specification.new do |s|
  s.name = "dad_jokes".freeze
  s.version = "0.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Aswin Sanakan".freeze]
  s.bindir = "exe".freeze
  s.date = "2017-11-02"
  s.description = "Gem to generate random popular Dad Jokes. Features include: Generating jokes, Search for jokes, Save a random joke as image (as .png), etc".freeze
  s.email = ["aswinsanakan@gmail.com".freeze]
  s.homepage = "https://github.com/aswinsanakan/dad_jokes".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.2.24".freeze
  s.summary = "Gem to generate random popular Dad Jokes.".freeze

  s.installed_by_version = "3.2.24" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<bundler>.freeze, ["~> 1.14"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_development_dependency(%q<minitest>.freeze, ["~> 5.0"])
    s.add_runtime_dependency(%q<json>.freeze, ["~> 1.8"])
    s.add_runtime_dependency(%q<faraday>.freeze, ["~> 0.13.1"])
    s.add_runtime_dependency(%q<faraday_middleware>.freeze, ["~> 0.12.2"])
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.14"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<minitest>.freeze, ["~> 5.0"])
    s.add_dependency(%q<json>.freeze, ["~> 1.8"])
    s.add_dependency(%q<faraday>.freeze, ["~> 0.13.1"])
    s.add_dependency(%q<faraday_middleware>.freeze, ["~> 0.12.2"])
  end
end
