class Api::InvPatsController < ApiController
  
  def index
    query_params = params.except(:id, :format, :controller, :action, :key)
    @invpats = {} if query_params.empty?
    #@invpats = Invpat.where(query_values_to_upcase(query_params)) unless query_params.empty?
    @invpats = Invpat.where(query_params).order("lower DESC") unless query_params.empty?
  end
  
end
