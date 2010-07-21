module IncludeTag

  include Radiant::Taggable

  desc "somewhat new tag"
  tag "include" do |tag|
    #RAILS_ROOT + '/app/views/layouts/application.html.haml'
    layout = File.new(RAILS_ROOT + '/app/views/layouts/' + tag.attr['file'])
    engine = Haml::Engine.new(layout.read)
    engine.render
  end

end
