module ActiveAdmin
  module Views
    class NavMenu < Component

      def tag_name
        'nav'
      end

      def build(namespace, menu)

        @namespace = namespace
        @menu = menu

        build_global_navigation
        
      end

      def build_global_navigation
        insert_tag view_factory.global_navigation, @menu, :class => 'header-item tabs'
      end

    end
  end
end