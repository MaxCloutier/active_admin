module ActiveAdmin
  module Views
    class Header < Component

      def tag_name
        'header'
      end

      def build(namespace, menu)

        @namespace = namespace
        @menu = menu
        @utility_menu = @namespace.fetch_menu(:utility_navigation)

        build_site_title
        build_utility_navigation
      end


      def build_site_title
        insert_tag view_factory.site_title, @namespace
      end

      def build_utility_navigation
        insert_tag view_factory.utility_navigation, @utility_menu, :class => 'header-item tabs utility_nav'
      end

    end
  end
end
