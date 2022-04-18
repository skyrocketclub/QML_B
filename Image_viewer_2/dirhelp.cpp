#include "dirhelp.h"

dirhelp::dirhelp(QObject *parent)
    : QObject{parent}
{

}

QString dirhelp::path()
{
    return dir.path();
}

void dirhelp::setPath(QString value)
{
    dir.setPath(value);
}

QStringList dirhelp::files()
{
    //We are just getting a list of files, we want the files to be filtered...
    QFileInfoList list = dir.entryInfoList(QDir::AllEntries|QDir::NoDotAndDotDot|QDir::Files);

    //we are definining a QStringlist called filelist
    QStringList filelist;

    //We are trying to say for each of the Qfileinfo in the list, push it to the QStringlist
    foreach(QFileInfo info,list){
        filelist.append(info.filePath()); //
    }
    return filelist;
}
