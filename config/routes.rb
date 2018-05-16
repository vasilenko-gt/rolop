Rails.application.routes.draw do

  resources :events
  constraints(host: /^www\./i) do
    get '(*any)' => redirect { |params, request|
      URI.parse(request.url).tap { |uri| uri.host.sub!(/^www\./i, '') }.to_s
    }
  end

  root 'static#home'

  get 'valkomen',           to: 'static#valkomen'
  get 'valkomen_html',      to: 'static#valkomen_html'
  get 'bestallining',       to: 'static#bestallining'
  get 'bestallining_html',  to: 'static#bestallining_html'

end
