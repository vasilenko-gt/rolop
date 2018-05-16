Rails.application.routes.draw do

  resources :events
  constraints(host: /^www\./i) do
    get '(*any)' => redirect { |params, request|
      URI.parse(request.url).tap { |uri| uri.host.sub!(/^www\./i, '') }.to_s
    }
  end

  root 'static#home'

  get 'welcome_visa', to: 'static#welcome_visa'
  get 'order_code',   to: 'static#order_code'

end