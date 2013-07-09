module ActiveAdmin
  module Views
    class Footer < Component

      def tag_name
        "footer"
      end

      def build
        super :class => "footer"
        ix_footer
        powered_by_message
      end

      private

      def powered_by_message
        para I18n.t('active_admin.powered_by',
          :active_admin => link_to("Active Admin", "http://www.activeadmin.info"),
          :version => ActiveAdmin::VERSION).html_safe
      end

      def ix_footer
        a :href => "http://www.ixmedia.com/", :class => 'logo-ix ir' do
          "iXmédia"
        end
      end

    end
  end
end
