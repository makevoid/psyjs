class Psyjs < Sinatra::Base

  get "/" do
    haml :index
  end

  get "/test_ada" do
    haml :test_ada
  end

  get '/test_mmse' do
    haml :test_mmse
  end

  get "/matrici_di_raven" do
    haml :matrici_di_raven
  end

  # risposte

  post "/test_ada" do
    haml :risposte
  end

  post "/matrici_di_raven" do
    haml :matrici_di_raven_success
  end

  post '/test_mmse' do
    haml :test_mmse_success
  end

end