#include "test.h"
#include <QDebug>

Test::Test(QObject *parent)
    : QObject{parent}
{

}

int Test::number()
{
    qInfo()<<" Called number()";
    return 42;
}

void Test::bark()
{
     qInfo()<<" Bark Bark Bark";
}
