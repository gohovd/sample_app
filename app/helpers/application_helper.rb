module ApplicationHelper

    # Returns the full title on a per-page basis
    def full_title(page_title = '')                         # Method definition
        base_title = "Ruby on Rails Tutorial Sample App"    # Variable
        if page_title.empty?                                # Boolean test (conditional)
            base_title                                      # Implicit return
        else                                                
            page_title + " | " + base_title                 # String concatenation
        end
    end
end
