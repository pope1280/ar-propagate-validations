helpers do 

  def input_errors?
    if @errors
      :_errors_form
    else
      :_standard_form
    end
  end

  
end