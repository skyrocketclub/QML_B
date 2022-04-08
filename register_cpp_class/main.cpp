#include <QGuiApplication>
#include <QQmlApplicationEngine>

//Always include QML Context
#include <QQmlContext>
#include "test.h"

int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    //registering a type in QML
    qmlRegisterType<Test>("com.company.test",1,0,"Test");
//Follow this to register your type, give it a uri, give it a major and a minor version, give it a name that it can be called in QML...

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
