.class public Lcom/googlecode/javacv/CameraDevice$CalibrationSettings;
.super Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;
.source "CameraDevice.java"

# interfaces
.implements Lcom/googlecode/javacv/CameraDevice$Settings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/CameraDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CalibrationSettings"
.end annotation


# instance fields
.field si:Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;-><init>()V

    .line 351
    new-instance v0, Lcom/googlecode/javacv/CameraDevice$CalibrationSettings$1;

    invoke-direct {v0, p0}, Lcom/googlecode/javacv/CameraDevice$CalibrationSettings$1;-><init>(Lcom/googlecode/javacv/CameraDevice$CalibrationSettings;)V

    iput-object v0, p0, Lcom/googlecode/javacv/CameraDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;

    .line 344
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;)V
    .locals 2
    .parameter "settings"

    .prologue
    .line 346
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;-><init>(Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;)V

    .line 351
    new-instance v0, Lcom/googlecode/javacv/CameraDevice$CalibrationSettings$1;

    invoke-direct {v0, p0}, Lcom/googlecode/javacv/CameraDevice$CalibrationSettings$1;-><init>(Lcom/googlecode/javacv/CameraDevice$CalibrationSettings;)V

    iput-object v0, p0, Lcom/googlecode/javacv/CameraDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;

    .line 347
    instance-of v0, p1, Lcom/googlecode/javacv/CameraDevice$CalibrationSettings;

    if-eqz v0, :cond_0

    .line 348
    new-instance v0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;

    check-cast p1, Lcom/googlecode/javacv/CameraDevice$CalibrationSettings;

    .end local p1
    iget-object v1, p1, Lcom/googlecode/javacv/CameraDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;

    invoke-direct {v0, v1}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;-><init>(Lcom/googlecode/javacv/ProjectiveDevice$Settings;)V

    iput-object v0, p0, Lcom/googlecode/javacv/CameraDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;

    .line 350
    :cond_0
    return-void
.end method


# virtual methods
.method public getBitsPerPixel()I
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/googlecode/javacv/CameraDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;

    invoke-virtual {v0}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->getBitsPerPixel()I

    move-result v0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/googlecode/javacv/CameraDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;

    invoke-virtual {v0}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/googlecode/javacv/CameraDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;

    invoke-virtual {v0}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->getDeviceFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/googlecode/javacv/CameraDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;

    invoke-virtual {v0}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->getDeviceFilename()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceNumber()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/googlecode/javacv/CameraDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;

    invoke-virtual {v0}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->getDeviceNumber()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getDevicePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/googlecode/javacv/CameraDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;

    invoke-virtual {v0}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->getDevicePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/googlecode/javacv/CameraDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;

    invoke-virtual {v0}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->getFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFrameGrabber()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/googlecode/javacv/FrameGrabber;",
            ">;"
        }
    .end annotation

    .prologue
    .line 372
    iget-object v0, p0, Lcom/googlecode/javacv/CameraDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;

    invoke-virtual {v0}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->getFrameGrabber()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getFrameRate()D
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/googlecode/javacv/CameraDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;

    invoke-virtual {v0}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->getFrameRate()D

    move-result-wide v0

    return-wide v0
.end method

.method public getImageHeight()I
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/googlecode/javacv/CameraDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;

    invoke-virtual {v0}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->getImageHeight()I

    move-result v0

    return v0
.end method

.method public getImageMode()Lcom/googlecode/javacv/FrameGrabber$ImageMode;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/googlecode/javacv/CameraDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;

    invoke-virtual {v0}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->getImageMode()Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-result-object v0

    return-object v0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/googlecode/javacv/CameraDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;

    invoke-virtual {v0}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->getImageWidth()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/googlecode/javacv/CameraDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;

    invoke-virtual {v0}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumBuffers()I
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/googlecode/javacv/CameraDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;

    invoke-virtual {v0}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->getNumBuffers()I

    move-result v0

    return v0
.end method

.method public getResponseGamma()D
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/googlecode/javacv/CameraDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;

    invoke-virtual {v0}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->getResponseGamma()D

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeout()I
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/googlecode/javacv/CameraDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;

    invoke-virtual {v0}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->getTimeout()I

    move-result v0

    return v0
.end method

.method public isDeinterlace()Z
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/googlecode/javacv/CameraDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;

    invoke-virtual {v0}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->isDeinterlace()Z

    move-result v0

    return v0
.end method

.method public isTriggerMode()Z
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/googlecode/javacv/CameraDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;

    invoke-virtual {v0}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->isTriggerMode()Z

    move-result v0

    return v0
.end method

.method public setBitsPerPixel(I)V
    .locals 1
    .parameter "bitsPerPixel"

    .prologue
    .line 387
    iget-object v0, p0, Lcom/googlecode/javacv/CameraDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;

    invoke-virtual {v0, p1}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->setBitsPerPixel(I)V

    return-void
.end method

