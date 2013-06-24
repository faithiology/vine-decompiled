.class public Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;
.super Lcom/googlecode/javacv/ProjectiveDevice$Settings;
.source "CameraDevice.java"

# interfaces
.implements Lcom/googlecode/javacv/CameraDevice$Settings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/CameraDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsImplementation"
.end annotation


# instance fields
.field bpp:I

.field deinterlace:Z

.field deviceFile:Ljava/io/File;

.field deviceNumber:Ljava/lang/Integer;

.field devicePath:Ljava/lang/String;

.field format:Ljava/lang/String;

.field frameGrabber:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/googlecode/javacv/FrameGrabber;",
            ">;"
        }
    .end annotation
.end field

.field frameRate:D

.field imageHeight:I

.field imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

.field imageWidth:I

.field numBuffers:I

.field timeout:I

.field triggerMode:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 99
    invoke-direct {p0}, Lcom/googlecode/javacv/ProjectiveDevice$Settings;-><init>()V

    .line 121
    iput-object v0, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->deviceNumber:Ljava/lang/Integer;

    .line 122
    iput-object v0, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->deviceFile:Ljava/io/File;

    .line 123
    iput-object v0, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->devicePath:Ljava/lang/String;

    .line 124
    iput-object v0, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->frameGrabber:Ljava/lang/Class;

    .line 261
    const-string v0, ""

    iput-object v0, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->format:Ljava/lang/String;

    .line 262
    iput v2, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->imageWidth:I

    iput v2, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->imageHeight:I

    .line 263
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->frameRate:D

    .line 264
    iput-boolean v2, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->triggerMode:Z

    .line 265
    iput v2, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->bpp:I

    .line 266
    sget-object v0, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->COLOR:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    iput-object v0, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    .line 267
    const/16 v0, 0x2710

    iput v0, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->timeout:I

    .line 268
    const/4 v0, 0x4

    iput v0, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->numBuffers:I

    .line 269
    iput-boolean v2, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->deinterlace:Z

    .line 99
    const-string v0, "Camera  0"

    iput-object v0, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/ProjectiveDevice$Settings;)V
    .locals 4
    .parameter "settings"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 101
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/ProjectiveDevice$Settings;-><init>(Lcom/googlecode/javacv/ProjectiveDevice$Settings;)V

    .line 121
    iput-object v1, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->deviceNumber:Ljava/lang/Integer;

    .line 122
    iput-object v1, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->deviceFile:Ljava/io/File;

    .line 123
    iput-object v1, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->devicePath:Ljava/lang/String;

    .line 124
    iput-object v1, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->frameGrabber:Ljava/lang/Class;

    .line 261
    const-string v1, ""

    iput-object v1, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->format:Ljava/lang/String;

    .line 262
    iput v3, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->imageWidth:I

    iput v3, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->imageHeight:I

    .line 263
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->frameRate:D

    .line 264
    iput-boolean v3, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->triggerMode:Z

    .line 265
    iput v3, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->bpp:I

    .line 266
    sget-object v1, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->COLOR:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    iput-object v1, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    .line 267
    const/16 v1, 0x2710

    iput v1, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->timeout:I

    .line 268
    const/4 v1, 0x4

    iput v1, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->numBuffers:I

    .line 269
    iput-boolean v3, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->deinterlace:Z

    .line 102
    instance-of v1, p1, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 103
    check-cast v0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;

    .line 104
    .local v0, s:Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;
    iget-object v1, v0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->deviceNumber:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->deviceNumber:Ljava/lang/Integer;

    .line 105
    iget-object v1, v0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->deviceFile:Ljava/io/File;

    iput-object v1, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->deviceFile:Ljava/io/File;

    .line 106
    iget-object v1, v0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->devicePath:Ljava/lang/String;

    iput-object v1, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->devicePath:Ljava/lang/String;

    .line 107
    iget-object v1, v0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->frameGrabber:Ljava/lang/Class;

    iput-object v1, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->frameGrabber:Ljava/lang/Class;

    .line 108
    iget-object v1, v0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->format:Ljava/lang/String;

    iput-object v1, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->format:Ljava/lang/String;

    .line 109
    iget v1, v0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->imageWidth:I

    iput v1, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->imageWidth:I

    .line 110
    iget v1, v0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->imageHeight:I

    iput v1, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->imageHeight:I

    .line 111
    iget-wide v1, v0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->frameRate:D

    iput-wide v1, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->frameRate:D

    .line 112
    iget-boolean v1, v0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->triggerMode:Z

    iput-boolean v1, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->triggerMode:Z

    .line 113
    iget v1, v0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->bpp:I

    iput v1, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->bpp:I

    .line 114
    iget-object v1, v0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    iput-object v1, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    .line 115
    iget v1, v0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->timeout:I

    iput v1, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->timeout:I

    .line 116
    iget v1, v0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->numBuffers:I

    iput v1, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->numBuffers:I

    .line 117
    iget-boolean v1, v0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->deinterlace:Z

    iput-boolean v1, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->deinterlace:Z

    .line 119
    .end local v0           #s:Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;
    :cond_0
    return-void
