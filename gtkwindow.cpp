#include <iostream>
#include <gtkmm.h>

class SampleWindow : public Gtk::Window
{
public:
	SampleWindow(int width, int height);
	virtual ~SampleWindow() = default;
};

SampleWindow::SampleWindow(int width, int height)
{
	set_title("Title");
	set_default_size(width, height);
}

int main(int argc, char *argv[])
{
	auto app = Gtk::Application::create(argc, argv, "gtkmm sample");
	SampleWindow sample_window(320, 240);
	return app->run(sample_window);
}
