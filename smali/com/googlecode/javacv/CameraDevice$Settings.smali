.class public interface abstract Lcom/googlecode/javacv/CameraDevice$Settings;
.super Ljava/lang/Object;
.source "CameraDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/CameraDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Settings"
.end annotation


# virtual methods
.method public abstract addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
.end method

.method public abstract getBitsPerPixel()I
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getDeviceFile()Ljava/io/File;
.end method

.method public abstract getDeviceFilename()Ljava/lang/String;
.end method

.method public abstract getDeviceNumber()Ljava/lang/Integer;
.end method

.method public abstract getDevicePath()Ljava/lang/String;
.end method

.method public abstract getFormat()Ljava/lang/String;
.end method

.method public abstract getFrameGrabber()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/googlecode/javacv/FrameGrabber;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFrameRate()D
.end method

.method public abstract getImageHeight()I
.end method

.method public abstract getImageMode()Lcom/googlecode/javacv/FrameGrabber$ImageMode;
.end method

.method public abstract getImageWidth()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNumBuffers()I
.end method

.method public abstract getResponseGamma()D
.end method

.method public abstract getTimeout()I
.end method

.method public abstract isDeinterlace()Z
.end method

.method public abstract isTriggerMode()Z
.end method

.method public abstract removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
.end method

.method public abstract setBitsPerPixel(I)V
.end method

.method public abstract setDeinterlace(Z)V
.end method

.method public abstract setDeviceFile(Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/PropertyVetoException;
        }
    .end annotation
.end method

.method public abstract setDeviceFilename(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/PropertyVetoException;
        }
    .end annotation
.end method

.method public abstract setDeviceNumber(Ljava/lang/Integer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/PropertyVetoException;
        }
    .end annotation
.end method

.method public abstract setDevicePath(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/PropertyVetoException;
        }
    .end annotation
.end method

.method public abstract setFormat(Ljava/lang/String;)V
.end method

.method public abstract setFrameGrabber(Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/googlecode/javacv/FrameGrabber;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setFrameRate(D)V
.end method

.method public abstract setImageHeight(I)V
.end method

.method public abstract setImageMode(Lcom/googlecode/javacv/FrameGrabber$ImageMode;)V
.end method

.method public abstract setImageWidth(I)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setNumBuffers(I)V
.end method

.method public abstract setResponseGamma(D)V
.end method

.method public abstract setTimeout(I)V
.end method

.method public abstract setTriggerMode(Z)V
.end method
