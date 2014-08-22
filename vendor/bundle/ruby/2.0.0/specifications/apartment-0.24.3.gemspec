# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "apartment"
  s.version = "0.24.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ryan Brunner", "Brad Robertson"]
  s.date = "2014-03-05"
  s.description = "Apartment allows Rack applications to deal with database multitenancy through ActiveRecord"
  s.email = ["ryan@influitive.com", "brad@influitive.com"]
  s.homepage = "https://github.com/influitive/apartment"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.14"
  s.summary = "A Ruby gem for managing database multitenancy"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>, [">= 3.1.2"])
      s.add_runtime_dependency(%q<rack>, [">= 1.3.6"])
      s.add_development_dependency(%q<appraisal>, [">= 0"])
      s.add_development_dependency(%q<rake>, ["~> 0.9"])
      s.add_development_dependency(%q<rspec-rails>, ["~> 2.14"])
      s.add_development_dependency(%q<guard-rspec>, ["~> 4.2"])
      s.add_development_dependency(%q<capybara>, ["~> 1.0.0"])
      s.add_development_dependency(%q<mysql2>, ["~> 0.3.10"])
      s.add_development_dependency(%q<pg>, [">= 0.11.0"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
    else
      s.add_dependency(%q<activerecord>, [">= 3.1.2"])
      s.add_dependency(%q<rack>, [">= 1.3.6"])
      s.add_dependency(%q<appraisal>, [">= 0"])
      s.add_dependency(%q<rake>, ["~> 0.9"])
      s.add_dependency(%q<rspec-rails>, ["~> 2.14"])
      s.add_dependency(%q<guard-rspec>, ["~> 4.2"])
      s.add_dependency(%q<capybara>, ["~> 1.0.0"])
      s.add_dependency(%q<mysql2>, ["~> 0.3.10"])
      s.add_dependency(%q<pg>, [">= 0.11.0"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
    end
  else
    s.add_dependency(%q<activerecord>, [">= 3.1.2"])
    s.add_dependency(%q<rack>, [">= 1.3.6"])
    s.add_dependency(%q<appraisal>, [">= 0"])
    s.add_dependency(%q<rake>, ["~> 0.9"])
    s.add_dependency(%q<rspec-rails>, ["~> 2.14"])
    s.add_dependency(%q<guard-rspec>, ["~> 4.2"])
    s.add_dependency(%q<capybara>, ["~> 1.0.0"])
    s.add_dependency(%q<mysql2>, ["~> 0.3.10"])
    s.add_dependency(%q<pg>, [">= 0.11.0"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
  end
end
