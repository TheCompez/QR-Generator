#include "generator.h"
#include <QPrinter>
#include <QPainter>
#include <QPrintDialog>
#include <QPixmap>
#include <QImage>
#include <qDebug>
#include <QSettings>

generator::generator()
{

}

void generator::print(QVariant data)

{


    QImage img = qvariant_cast<QImage>(data);
    QPrinter printer;
          QPrintDialog *dlg = new QPrintDialog(&printer,0);
          if(dlg->exec() == QDialog::Accepted) {
                  QPainter painter(&printer);
                  painter.drawImage(QPoint(0,0),img);
                  painter.end();
          }


}


QString generator::define_lang()
    {

        QString _L;
        QSettings	Settings("config//config.ios", QSettings::IniFormat);
        Settings.beginGroup("SYSTEM");//Start to read from cache/config-system.ios
        _L = Settings.value("LANGUAGE", "").toString();
        Settings.endGroup();//End of set value into cache/config-system.ios

        return _L;
    }


