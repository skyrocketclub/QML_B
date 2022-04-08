#ifndef TEST_H
#define TEST_H

#include <QObject>
#include <QTimer>
#include <QDateTime>
#include <QVariant>  //The data we pass back and forth between c++ and Qml will be passed inside a Q variant
#include <QDebug>

class Test : public QObject
{
    Q_OBJECT
public:
    explicit Test(QObject *parent = nullptr);

signals:

    void notices(QVariant data); //this is emmitted

private slots:
    void timeout();

public slots:
    void start();
    void stop();

private:
    QTimer m_timer;
    QString m_display;
};

#endif // TEST_H
