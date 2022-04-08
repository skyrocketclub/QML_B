#include "test.h"

Test::Test(QObject *parent) //Our test class is created
    : QObject{parent}
{
    //Signals and slots is connected here...
    connect (&m_timer, &QTimer::timeout, this, &Test::timeout);
    m_timer.setInterval(1000);
    m_display = "Starting";
    qInfo()<<m_display;
    emit notices(QVariant(m_display));
}

void Test::timeout()
{
    m_display = QDateTime::currentDateTime().toString();
    qInfo()<<m_display;
    emit notices(QVariant(m_display));
}

void Test::start()
{
    //this just displays the date and time for the first time
    m_display= "Starting...";
    qInfo()<<m_display;
    emit notices(QVariant(m_display));

    m_timer.start();
}

void Test::stop()
{
     m_timer.stop();
    m_display= "Stopping...";
    qInfo()<<m_display;
    emit notices(QVariant(m_display));

}
