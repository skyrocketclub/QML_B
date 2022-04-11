#ifndef CAT_H
#define CAT_H

#include <QObject>
#include <QDebug>

class Cat : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString name READ name WRITE setName NOTIFY nameChanged)
public:
    explicit Cat(QObject *parent = nullptr);

signals:
 void meow();
 void nameChanged();

 public slots:
     void call();

 private:
     QString name();
     void setName(QString value);
     QString m_name;
};

#endif // CAT_H
