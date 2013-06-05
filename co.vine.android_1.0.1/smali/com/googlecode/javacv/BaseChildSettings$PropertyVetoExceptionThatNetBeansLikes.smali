.class public Lcom/googlecode/javacv/BaseChildSettings$PropertyVetoExceptionThatNetBeansLikes;
.super Ljava/beans/PropertyVetoException;
.source "BaseChildSettings.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/BaseChildSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PropertyVetoExceptionThatNetBeansLikes"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/beans/PropertyChangeEvent;)V
    .locals 0
    .parameter "mess"
    .parameter "evt"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/beans/PropertyVetoException;-><init>(Ljava/lang/String;Ljava/beans/PropertyChangeEvent;)V

    .line 56
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Ljava/util/logging/LogRecord;

    sget-object v1, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {p0}, Lcom/googlecode/javacv/BaseChildSettings$PropertyVetoExceptionThatNetBeansLikes;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 59
    .local v0, lg:Ljava/util/logging/LogRecord;
    new-instance v1, Lcom/googlecode/javacv/BaseChildSettings$PropertyVetoExceptionThatNetBeansLikes$1;

    invoke-direct {v1, p0}, Lcom/googlecode/javacv/BaseChildSettings$PropertyVetoExceptionThatNetBeansLikes$1;-><init>(Lcom/googlecode/javacv/BaseChildSettings$PropertyVetoExceptionThatNetBeansLikes;)V

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setResourceBundle(Ljava/util/ResourceBundle;)V

    .line 64
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/logging/LogRecord;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method
