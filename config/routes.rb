Rails.application.routes.draw do
  get '/students', to: 'students#index'
  # 'returns students whose first or last name matches the query'
  # get '/students?name=kirby'

  get '/students/grades', to: 'students#grades'
  get '/students/highest-grade', to: 'students#highest_grade'
  get '/students/:id', to: 'students#show'
end
