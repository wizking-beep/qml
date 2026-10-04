#ifndef STUDENT_H
#define STUDENT_H
#include <QObject>

class Student : public QObject
{
    Q_OBJECT
public:
    Student();

signals:
    void learnt();

public slots:
    void learn();
};

#endif // STUDENT_H
