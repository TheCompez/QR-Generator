#include <QApplication>
#include <QQmlApplicationEngine>
#include <QtWebEngine/QtWebEngine>

#include <generator/generator.h>

//To do...
// add links to email addresses.
// Support image format in export mode.
// Button ICON.

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);


    QQmlApplicationEngine engine;
    QtWebEngine::initialize();


    if (qgetenv("QT_QUICK_CONTROLS_STYLE").isEmpty()) {
        qputenv("QT_QUICK_CONTROLS_STYLE", "Base");
    }

    //For QML
        generator  print;
        engine.rootContext()->setContextProperty("ACTION", &print);

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
