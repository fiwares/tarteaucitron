class TarteaucitronGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  def download_tarteaucitron
    files = %w(
      lang/tarteaucitron.ru.js
      lang/tarteaucitron.es.js
      lang/tarteaucitron.pt.js
      lang/tarteaucitron.pl.js
      lang/tarteaucitron.de.js
      lang/tarteaucitron.fr.js
      lang/tarteaucitron.it.js
      lang/tarteaucitron.en.js
      README.md
      css/tarteaucitron.css
      tarteaucitron.js
      tarteaucitron.services.js
      LICENSE
      advertising.js
    )

    url = "https://raw.githubusercontent.com/AmauriC/tarteaucitron.js/master/"

    files.each do |file|
      get url + file, "public/tarteaucitron/#{file}"
    end

  end

  def download_geocat
    get "https://git.io/GeoLite2-Country.mmdb", "db/GeoLite2-Country.mmdb"
  end

end
