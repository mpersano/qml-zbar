#include <QGuiApplication>
#include <QQuickView>

#include "qrcodevideofilter.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    qmlRegisterType<QRCodeVideoFilter>("QRCode", 1, 0, "QRCodeVideoFilter");

    QQuickView view;
    view.setSource(QUrl("qrc:/test.qml"));
    view.setResizeMode(QQuickView::SizeRootObjectToView);
    view.show();

    return app.exec();
}
