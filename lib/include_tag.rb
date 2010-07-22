module IncludeTag

  include Radiant::Taggable

  desc "somewhat new tag"
  tag "include" do |tag|
    context = PageContext.new(self)
    layout = File.new(RAILS_ROOT + '/app/views/layouts/' + tag.attr['file'])
    engine = Haml::Engine.new(layout.read)
    parser = Radius::Parser.new(context, :tag_prefix => 'r')
    parser.parse(engine.render)
  end

end
