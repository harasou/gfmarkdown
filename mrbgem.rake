MRuby::Gem::Specification.new('gfmarkdown') do |spec|
  spec.license = 'MIT'
  spec.author  = 'MRuby Developer'
  spec.summary = 'gfmarkdown'
  spec.bins    = ['gfmarkdown']

  spec.add_dependency 'mruby-print', :core => 'mruby-print'
  spec.add_dependency 'mruby-mtest', :mgem => 'mruby-mtest'
end
