module ApplicationHelper

    def public_static_path(path, options = nil)
      root_path(options) + path
    end
    
end