.method public setDeinterlace(Z)V
    .locals 1
    .parameter "deinterlace"

    .prologue
    .line 395
    iget-object v0, p0, Lcom/googlecode/javacv/CameraDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;

    invoke-virtual {v0, p1}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->setDeinterlace(Z)V

    return-void
.end method

.method public setDeviceFile(Ljava/io/File;)V
    .locals 1
    .parameter "deviceFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/PropertyVetoException;
        }
    .end annotation

    .prologue
    .line 367
    iget-object v0, p0, Lcom/googlecode/javacv/CameraDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;

    invoke-virtual {v0, p1}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->setDeviceFile(Ljava/io/File;)V

    return-void
.end method

.method public setDeviceFilename(Ljava/lang/String;)V
    .locals 1
    .parameter "deviceFilename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/PropertyVetoException;
        }
    .end annotation

    .prologue
    .line 369
    iget-object v0, p0, Lcom/googlecode/javacv/CameraDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;

    invoke-virtual {v0, p1}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->setDeviceFilename(Ljava/lang/String;)V

    return-void
.end method

.method public setDeviceNumber(Ljava/lang/Integer;)V
    .locals 1
    .parameter "deviceNumber"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/PropertyVetoException;
        }
    .end annotation

    .prologue
    .line 365
    iget-object v0, p0, Lcom/googlecode/javacv/CameraDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;

    invoke-virtual {v0, p1}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->setDeviceNumber(Ljava/lang/Integer;)V

    return-void
.end method

.method public setDevicePath(Ljava/lang/String;)V
    .locals 1
    .parameter "devicePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/PropertyVetoException;
        }
    .end annotation

    .prologue
    .line 371
    iget-object v0, p0, Lcom/googlecode/javacv/CameraDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;

    invoke-virtual {v0, p1}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->setDevicePath(Ljava/lang/String;)V

    return-void
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 1
    .parameter "format"

    .prologue
    .line 377
    iget-object v0, p0, Lcom/googlecode/javacv/CameraDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;

    invoke-virtual {v0, p1}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->setFormat(Ljava/lang/String;)V

    return-void
.end method

.method public setFrameGrabber(Ljava/lang/Class;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/googlecode/javacv/FrameGrabber;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 373
    .local p1, frameGrabber:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/googlecode/javacv/FrameGrabber;>;"
    iget-object v0, p0, Lcom/googlecode/javacv/CameraDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;

    invoke-virtual {v0, p1}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->setFrameGrabber(Ljava/lang/Class;)V

    return-void
.end method

.method public setFrameRate(D)V
    .locals 1
    .parameter "frameRate"

    .prologue
    .line 383
    iget-object v0, p0, Lcom/googlecode/javacv/CameraDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;

    invoke-virtual {v0, p1, p2}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->setFrameRate(D)V

    return-void
.end method

.method public setImageHeight(I)V
    .locals 1
    .parameter "imageHeight"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/googlecode/javacv/CameraDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;

    invoke-virtual {v0, p1}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->setImageHeight(I)V

    return-void
.end method

.method public setImageMode(Lcom/googlecode/javacv/FrameGrabber$ImageMode;)V
    .locals 1
    .parameter "imageMode"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/googlecode/javacv/CameraDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;

    invoke-virtual {v0, p1}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->setImageMode(Lcom/googlecode/javacv/FrameGrabber$ImageMode;)V

    return-void
.end method

.method public setImageWidth(I)V
    .locals 1
    .parameter "imageWidth"

    .prologue
    .line 379
    iget-object v0, p0, Lcom/googlecode/javacv/CameraDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;

    invoke-virtual {v0, p1}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->setImageWidth(I)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 358
    iget-object v0, p0, Lcom/googlecode/javacv/CameraDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;

    invoke-virtual {v0, p1}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public setNumBuffers(I)V
    .locals 1
    .parameter "numBuffers"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/googlecode/javacv/CameraDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;

    invoke-virtual {v0, p1}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->setNumBuffers(I)V

    return-void
.end method

.method public setResponseGamma(D)V
    .locals 1
    .parameter "responseGamma"

    .prologue
    .line 360
    iget-object v0, p0, Lcom/googlecode/javacv/CameraDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;

    invoke-virtual {v0, p1, p2}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->setResponseGamma(D)V

    return-void
.end method

.method public setTimeout(I)V
    .locals 1
    .parameter "timeout"

    .prologue
    .line 391
    iget-object v0, p0, Lcom/googlecode/javacv/CameraDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;

    invoke-virtual {v0, p1}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->setTimeout(I)V

    return-void
.end method

.method public setTriggerMode(Z)V
    .locals 1
    .parameter "triggerMode"

    .prologue
    .line 385
    iget-object v0, p0, Lcom/googlecode/javacv/CameraDevice$CalibrationSettings;->si:Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;

    invoke-virtual {v0, p1}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->setTriggerMode(Z)V

    return-void
.end method
