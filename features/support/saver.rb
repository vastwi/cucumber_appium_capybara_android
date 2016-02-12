module Capybara
  module Screenshot
    class Saver
      def save
        # The hack was to comment the below line as the current_path in case of android app returns nil
        # return if capybara.current_path.to_s.empty?
        save_html if @html_save
        save_screenshot
      end
    end
  end
end
