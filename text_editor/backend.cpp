#include "backend.h"

Backend::Backend(QObject *parent)
    : QObject{parent}
{
    m_path = QCoreApplication::applicationDirPath(); //giving the m_path the current directory
    m_path.append("/file.txt");
}

QString Backend::path()
{
    return m_path;
}

void Backend::setPath(QString value)
{
    m_path = value;
    m_path.remove("file://");
    emit pathChanged();
}

QString Backend::data()
{
    QFile file(m_path);
    if(!file.open(QIODevice::ReadOnly)){
        qWarning()<<" could not read file!";
        return "";
    }
    //Take the open file, shuff it into a stream and read the contents of the file from the stream
    QTextStream stream(&file);
    QString value = stream.readAll();
    file.close();
    return value;
}

void Backend::setData(QString value)
{
    QFile file(m_path);
    if(!file.open(QIODevice::WriteOnly)){
        qWarning()<<" could not write file!";

    }
    //Take the open file, shuff it into a stream and read the contents of the file from the stream
    QTextStream stream(&file);
    stream<<value;
    stream.flush();
    file.close();

    emit dataChanged();
}
