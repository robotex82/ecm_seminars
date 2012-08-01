module ECM
  module Seminars
    class Engine < ::Rails::Engine
      # active admin
      initializer :ecm_courses_engine do
        ::ActiveAdmin.setup do |active_admin_config|
          active_admin_config.load_paths += Dir[File.dirname(__FILE__) + '/../../../app/admin']
        end
      end if defined?(::ActiveAdmin)
    end
  end  
end
