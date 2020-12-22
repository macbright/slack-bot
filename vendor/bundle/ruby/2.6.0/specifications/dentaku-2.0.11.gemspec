# -*- encoding: utf-8 -*-
# stub: dentaku 2.0.11 ruby lib

Gem::Specification.new do |s|
  s.name = "dentaku".freeze
  s.version = "2.0.11"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Solomon White".freeze]
  s.date = "2017-05-08"
  s.description = "    Dentaku is a parser and evaluator for mathematical formulas\n".freeze
  s.email = ["rubysolo@gmail.com".freeze]
  s.homepage = "http://github.com/rubysolo/dentaku".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.4".freeze
  s.summary = "A formula language parser and evaluator".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_development_dependency(%q<pry>.freeze, [">= 0"])
  else
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
  end
end
