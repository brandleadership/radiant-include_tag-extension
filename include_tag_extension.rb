# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application_controller'

class IncludeTagExtension < Radiant::Extension
  version "1.0"
  description "Describe your extension here"
  url "http://yourwebsite.com/include_tag"
  
  # extension_config do |config|
  #   config.gem 'some-awesome-gem
  #   config.after_initialize do
  #     run_something
  #   end
  # end

  # See your config/routes.rb file in this extension to define custom routes
  
  def activate
    Page.send :include, IncludeTag
    # tab 'Content' do
    #   add_item "Include Tag", "/admin/include_tag", :after => "Pages"
    # end
  end
end
