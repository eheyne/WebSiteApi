require 'sinatra/base'
#require 'sinatra/static_assets'
#require 'pp'
#require 'sinatra/partial'
require 'active_record'

# ActiveRecord::Base.establish_connection(
#     :adapter  => "mysql2",
#     :host     => "localhost",
#     :username => "eheyne",
#     :password => "",
#     :database => "cars"
# )

# class Corvettes < ActiveRecord::Base
# end

# ActiveRecord::Migration.create_table :corvettes do |t|
#     t.string :name
# end

class WebSiteApi < Sinatra::Base
#  register Sinatra::StaticAssets
#  register Sinatra::Partial

  enable :sessions

  set :static, true
  set :root, File.dirname(__FILE__)
  set :public_folder, File.join(File.dirname(__FILE__), '..', 'public')
  set :views, File.join(File.dirname(__FILE__), 'views')
  set :partial_template_engine, :erb

  # get '/' do
  #   erb 'index'.to_sym, :locals => {:corvettes => Corvettes.all }
  # end

  get '/' do
    "Hello World"
  end

  get '/courses' do
    '[{id: 1,sname: "ISP",lname: "Internet Systems Programming",number: "3460:307",description: "This course is an introduction to Web-based programming. Topics include HTML, XHTML, XML, CSS, JavaScript, PHP, Servlet, JSP, ASP.NET, MySQL, Ruby, Ruby on Rails, and AJAX.  The students will learn the basic concepts of WWW client-server communications and the skill to use the above tools to create Web applications.",syllabusUrl: "",},{id: 2,sname: "WP",lname: "Windows Programming",number: "3460:408/508",description: "This course will expose the students to the latest concepts and techniques in programming on the Windows platform. Will teach the students how to design and implement enterprise applications. Microsoft .Net and C# will be used as the tools to implement the programs.",syllabusUrl: "./assets/documents/WP 408-508 Syllabus.pdf"}]'
  end
    
  # get '/update/:id' do
  #   erb 'update'.to_sym, :locals => {:corvette => Corvettes.find(params[:id]) }
  # end

  # get '/delete/:id' do
  #   Corvettes.delete(params[:id]);
  #   redirect back 
  # end

  # post '/add' do
  #   puts params
  #   Corvettes.create(Body_Style: params['bodyType'], Miles: params['miles'], Year: params['year'], State: params['state'])
  #   redirect back
  # end

  # post '/update/:id' do
  #   puts params
  #   Corvettes.update(params[:id], {:Body_Style => params['bodyType'], :Miles => params['miles'], :Year => params['year'], :State => params['state']})
  #   redirect to('/')
  # end
end
