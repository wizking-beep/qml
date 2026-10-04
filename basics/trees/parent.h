#include <QObject>
#include <QDebug>

class Parent : public QObject
{
    Q_OBJECT
public:
    explicit Parent(QObject *parent = nullptr);
    ~Parent();

};