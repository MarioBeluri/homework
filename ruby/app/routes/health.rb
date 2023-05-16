class HealthRoutes < Sinatra::Base
    use AuthMiddleware

  get('/') do
    if request.env['AUTHED'] == true
    status 200
   'App working OK'
    else
      status 403
    end
  end
end
