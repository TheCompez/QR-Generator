#ifndef GENERATOR_H
#define GENERATOR_H

#include <QObject>
#include <QVariant>

class generator : public QObject
{
    Q_OBJECT

public:
    generator();

public:

Q_INVOKABLE void print(QVariant data);
Q_INVOKABLE QString define_lang();

};

#endif // GENERATOR_H
