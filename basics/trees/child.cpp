#include "child.h"

Child::Child(QObject *parent) : QObject(parent)
{
}

Child::~Child()
{
    qDebug() << "Child destructor called,the parent is" << parent();
}