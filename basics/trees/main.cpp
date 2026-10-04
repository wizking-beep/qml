/*#include <QGuiApplication>
#include <QQmlApplicationEngine>*/
#include "parent.h"
#include "child.h"

int main(int argc, char *argv[])
{
    /*QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));*/


    Parent *parent = new Parent();
    Child *child = new Child(parent);

    delete parent; // This will also delete the child because it is a child of parent

    /*return app.exec();*/
}