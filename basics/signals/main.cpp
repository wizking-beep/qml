#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "student.h"
#include "teacher.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.loadFromModule("signals", "Main");

    Teacher teacher;
    Student student;

    QObject::connect(&teacher,&Teacher::taught,&student,&Student::learn);

    teacher.teach("swahili");

    return QGuiApplication::exec();
}
