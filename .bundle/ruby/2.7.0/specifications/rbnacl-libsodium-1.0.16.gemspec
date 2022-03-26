# -*- encoding: utf-8 -*-
# stub: rbnacl-libsodium 1.0.16 ruby lib
# stub: ext/rbnacl/extconf.rb

Gem::Specification.new do |s|
  s.name = "rbnacl-libsodium".freeze
  s.version = "1.0.16"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Artiom Di".freeze, "Tony Arcieri".freeze]
  s.date = "2017-12-13"
  s.email = ["kron82@gmail.com".freeze, "bascule@gmail.com".freeze]
  s.extensions = ["ext/rbnacl/extconf.rb".freeze]
  s.files = ["ext/rbnacl/extconf.rb".freeze]
  s.homepage = "https://github.com/cryptosphere/rbnacl-libsodium".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.2.6".freeze)
  s.rubygems_version = "3.2.24".freeze
  s.summary = "rbnacl with bundled libsodium".freeze

  s.installed_by_version = "3.2.24" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<rbnacl>.freeze, [">= 3.0.1"])
    s.add_development_dependency(%q<bundler>.freeze, ["~> 1.5"])
    s.add_development_dependency(%q<rake>.freeze, [">= 10"])
    s.add_development_dependency(%q<rake-compiler>.freeze, ["~> 0.9.7"])
    s.add_development_dependency(%q<rake-compiler-dock>.freeze, ["~> 0.5.2"])
  else
    s.add_dependency(%q<rbnacl>.freeze, [">= 3.0.1"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.5"])
    s.add_dependency(%q<rake>.freeze, [">= 10"])
    s.add_dependency(%q<rake-compiler>.freeze, ["~> 0.9.7"])
    s.add_dependency(%q<rake-compiler-dock>.freeze, ["~> 0.5.2"])
  end
end
