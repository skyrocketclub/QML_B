#include "machine.h"

Machine::Machine(QObject *parent)
    : QObject{parent}
{
    m_timer.setInterval(1000);//the timer interval is set here
    connect(&m_timer,&QTimer::timeout,this,&Machine::timeout);
}

int Machine::value()
{
    qInfo()<<"Returning value ";
    return m_value;
}

void Machine::setValue(int data)
{
     qInfo()<<"Setting value ";
     m_value = data;
     emit progress(); //This marks the end of the Q property life cycle --- READ WRITE NOTIFY
}

void Machine::start()
{
    m_value = 0;
    setValue(m_value);
    m_timer.start();//The timer is started here
    emit started();

}

void Machine::stop()
{
    m_timer.stop();//The timer is started here
    emit stopped();
}

void Machine::pause()
{
    m_timer.stop();//The timer is started here
    emit paused();
}

void Machine::resume()
{
    m_timer.start();//The timer is started here
    emit resumed();
}

void Machine::timeout()
{
    m_value++;
    emit progress();
    if(m_value > 99){
        stop();
    }
}