.end method


# virtual methods
.method public getBitsPerPixel()I
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->bpp:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 6

    .prologue
    .line 248
    const/4 v1, 0x0

    .line 250
    .local v1, descriptions:[Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->frameGrabber:Ljava/lang/Class;

    const-string v4, "getDeviceDescriptions"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 251
    .local v2, m:Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v0, v3

    check-cast v0, [Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    .end local v2           #m:Ljava/lang/reflect/Method;
    :goto_0
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->deviceNumber:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->deviceNumber:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 255
    iget-object v3, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->deviceNumber:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v3, v1, v3

    .line 257
    :goto_1
    return-object v3

    :cond_0
    const-string v3, ""

    goto :goto_1

    .line 252
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public getDeviceFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->deviceFile:Ljava/io/File;

    return-object v0
.end method

.method public getDeviceFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->getDeviceFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->getDeviceFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDeviceNumber()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->deviceNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDevicePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->devicePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->format:Ljava/lang/String;

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
    .line 203
    iget-object v0, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->frameGrabber:Ljava/lang/Class;

    return-object v0
.end method

.method public getFrameRate()D
    .locals 2

    .prologue
    .line 293
    iget-wide v0, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->frameRate:D

    return-wide v0
.end method

.method public getImageHeight()I
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->imageHeight:I

    return v0
.end method

.method public getImageMode()Lcom/googlecode/javacv/FrameGrabber$ImageMode;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    return-object v0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->imageWidth:I

    return v0
.end method

.method public getNumBuffers()I
    .locals 1

    .prologue
    .line 328
    iget v0, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->numBuffers:I

    return v0
.end method

.method public getTimeout()I
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->timeout:I

    return v0
.end method

.method public isDeinterlace()Z
    .locals 1

    .prologue
    .line 335
    iget-boolean v0, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->deinterlace:Z

    return v0
.end method

.method public isTriggerMode()Z
    .locals 1

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->triggerMode:Z

    return v0
.end method

.method public setBitsPerPixel(I)V
    .locals 0
    .parameter "bitsPerPixel"

    .prologue
    .line 310
    iput p1, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->bpp:I

    .line 311
    return-void
.end method

.method public setDeinterlace(Z)V
    .locals 0
    .parameter "deinterlace"

    .prologue
    .line 338
    iput-boolean p1, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->deinterlace:Z

    .line 339
    return-void
.end method

.method public setDeviceFile(Ljava/io/File;)V
    .locals 8
    .parameter "deviceFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/PropertyVetoException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 155
    if-eqz p1, :cond_1

    .line 157
    :try_start_0
    iget-object v2, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->frameGrabber:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 158
    iget-object v2, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->frameGrabber:Ljava/lang/Class;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/io/File;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 160
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->setDeviceNumber(Ljava/lang/Integer;)V

    .line 161
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->setDevicePath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :cond_1
    invoke-virtual {p0}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->getDescription()Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, oldDescription:Ljava/lang/String;
    const-string v2, "deviceFile"

    iget-object v3, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->deviceFile:Ljava/io/File;

    iput-object p1, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->deviceFile:Ljava/io/File;

    invoke-virtual {p0, v2, v3, p1}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 170
    const-string v2, "description"

    invoke-virtual {p0}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v1, v3}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 171
    return-void

    .line 162
    .end local v1           #oldDescription:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 163
    .local v0, e:Ljava/lang/NoSuchMethodException;
    const/4 p1, 0x0

    .line 164
    new-instance v2, Lcom/googlecode/javacv/BaseChildSettings$PropertyVetoExceptionThatNetBeansLikes;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->frameGrabber:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not accept a deviceFile."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/beans/PropertyChangeEvent;

    const-string v5, "deviceFile"

    iget-object v6, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->deviceFile:Ljava/io/File;

    iput-object v7, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->deviceFile:Ljava/io/File;

    invoke-direct {v4, p0, v5, v6, v7}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v2, v3, v4}, Lcom/googlecode/javacv/BaseChildSettings$PropertyVetoExceptionThatNetBeansLikes;-><init>(Ljava/lang/String;Ljava/beans/PropertyChangeEvent;)V

    throw v2
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
    .line 176
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->setDeviceFile(Ljava/io/File;)V

    .line 178
    return-void

    .line 176
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDeviceNumber(Ljava/lang/Integer;)V
    .locals 8
    .parameter "deviceNumber"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/PropertyVetoException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 130
    if-eqz p1, :cond_1

    .line 132
    :try_start_0
    iget-object v2, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->frameGrabber:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_0

    .line 134
    :try_start_1
    iget-object v2, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->frameGrabber:Ljava/lang/Class;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    .line 139
    :cond_0
    :goto_0
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {p0, v2}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->setDevicePath(Ljava/lang/String;)V

    .line 140
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->setDeviceFile(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    .line 146
    :cond_1
    invoke-virtual {p0}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->getDescription()Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, oldDescription:Ljava/lang/String;
    const-string v2, "deviceNumber"

    iget-object v3, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->deviceNumber:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->deviceNumber:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3, p1}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 148
    const-string v2, "description"

    invoke-virtual {p0}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v1, v3}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 149
    return-void

    .line 135
    .end local v1           #oldDescription:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Ljava/lang/NoSuchMethodException;
    :try_start_3
    iget-object v2, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->frameGrabber:Ljava/lang/Class;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/Integer;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 141
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 142
    .restart local v0       #e:Ljava/lang/NoSuchMethodException;
    new-instance v2, Lcom/googlecode/javacv/BaseChildSettings$PropertyVetoExceptionThatNetBeansLikes;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->frameGrabber:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not accept a deviceNumber."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/beans/PropertyChangeEvent;

    const-string v5, "deviceNumber"

    iget-object v6, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->deviceNumber:Ljava/lang/Integer;

    iput-object v7, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->deviceNumber:Ljava/lang/Integer;

    invoke-direct {v4, p0, v5, v6, v7}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v2, v3, v4}, Lcom/googlecode/javacv/BaseChildSettings$PropertyVetoExceptionThatNetBeansLikes;-><init>(Ljava/lang/String;Ljava/beans/PropertyChangeEvent;)V

    throw v2
