#ifndef MACHINE_H
#define MACHINE_H

#include <QObject>
#include <QTimer>
#include <QVariant>
#include <QDebug>

class Machine : public QObject
{
    Q_OBJECT

    //type int, name workload, if qml wants to read the property, it calls the value, if qml wants to write the property, it uses setValue
    //this also forms a design pattern of READ --- WRITE --- NOTIFY
    //A property is a READ WRITE and NOTIFY
    Q_PROPERTY(int workload READ value WRITE setValue NOTIFY progress)
public:
    explicit Machine(QObject *parent = nullptr);

    int value();
    void setValue(int data);
signals:
    void started();
    void stopped();
    void paused();
    void resumed();
    void progress();

public slots:
    void start();
    void stop();
    void pause();
    void resume();

private slots:
    void timeout();
private:
    QTimer m_timer;
    int m_value;

};

#endif // MACHINE_H
