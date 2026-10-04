#ifndef TEACHER_H
#define TEACHER_H

#include <QObject>
#include <iostream>
#include <QString>

class Teacher: public QObject
{
    Q_OBJECT
public:
    Teacher();
    void teach(QString lesson);
signals:
    void taught();

public slots:
    void s_response();
};

#endif // TEACHER_H
