require 'roda'

class PegCarMin < Roda
  plugin :assets, css: ['index.css', 'header.css', 'banner.css', 'button.css', 'footer.css', 'condutor/index.css']

  plugin :render

  route do |r|
    r.assets

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
