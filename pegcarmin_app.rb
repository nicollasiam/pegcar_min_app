require 'roda'

class PegCarMin < Roda
  plugin :render

  route do |r|
    r.root do
      view('index')
    end

    r.get 'saiba-mais/condutor' do
      view('saiba-mais/condutor')
    end

    r.get 'saiba-mais/proprietario' do
      view('saiba-mais/proprietario')
    end
  end
end
