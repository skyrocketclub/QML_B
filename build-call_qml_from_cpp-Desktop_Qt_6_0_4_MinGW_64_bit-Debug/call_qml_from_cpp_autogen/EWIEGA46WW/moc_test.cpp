/****************************************************************************
** Meta object code from reading C++ file 'test.h'
**
** Created by: The Qt Meta Object Compiler version 68 (Qt 6.0.4)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include <memory>
#include "../../../call_qml_from_cpp/test.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'test.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 68
#error "This file was generated using the moc from 6.0.4. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_Test_t {
    const uint offsetsAndSize[14];
    char stringdata0[38];
};
#define QT_MOC_LITERAL(ofs, len) \
    uint(offsetof(qt_meta_stringdata_Test_t, stringdata0) + ofs), len 
static const qt_meta_stringdata_Test_t qt_meta_stringdata_Test = {
    {
QT_MOC_LITERAL(0, 4), // "Test"
QT_MOC_LITERAL(5, 7), // "notices"
QT_MOC_LITERAL(13, 0), // ""
QT_MOC_LITERAL(14, 4), // "data"
QT_MOC_LITERAL(19, 7), // "timeout"
QT_MOC_LITERAL(27, 5), // "start"
QT_MOC_LITERAL(33, 4) // "stop"

    },
    "Test\0notices\0\0data\0timeout\0start\0stop"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_Test[] = {

 // content:
       9,       // revision
       0,       // classname
       0,    0, // classinfo
       4,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: name, argc, parameters, tag, flags, initial metatype offsets
       1,    1,   38,    2, 0x06,    0 /* Public */,

 // slots: name, argc, parameters, tag, flags, initial metatype offsets
       4,    0,   41,    2, 0x08,    2 /* Private */,
       5,    0,   42,    2, 0x0a,    3 /* Public */,
       6,    0,   43,    2, 0x0a,    4 /* Public */,

 // signals: parameters
    QMetaType::Void, QMetaType::QVariant,    3,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void Test::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<Test *>(_o);
        (void)_t;
        switch (_id) {
        case 0: _t->notices((*reinterpret_cast< QVariant(*)>(_a[1]))); break;
        case 1: _t->timeout(); break;
        case 2: _t->start(); break;
        case 3: _t->stop(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (Test::*)(QVariant );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&Test::notices)) {
                *result = 0;
                return;
            }
        }
    }
}

const QMetaObject Test::staticMetaObject = { {
    QMetaObject::SuperData::link<QObject::staticMetaObject>(),
    qt_meta_stringdata_Test.offsetsAndSize,
    qt_meta_data_Test,
    qt_static_metacall,
    nullptr,
qt_incomplete_metaTypeArray<qt_meta_stringdata_Test_t
, QtPrivate::TypeAndForceComplete<void, std::false_type>, QtPrivate::TypeAndForceComplete<QVariant, std::false_type>
, QtPrivate::TypeAndForceComplete<void, std::false_type>, QtPrivate::TypeAndForceComplete<void, std::false_type>, QtPrivate::TypeAndForceComplete<void, std::false_type>


>,
    nullptr
} };


const QMetaObject *Test::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *Test::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_Test.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int Test::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 4)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 4;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 4)
            *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType();
        _id -= 4;
    }
    return _id;
}

// SIGNAL 0
void Test::notices(QVariant _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t1))) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
