require "libadwaita"
require "./windows/**"

module App
  VERSION = "0.1.0"

  Gio.register_resource("#{__DIR__}/resources/blueprints.gresource.xml", "#{__DIR__}/resources/ui")
  Gio.register_resource("#{__DIR__}/resources/icons.gresource.xml", "#{__DIR__}/resources/icons")

  app = Adw::Application.new("fr.tamdaz.myFirstGnomeApp", Gio::ApplicationFlags::DefaultFlags)

  app.activate_signal.connect do
    window = App::Window::MainWindow.new
    window.application = app
    window.present
  end

  exit(app.run(ARGV))
end
