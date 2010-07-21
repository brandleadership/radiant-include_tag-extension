module IncludeTag

  include Radiant::Taggable
  include Haml::Helpers

  desc "somewhat new tag"
  tag "include" do |tag|
    #RAILS_ROOT + '/app/views/layouts/application.html.haml'
    haml_concat RAILS_ROOT + '/app/views/layouts/' + tag.attr['file']
  end

end
