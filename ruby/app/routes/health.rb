class HealthRoutes < Sinatra::Base
    
  get('/') do
    if request.env['HTTP_AUTHED'] == true
    status 200
    'App working OK'
    else
      status 403
    end
  end
end
