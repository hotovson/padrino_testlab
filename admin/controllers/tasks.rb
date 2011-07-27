Admin.controllers :tasks do

  get :index do
    @tasks = Task.all
    render 'tasks/index'
  end

  get :new do
    @task = Task.new
    render 'tasks/new'
  end

  post :create do
    @task = Task.new(params[:task])
    if (@task.save rescue false)
      flash[:notice] = 'Task was successfully created.'
      redirect url(:tasks, :edit, :id => @task.id)
    else
      render 'tasks/new'
    end
  end

  get :edit, :with => :id do
    @task = Task[params[:id]]
    render 'tasks/edit'
  end

  put :update, :with => :id do
    @task = Task[params[:id]]
    if @task.modified! && @task.update(params[:task])
      flash[:notice] = 'Task was successfully updated.'
      redirect url(:tasks, :edit, :id => @task.id)
    else
      render 'tasks/edit'
    end
  end

  delete :destroy, :with => :id do
    task = Task[params[:id]]
    if task.destroy
      flash[:notice] = 'Task was successfully destroyed.'
    else
      flash[:error] = 'Impossible destroy Task!'
    end
    redirect url(:tasks, :index)
  end
end