.end method

.method public setDevicePath(Ljava/lang/String;)V
    .locals 8
    .parameter "devicePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/PropertyVetoException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 184
    if-eqz p1, :cond_1

    .line 186
    :try_start_0
    iget-object v2, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->frameGrabber:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 187
    iget-object v2, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->frameGrabber:Ljava/lang/Class;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 189
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->setDeviceNumber(Ljava/lang/Integer;)V

    .line 190
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->setDeviceFile(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :cond_1
    invoke-virtual {p0}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->getDescription()Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, oldDescription:Ljava/lang/String;
    const-string v2, "devicePath"

    iget-object v3, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->devicePath:Ljava/lang/String;

    iput-object p1, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->devicePath:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, p1}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 199
    const-string v2, "description"

    invoke-virtual {p0}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v1, v3}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 200
    return-void

    .line 191
    .end local v1           #oldDescription:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 192
    .local v0, e:Ljava/lang/NoSuchMethodException;
    const-string p1, ""

    .line 193
    new-instance v2, Lcom/googlecode/javacv/BaseChildSettings$PropertyVetoExceptionThatNetBeansLikes;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->frameGrabber:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not accept a devicePath."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/beans/PropertyChangeEvent;

    const-string v5, "devicePath"

    iget-object v6, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->devicePath:Ljava/lang/String;

    iput-object v7, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->devicePath:Ljava/lang/String;

    invoke-direct {v4, p0, v5, v6, v7}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v2, v3, v4}, Lcom/googlecode/javacv/BaseChildSettings$PropertyVetoExceptionThatNetBeansLikes;-><init>(Ljava/lang/String;Ljava/beans/PropertyChangeEvent;)V

    throw v2
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 0
    .parameter "format"

    .prologue
    .line 275
    iput-object p1, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->format:Ljava/lang/String;

    .line 276
    return-void
.end method

