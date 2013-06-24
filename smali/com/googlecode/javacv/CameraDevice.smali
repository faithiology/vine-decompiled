.class public Lcom/googlecode/javacv/CameraDevice;
.super Lcom/googlecode/javacv/ProjectiveDevice;
.source "CameraDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/CameraDevice$CalibratedSettings;,
        Lcom/googlecode/javacv/CameraDevice$CalibrationSettings;,
        Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;,
        Lcom/googlecode/javacv/CameraDevice$Settings;
    }
.end annotation


# instance fields
.field private settings:Lcom/googlecode/javacv/CameraDevice$Settings;


# direct methods
.method public constructor <init>(Lcom/googlecode/javacv/CameraDevice$Settings;)V
    .locals 0
    .parameter "settings"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/ProjectiveDevice$Exception;
        }
    .end annotation

    .prologue
    .line 52
    check-cast p1, Lcom/googlecode/javacv/ProjectiveDevice$Settings;

    .end local p1
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/ProjectiveDevice;-><init>(Lcom/googlecode/javacv/ProjectiveDevice$Settings;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/ProjectiveDevice;-><init>(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;)V
    .locals 2
    .parameter "name"
    .parameter "fs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/ProjectiveDevice$Exception;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/googlecode/javacv/ProjectiveDevice;-><init>(Ljava/lang/String;Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;)V

    .line 48
    iget-object v0, p0, Lcom/googlecode/javacv/CameraDevice;->settings:Lcom/googlecode/javacv/CameraDevice$Settings;

    iget v1, p0, Lcom/googlecode/javacv/CameraDevice;->imageWidth:I

    invoke-interface {v0, v1}, Lcom/googlecode/javacv/CameraDevice$Settings;->setImageWidth(I)V

    .line 49
    iget-object v0, p0, Lcom/googlecode/javacv/CameraDevice;->settings:Lcom/googlecode/javacv/CameraDevice$Settings;

    iget v1, p0, Lcom/googlecode/javacv/CameraDevice;->imageHeight:I

    invoke-interface {v0, v1}, Lcom/googlecode/javacv/CameraDevice$Settings;->setImageHeight(I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/ProjectiveDevice$Exception;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/googlecode/javacv/ProjectiveDevice;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/googlecode/javacv/CameraDevice;->settings:Lcom/googlecode/javacv/CameraDevice$Settings;

    iget v1, p0, Lcom/googlecode/javacv/CameraDevice;->imageWidth:I

    invoke-interface {v0, v1}, Lcom/googlecode/javacv/CameraDevice$Settings;->setImageWidth(I)V

    .line 44
    iget-object v0, p0, Lcom/googlecode/javacv/CameraDevice;->settings:Lcom/googlecode/javacv/CameraDevice$Settings;

    iget v1, p0, Lcom/googlecode/javacv/CameraDevice;->imageHeight:I

    invoke-interface {v0, v1}, Lcom/googlecode/javacv/CameraDevice$Settings;->setImageHeight(I)V

    .line 45
    return-void
.end method

.method public static read(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;)[Lcom/googlecode/javacv/CameraDevice;
    .locals 9
    .parameter "fs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/ProjectiveDevice$Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 521
    const-string v7, "Cameras"

    invoke-static {p0, v8, v7}, Lcom/googlecode/javacv/cpp/opencv_core;->cvGetFileNodeByName(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;Ljava/lang/String;)Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;

    move-result-object v4

    .line 522
    .local v4, node:Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;
    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;->data_seq()Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;

    move-result-object v6

    .line 523
    .local v6, seq:Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
    invoke-virtual {v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;->total()I

    move-result v0

    .line 525
    .local v0, count:I
    new-array v1, v0, [Lcom/googlecode/javacv/CameraDevice;

    .line 526
    .local v1, devices:[Lcom/googlecode/javacv/CameraDevice;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 527
    invoke-static {v6, v2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvGetSeqElem(Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v5

    .line 528
    .local v5, p:Lcom/googlecode/javacpp/Pointer;
    if-nez v5, :cond_0

    .line 526
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 529
    :cond_0
    new-instance v7, Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;

    invoke-direct {v7, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    invoke-static {v7, v8}, Lcom/googlecode/javacv/cpp/opencv_core;->cvReadString(Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 530
    .local v3, name:Ljava/lang/String;
    new-instance v7, Lcom/googlecode/javacv/CameraDevice;

    invoke-direct {v7, v3, p0}, Lcom/googlecode/javacv/CameraDevice;-><init>(Ljava/lang/String;Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;)V

    aput-object v7, v1, v2

    goto :goto_1

    .line 532
    .end local v3           #name:Ljava/lang/String;
    .end local v5           #p:Lcom/googlecode/javacpp/Pointer;
    :cond_1
    return-object v1
.end method

.method public static read(Ljava/lang/String;)[Lcom/googlecode/javacv/CameraDevice;
    .locals 4
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/ProjectiveDevice$Exception;
        }
    .end annotation

    .prologue
    .line 515
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;->open(Ljava/lang/String;Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;I)Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;

    move-result-object v1

    .line 516
    .local v1, fs:Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;
    invoke-static {v1}, Lcom/googlecode/javacv/CameraDevice;->read(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;)[Lcom/googlecode/javacv/CameraDevice;

    move-result-object v0

    .line 517
    .local v0, devices:[Lcom/googlecode/javacv/CameraDevice;
    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;->release()V

    .line 518
    return-object v0
.end method


# virtual methods
.method public createFrameGrabber()Lcom/googlecode/javacv/FrameGrabber;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 476
    :try_start_0
    iget-object v4, p0, Lcom/googlecode/javacv/CameraDevice;->settings:Lcom/googlecode/javacv/CameraDevice$Settings;

    invoke-interface {v4}, Lcom/googlecode/javacv/CameraDevice$Settings;->getFrameGrabber()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "tryLoad"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    iget-object v4, p0, Lcom/googlecode/javacv/CameraDevice;->settings:Lcom/googlecode/javacv/CameraDevice$Settings;

    invoke-interface {v4}, Lcom/googlecode/javacv/CameraDevice$Settings;->getDeviceFile()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 479
    iget-object v4, p0, Lcom/googlecode/javacv/CameraDevice;->settings:Lcom/googlecode/javacv/CameraDevice$Settings;

    invoke-interface {v4}, Lcom/googlecode/javacv/CameraDevice$Settings;->getFrameGrabber()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/io/File;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/googlecode/javacv/CameraDevice;->settings:Lcom/googlecode/javacv/CameraDevice$Settings;

    invoke-interface {v7}, Lcom/googlecode/javacv/CameraDevice$Settings;->getDeviceFile()Ljava/io/File;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/googlecode/javacv/FrameGrabber;

    .line 490
    .local v1, f:Lcom/googlecode/javacv/FrameGrabber;
    :goto_0
    iget-object v4, p0, Lcom/googlecode/javacv/CameraDevice;->settings:Lcom/googlecode/javacv/CameraDevice$Settings;

    invoke-interface {v4}, Lcom/googlecode/javacv/CameraDevice$Settings;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/googlecode/javacv/FrameGrabber;->setFormat(Ljava/lang/String;)V

    .line 491
    iget-object v4, p0, Lcom/googlecode/javacv/CameraDevice;->settings:Lcom/googlecode/javacv/CameraDevice$Settings;

    invoke-interface {v4}, Lcom/googlecode/javacv/CameraDevice$Settings;->getImageWidth()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/googlecode/javacv/FrameGrabber;->setImageWidth(I)V

    .line 492
    iget-object v4, p0, Lcom/googlecode/javacv/CameraDevice;->settings:Lcom/googlecode/javacv/CameraDevice$Settings;

    invoke-interface {v4}, Lcom/googlecode/javacv/CameraDevice$Settings;->getImageHeight()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/googlecode/javacv/FrameGrabber;->setImageHeight(I)V

    .line 493
    iget-object v4, p0, Lcom/googlecode/javacv/CameraDevice;->settings:Lcom/googlecode/javacv/CameraDevice$Settings;

    invoke-interface {v4}, Lcom/googlecode/javacv/CameraDevice$Settings;->getFrameRate()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/googlecode/javacv/FrameGrabber;->setFrameRate(D)V

    .line 494
    iget-object v4, p0, Lcom/googlecode/javacv/CameraDevice;->settings:Lcom/googlecode/javacv/CameraDevice$Settings;

    invoke-interface {v4}, Lcom/googlecode/javacv/CameraDevice$Settings;->isTriggerMode()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/googlecode/javacv/FrameGrabber;->setTriggerMode(Z)V

    .line 495
    iget-object v4, p0, Lcom/googlecode/javacv/CameraDevice;->settings:Lcom/googlecode/javacv/CameraDevice$Settings;

    invoke-interface {v4}, Lcom/googlecode/javacv/CameraDevice$Settings;->getBitsPerPixel()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/googlecode/javacv/FrameGrabber;->setBitsPerPixel(I)V

    .line 496
    iget-object v4, p0, Lcom/googlecode/javacv/CameraDevice;->settings:Lcom/googlecode/javacv/CameraDevice$Settings;

    invoke-interface {v4}, Lcom/googlecode/javacv/CameraDevice$Settings;->getImageMode()Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/googlecode/javacv/FrameGrabber;->setImageMode(Lcom/googlecode/javacv/FrameGrabber$ImageMode;)V

    .line 497
    iget-object v4, p0, Lcom/googlecode/javacv/CameraDevice;->settings:Lcom/googlecode/javacv/CameraDevice$Settings;

    invoke-interface {v4}, Lcom/googlecode/javacv/CameraDevice$Settings;->getTimeout()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/googlecode/javacv/FrameGrabber;->setTimeout(I)V

    .line 498
    iget-object v4, p0, Lcom/googlecode/javacv/CameraDevice;->settings:Lcom/googlecode/javacv/CameraDevice$Settings;

    invoke-interface {v4}, Lcom/googlecode/javacv/CameraDevice$Settings;->getNumBuffers()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/googlecode/javacv/FrameGrabber;->setNumBuffers(I)V

    .line 499
    iget-object v4, p0, Lcom/googlecode/javacv/CameraDevice;->settings:Lcom/googlecode/javacv/CameraDevice$Settings;

    invoke-interface {v4}, Lcom/googlecode/javacv/CameraDevice$Settings;->getResponseGamma()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/googlecode/javacv/FrameGrabber;->setGamma(D)V

    .line 500
    iget-object v4, p0, Lcom/googlecode/javacv/CameraDevice;->settings:Lcom/googlecode/javacv/CameraDevice$Settings;

    invoke-interface {v4}, Lcom/googlecode/javacv/CameraDevice$Settings;->isDeinterlace()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/googlecode/javacv/FrameGrabber;->setDeinterlace(Z)V

    .line 501
    return-object v1

    .line 480
    .end local v1           #f:Lcom/googlecode/javacv/FrameGrabber;
    :cond_0
    iget-object v4, p0, Lcom/googlecode/javacv/CameraDevice;->settings:Lcom/googlecode/javacv/CameraDevice$Settings;

    invoke-interface {v4}, Lcom/googlecode/javacv/CameraDevice$Settings;->getDevicePath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/googlecode/javacv/CameraDevice;->settings:Lcom/googlecode/javacv/CameraDevice$Settings;

    invoke-interface {v4}, Lcom/googlecode/javacv/CameraDevice$Settings;->getDevicePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 481
    iget-object v4, p0, Lcom/googlecode/javacv/CameraDevice;->settings:Lcom/googlecode/javacv/CameraDevice$Settings;

    invoke-interface {v4}, Lcom/googlecode/javacv/CameraDevice$Settings;->getFrameGrabber()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/googlecode/javacv/CameraDevice;->settings:Lcom/googlecode/javacv/CameraDevice$Settings;

    invoke-interface {v7}, Lcom/googlecode/javacv/CameraDevice$Settings;->getDevicePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/googlecode/javacv/FrameGrabber;

    .restart local v1       #f:Lcom/googlecode/javacv/FrameGrabber;
    goto/16 :goto_0

    .line 483
    .end local v1           #f:Lcom/googlecode/javacv/FrameGrabber;
    :cond_1
    iget-object v4, p0, Lcom/googlecode/javacv/CameraDevice;->settings:Lcom/googlecode/javacv/CameraDevice$Settings;

    invoke-interface {v4}, Lcom/googlecode/javacv/CameraDevice$Settings;->getDeviceNumber()Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    if-nez v4, :cond_2

    .line 485
    .local v2, number:I
    :goto_1
    :try_start_1
    iget-object v4, p0, Lcom/googlecode/javacv/CameraDevice;->settings:Lcom/googlecode/javacv/CameraDevice$Settings;

    invoke-interface {v4}, Lcom/googlecode/javacv/CameraDevice$Settings;->getFrameGrabber()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/googlecode/javacv/FrameGrabber;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v1       #f:Lcom/googlecode/javacv/FrameGrabber;
    goto/16 :goto_0

    .line 483
    .end local v1           #f:Lcom/googlecode/javacv/FrameGrabber;
    .end local v2           #number:I
    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/googlecode/javacv/CameraDevice;->settings:Lcom/googlecode/javacv/CameraDevice$Settings;

    invoke-interface {v4}, Lcom/googlecode/javacv/CameraDevice$Settings;->getDeviceNumber()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    .line 486
    .restart local v2       #number:I
    :catch_0
    move-exception v0

    .line 487
    .local v0, e:Ljava/lang/NoSuchMethodException;
    iget-object v4, p0, Lcom/googlecode/javacv/CameraDevice;->settings:Lcom/googlecode/javacv/CameraDevice$Settings;

    invoke-interface {v4}, Lcom/googlecode/javacv/CameraDevice$Settings;->getFrameGrabber()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/Integer;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/googlecode/javacv/FrameGrabber;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .restart local v1       #f:Lcom/googlecode/javacv/FrameGrabber;
    goto/16 :goto_0

    .line 502
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    .end local v1           #f:Lcom/googlecode/javacv/FrameGrabber;
    .end local v2           #number:I
    :catch_1
    move-exception v3

    .line 503
    .local v3, t:Ljava/lang/Throwable;
    instance-of v4, v3, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v4, :cond_3

    .line 504
    check-cast v3, Ljava/lang/reflect/InvocationTargetException;

    .end local v3           #t:Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 506
    .restart local v3       #t:Ljava/lang/Throwable;
    :cond_3
    instance-of v4, v3, Lcom/googlecode/javacv/FrameGrabber$Exception;

    if-eqz v4, :cond_4

    .line 507
    check-cast v3, Lcom/googlecode/javacv/FrameGrabber$Exception;

    .end local v3           #t:Ljava/lang/Throwable;
    throw v3

    .line 509
    .restart local v3       #t:Ljava/lang/Throwable;
    :cond_4
    new-instance v4, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to create "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/googlecode/javacv/CameraDevice;->settings:Lcom/googlecode/javacv/CameraDevice$Settings;

    invoke-interface {v6}, Lcom/googlecode/javacv/CameraDevice$Settings;->getFrameGrabber()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public getSettings()Lcom/googlecode/javacv/ProjectiveDevice$Settings;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/googlecode/javacv/CameraDevice;->settings:Lcom/googlecode/javacv/CameraDevice$Settings;

    check-cast v0, Lcom/googlecode/javacv/ProjectiveDevice$Settings;

    return-object v0
.end method

.method public setSettings(Lcom/googlecode/javacv/CameraDevice$Settings;)V
    .locals 0
    .parameter "settings"

    .prologue
    .line 458
    check-cast p1, Lcom/googlecode/javacv/ProjectiveDevice$Settings;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/CameraDevice;->setSettings(Lcom/googlecode/javacv/ProjectiveDevice$Settings;)V

    .line 459
    return-void
.end method

.method public setSettings(Lcom/googlecode/javacv/ProjectiveDevice$Settings;)V
    .locals 6
    .parameter "settings"

    .prologue
    .line 461
    invoke-super {p0, p1}, Lcom/googlecode/javacv/ProjectiveDevice;->setSettings(Lcom/googlecode/javacv/ProjectiveDevice$Settings;)V

    .line 462
    instance-of v0, p1, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;

    if-eqz v0, :cond_2

    .line 463
    new-instance v0, Lcom/googlecode/javacv/CameraDevice$CalibrationSettings;

    check-cast p1, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;

    .end local p1
    invoke-direct {v0, p1}, Lcom/googlecode/javacv/CameraDevice$CalibrationSettings;-><init>(Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;)V

    iput-object v0, p0, Lcom/googlecode/javacv/CameraDevice;->settings:Lcom/googlecode/javacv/CameraDevice$Settings;

    .line 469
    :goto_0
    iget-object v0, p0, Lcom/googlecode/javacv/CameraDevice;->settings:Lcom/googlecode/javacv/CameraDevice$Settings;

    invoke-interface {v0}, Lcom/googlecode/javacv/CameraDevice$Settings;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/googlecode/javacv/CameraDevice;->settings:Lcom/googlecode/javacv/CameraDevice$Settings;

    invoke-interface {v0}, Lcom/googlecode/javacv/CameraDevice$Settings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/CameraDevice;->settings:Lcom/googlecode/javacv/CameraDevice$Settings;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%2d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/googlecode/javacv/CameraDevice;->settings:Lcom/googlecode/javacv/CameraDevice$Settings;

    invoke-interface {v5}, Lcom/googlecode/javacv/CameraDevice$Settings;->getDeviceNumber()Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/googlecode/javacv/CameraDevice$Settings;->setName(Ljava/lang/String;)V

    .line 472
    :cond_1
    return-void

    .line 464
    .restart local p1
    :cond_2
    instance-of v0, p1, Lcom/googlecode/javacv/ProjectiveDevice$CalibratedSettings;

    if-eqz v0, :cond_3

    .line 465
    new-instance v0, Lcom/googlecode/javacv/CameraDevice$CalibratedSettings;

    check-cast p1, Lcom/googlecode/javacv/ProjectiveDevice$CalibratedSettings;

    .end local p1
    invoke-direct {v0, p1}, Lcom/googlecode/javacv/CameraDevice$CalibratedSettings;-><init>(Lcom/googlecode/javacv/ProjectiveDevice$CalibratedSettings;)V

    iput-object v0, p0, Lcom/googlecode/javacv/CameraDevice;->settings:Lcom/googlecode/javacv/CameraDevice$Settings;

    goto :goto_0

    .line 467
    .restart local p1
    :cond_3
    new-instance v0, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;

    invoke-direct {v0, p1}, Lcom/googlecode/javacv/CameraDevice$SettingsImplementation;-><init>(Lcom/googlecode/javacv/ProjectiveDevice$Settings;)V

    iput-object v0, p0, Lcom/googlecode/javacv/CameraDevice;->settings:Lcom/googlecode/javacv/CameraDevice$Settings;

    goto :goto_0
.end method
