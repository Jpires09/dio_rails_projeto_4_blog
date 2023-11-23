module BlogHelper

    def trata_html(html)
        doc = Nokogiri::HTML(html)

        doc.search('script').each do |script_tag|
          if script_tag['src']&.include?('jquery') || script_tag['src']&.include?('popper') || script_tag['src']&.include?('bootstrap') 
            next
          end
          script_tag.remove
        end

        doc.inner_html
    end
end
