#include "cat.h"

Cat::Cat(QObject *parent)
    : QObject{parent}
{

}

void Cat::call()
{
    emit meow();
}

QString Cat::name()
{
    return m_name;
}

void Cat::setName(QString value)
{
    m_name = value;
    emit nameChanged();
}
