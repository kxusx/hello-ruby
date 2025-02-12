module ApplicationHelper
    def toggle_direction(sort_column)
      # Logic to determine direction based on current sorting session
      if session[:sort] == sort_column && session[:direction] == "asc"
        "desc"
      else
        "asc"
      end
    end

   
  def direction_symbol(sort_column)
    if session[:sort] == sort_column
      session[:direction] == "asc" ? "↑" : "↓"
    else
      ""
    end
  end


end
  