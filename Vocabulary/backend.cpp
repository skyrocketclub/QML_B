#include "backend.h"

Backend::Backend(QObject *parent)
    : QObject{parent}
{

}

std::string Backend::gameline()
{

}

void Backend::setLanguage(int num)
{
    choice = num;

    std::string path;
    std::ifstream in_file;
    if(num == 1){
        //The user has chosen to play Spanish
        path = "word/spanish.txt";
    }
    else if(num == 2){
        path = "word/igbo.txt";
    }
    in_file.open(path);


    in_file.close();
}
