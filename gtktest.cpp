#include <cstdio>
#include <gtk/gtk.h>

int main(int argc, char *argv[])
{
	GtkWidget *window;

	/* Initialize GTK+ and Parse the options */
	gtk_init(&argc, &argv);
	/* Make window */
	window = gtk_window_new(GTK_WINDOW_TOPLEVEL);
	/* Set the size of the window */
	gtk_widget_set_size_request(window, 300, 200);
	/* Display the window */
	gtk_widget_show(window);
	/* Main loop */
	gtk_main();

	return 0;
}
