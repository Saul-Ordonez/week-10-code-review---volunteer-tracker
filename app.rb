require('sinatra')
require('sinatra/reloader')
require('./lib/volunteer')
require('./lib/project')
require('pry')
require("pg")

also_reload('lib/**/*.rb')

DB = PG.connect({:dbname => "volunteer_tracker"})

get ('/') do
  @projects = Project.all
  @volunteers = Volunteer.all
  erb(:home)
end

get ('/home') do
  @projects = Project.all
  @volunteers = Volunteer.all
  erb(:home)
end

get('/project/new') do
  erb(:new_project)
end

post ('/home') do
  if params[:title] && params[:name]
    name = params[:name]
    project_id = params[:title]
    volunteer = Volunteer.new({:name => name, :project_id => project_id ,:id => nil})
    volunteer.save
    @projects = Project.all
    @volunteers = Volunteer.all
    erb(:home)
  elsif params[:title]
    title = params[:title]
    project = Project.new({:title => title, :id => nil})
    project.save
    @projects = Project.all
    @volunteers = Volunteer.all
    erb(:home)
  else
    @projects = Project.all
    @volunteers = Volunteer.all
    erb(:home)
  end
end

get '/volunteer/new' do
  @projects = Project.all
  erb(:new_volunteer)
end

get("/destroy") do
  @project = Project.clear
  @volunteer = Volunteer.clear
  redirect to('/home')
end
