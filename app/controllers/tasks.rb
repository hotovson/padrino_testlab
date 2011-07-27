PadrinoTestlab.controllers :tasks do
  get :index, :map => "/" do
		@title = 'Stuff'
    @tasks = Task.all
    render 'tasks/index'
  end

  get :show, :with => :id do
		@title = 'Stuff'
    dataset = Task.filter(:id => params[:id])
		dataset.each { |d| @task = d }
    render 'tasks/show'
  end

  # get :sample, :map => "/sample/url", :provides => [:any, :js] do
  #   case content_type
  #     when :js then ...
  #     else ...
  # end

  # get :foo, :with => :id do
  #   "Maps to url '/foo/#{params[:id]}'"
  # end

  # get "/example" do
  #   "Hello world!"
  # end


end
