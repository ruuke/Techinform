require_relative 'profcomp'
require_relative 'professional'
require_relative 'developer'
require_relative 'engineer'

@ruby = Profcomp.new('ruby')
@html = Profcomp.new('html')
@css = Profcomp.new('css')
@go = Profcomp.new('go')
@ml = Profcomp.new('ml')
@database = Profcomp.new('database')
@communicate = Profcomp.new('communicate')
@erlang = Profcomp.new('erlang')
@linux = Profcomp.new('linux')
@git = Profcomp.new('git')

@dev1 = Developer.new('Ivan')
@dev2 = Developer.new('Oleg')
@dev3 = Developer.new('Dan')

@eng1 = Engineer.new('John')
@eng2 = Engineer.new('Stan')


