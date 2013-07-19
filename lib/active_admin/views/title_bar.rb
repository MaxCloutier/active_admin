module ActiveAdmin
  module Views
    class TitleBar < Component

      def build(title)
        @title = title
        build_titlebar_left
      end

      private

      def build_titlebar_left
          build_breadcrumb
          build_title_tag
      end

      def build_breadcrumb(separator = "/")
        links = if active_admin_config && active_admin_config.breadcrumb.present?
          instance_exec(controller, &active_admin_config.breadcrumb)
        else
          breadcrumb_links
        end
        return unless links.present? && links.is_a?(::Array)
        span :class => "breadcrumb" do
          links.each do |link|
            text_node link
            span(separator, :class => "breadcrumb_sep")
          end
        end
      end

      def build_title_tag
        h2(@title, :id => 'page_title')
      end

    end
  end
end
