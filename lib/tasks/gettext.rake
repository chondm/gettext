desc "Update pot/po files."
task :updatepo do
  require 'gettext_rails/tools'  #HERE!
  GetText.update_pofiles("gettext", Dir.glob("{app,lib,bin}/**/*.{rb,erb,rjs}"), "gettext 1.0.0")
end

desc "Create mo-files"
task :makemo do
  require 'gettext_rails/tools'  #HERE!
  GetText.create_mofiles
end
