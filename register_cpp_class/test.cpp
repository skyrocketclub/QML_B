#include "test.h"

Test::Test(QObject *parent)
    : QObject{parent}
{

}

void Test::work(QVariant data)
{
     bool ok;
     int numIn = data.toInt(&ok); //&ok cofirms that the operation went well
     int numOut = 0;

     if(!ok){
         qWarning()<<"Not a valid number";
     }else{
         int numRand = QRandomGenerator::global()->bounded(100);
         numOut = numIn * numRand;
         qInfo()<<"In: "<<numIn;
         qInfo()<<"Random: "<<numRand;
         qInfo()<<"Out: "<<numOut;
     }

     //We use QVariant because we are passing back to QML...
     emit status(QVariant(numOut)); //this is the data gon gon that the QML is seeing...
}


