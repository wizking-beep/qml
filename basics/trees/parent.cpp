#include "parent.h"

Parent::Parent(QObject *parent) : QObject(parent)
{
}

Parent::~Parent()
{
    qDebug() << "Parent destructor called";
}