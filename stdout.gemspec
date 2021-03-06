# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: stdout 0.0.3 ruby lib

Gem::Specification.new do |s|
  s.name = "stdout"
  s.version = "0.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["id774"]
  s.date = "2013-12-13"
  s.description = "Change stdout to array object"
  s.email = "idnanashi@gmail.com"
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    "Gemfile",
    "README.md",
    "Rakefile",
    "VERSION",
    "demo.rb",
    "demo2.rb",
    "doc/AUTHORS",
    "doc/COPYING",
    "doc/COPYING.LESSER",
    "doc/ChangeLog",
    "doc/LICENSE",
    "lib/stdout.rb",
    "lib/stdout/output.rb",
    "lib/stdout/version.rb",
    "script/.gitkeep",
    "script/build",
    "spec/lib/stdout/output_spec.rb",
    "spec/lib/stdout_spec.rb",
    "spec/spec_helper.rb",
    "stdout.gemspec",
    "vendor/.gitkeep"
  ]
  s.homepage = "http://github.com/id774/stdout"
  s.licenses = ["GPL"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.1.11"
  s.summary = "Stdout"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<cucumber>, [">= 0"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
    else
      s.add_dependency(%q<cucumber>, [">= 0"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
    end
  else
    s.add_dependency(%q<cucumber>, [">= 0"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
  end
end