.method public setFrameGrabber(Ljava/lang/Class;)V
    .locals 8
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
    .local p1, frameGrabber:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/googlecode/javacv/FrameGrabber;>;"
    const/4 v7, 0x0

    .line 206
    invoke-virtual {p0}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->getDescription()Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, oldDescription:Ljava/lang/String;
    const-string v4, "frameGrabber"

    iget-object v5, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->frameGrabber:Ljava/lang/Class;

    iput-object p1, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->frameGrabber:Ljava/lang/Class;

    invoke-virtual {p0, v4, v5, p1}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 208
    const-string v4, "description"

    invoke-virtual {p0}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v3, v5}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 210
    if-nez p1, :cond_1

    .line 211
    const-string v4, "deviceNumber"

    iget-object v5, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->deviceNumber:Ljava/lang/Integer;

    iput-object v7, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->deviceNumber:Ljava/lang/Integer;

    invoke-virtual {p0, v4, v5, v7}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 212
    const-string v4, "deviceFile"

    iget-object v5, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->deviceFile:Ljava/io/File;

    iput-object v7, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->deviceFile:Ljava/io/File;

    invoke-virtual {p0, v4, v5, v7}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 213
    const-string v4, "devicePath"

    iget-object v5, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->devicePath:Ljava/lang/String;

    iput-object v7, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->devicePath:Ljava/lang/String;

    invoke-virtual {p0, v4, v5, v7}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    const/4 v2, 0x0

    .line 219
    .local v2, hasDeviceNumber:Z
    const/4 v4, 0x1

    :try_start_0
    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 220
    const/4 v2, 0x1

    .line 230
    :goto_1
    const/4 v4, 0x1

    :try_start_1
    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/io/File;

    aput-object v6, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3

    .line 235
    :goto_2
    const/4 v4, 0x1

    :try_start_2
    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_4

    .line 240
    :goto_3
    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->deviceNumber:Ljava/lang/Integer;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->deviceFile:Ljava/io/File;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->devicePath:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 242
    const/4 v4, 0x0

    :try_start_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->setDeviceNumber(Ljava/lang/Integer;)V
    :try_end_3
    .catch Ljava/beans/PropertyVetoException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 243
    :catch_0
    move-exception v4

    goto :goto_0

    .line 221
    :catch_1
    move-exception v0

    .line 223
    .local v0, e:Ljava/lang/NoSuchMethodException;
    const/4 v4, 0x1

    :try_start_4
    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/Integer;

    aput-object v6, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_2

    .line 224
    const/4 v2, 0x1

    goto :goto_1

    .line 225
    :catch_2
    move-exception v1

    .line 226
    .local v1, e2:Ljava/lang/NoSuchMethodException;
    const-string v4, "deviceNumber"

    iget-object v5, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->deviceNumber:Ljava/lang/Integer;

    iput-object v7, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->deviceNumber:Ljava/lang/Integer;

    invoke-virtual {p0, v4, v5, v7}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 231
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    .end local v1           #e2:Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v0

    .line 232
    .restart local v0       #e:Ljava/lang/NoSuchMethodException;
    const-string v4, "deviceFile"

    iget-object v5, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->deviceFile:Ljava/io/File;

    iput-object v7, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->deviceFile:Ljava/io/File;

    invoke-virtual {p0, v4, v5, v7}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 236
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v0

    .line 237
    .restart local v0       #e:Ljava/lang/NoSuchMethodException;
    const-string v4, "devicePath"

    iget-object v5, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->devicePath:Ljava/lang/String;

    iput-object v7, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->devicePath:Ljava/lang/String;

    invoke-virtual {p0, v4, v5, v7}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3
.end method

.method public setFrameRate(D)V
    .locals 0
    .parameter "frameRate"

    .prologue
    .line 296
    iput-wide p1, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->frameRate:D

    .line 297
    return-void
.end method

.method public setImageHeight(I)V
    .locals 0
    .parameter "imageHeight"

    .prologue
    .line 289
    iput p1, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->imageHeight:I

    .line 290
    return-void
.end method

.method public setImageMode(Lcom/googlecode/javacv/FrameGrabber$ImageMode;)V
    .locals 0
    .parameter "imageMode"

    .prologue
    .line 317
    iput-object p1, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    .line 318
    return-void
.end method

.method public setImageWidth(I)V
    .locals 0
    .parameter "imageWidth"

    .prologue
    .line 282
    iput p1, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->imageWidth:I

    .line 283
    return-void
.end method

.method public setNumBuffers(I)V
    .locals 0
    .parameter "numBuffers"

    .prologue
    .line 331
    iput p1, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->numBuffers:I

    .line 332
    return-void
.end method

.method public setTimeout(I)V
    .locals 0
    .parameter "timeout"

    .prologue
    .line 324
    iput p1, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->timeout:I

    .line 325
    return-void
.end method

.method public setTriggerMode(Z)V
    .locals 0
    .parameter "triggerMode"

    .prologue
    .line 303
    iput-boolean p1, p0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;->triggerMode:Z

    .line 304
    return-void
.end method
