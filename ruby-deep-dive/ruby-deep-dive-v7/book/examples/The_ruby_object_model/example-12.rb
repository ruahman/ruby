
modules = Module.nesting + (Module.nesting.first || Object).ancestors
modules += Object.ancestors if Module.nesting.first.class == Module
