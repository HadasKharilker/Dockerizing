#define CROW_MAIN
#include "crow.h"
using namespace crow;

int main()
{
	SimpleApp app;

	CROW_ROUTE(app, "/")
		([]() {
		return "Hello, World!";
	});

	app.port(18080).multithreaded().run();
}