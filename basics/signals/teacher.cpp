#include "teacher.h"
#include <QDebug>

Teacher::Teacher() {}

void Teacher::teach(QString lesson)
{
    qDebug() << "iam teaching this lesson: " << lesson;
    emit taught();
}

void Teacher::s_response()
{
    qDebug() << "The students have leant";
}
