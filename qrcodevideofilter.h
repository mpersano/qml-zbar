#pragma once

#include <QAbstractVideoFilter>

class QRCodeVideoFilter : public QAbstractVideoFilter
{
    Q_OBJECT

public:
    QRCodeVideoFilter(QObject *parent = nullptr);

    QVideoFilterRunnable *createFilterRunnable() override;

signals:
    void detected(const QString& code);
};
