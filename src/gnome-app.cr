require "libadwaita"

# TODO: Write documentation for `Gnome::App`
module Gnome::App
  VERSION = "0.1.0"
end

@[Gtk::UiTemplate(file: "src/ui/test.ui")]
class MainWindow < Adw::ApplicationWindow
  include Gtk::WidgetTemplate
end

app = Adw::Application.new("fr.tamdaz.myFirstGnomeApp", Gio::ApplicationFlags::None)

app.activate_signal.connect do
  window = MainWindow.new
  window.application = app
  window.present
end

exit(app.run(ARGV))
