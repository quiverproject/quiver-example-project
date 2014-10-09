#include <QApplication>
#include <QDir>

#include "Quiver.h"

int main(int argc, char *argv[]) {
        QApplication app(argc, argv);

        QDir::setCurrent(QCoreApplication::applicationDirPath());
#ifdef Q_OS_MAC
        QDir::setCurrent("../Resources");
        //FIXME remove for deployment
        QDir::setCurrent("../../../../QuiverExample");
        //
#endif

        Quiver quiver;
        //FIXME
        quiver.addWatchPath(QDir::currentPath() + "/Quiver/config/27_inch_cinema_display.js");

        //auto generator = new SVGGenerator;
        //quiver.addProperty("instance", generator);

        quiver.setSource("qml/QuiverExample");
        return app.exec();
}
