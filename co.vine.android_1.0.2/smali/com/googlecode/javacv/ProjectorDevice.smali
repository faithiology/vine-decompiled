.class public Lcom/googlecode/javacv/ProjectorDevice;
.super Lcom/googlecode/javacv/ProjectiveDevice;
.source "ProjectorDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/ProjectorDevice$CalibratedSettings;,
        Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;,
        Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;,
        Lcom/googlecode/javacv/ProjectorDevice$Settings;
    }
.end annotation


# static fields
.field private static B4x3:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/googlecode/javacv/cpp/opencv_core$CvMat;",
            ">;"
        }
    .end annotation
.end field

.field private static x23x1:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/googlecode/javacv/cpp/opencv_core$CvMat;",
            ">;"
        }
    .end annotation
.end field

.field private static x34x1:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/googlecode/javacv/cpp/opencv_core$CvMat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private settings:Lcom/googlecode/javacv/ProjectorDevice$Settings;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 339
    invoke-static {v3, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->createThreadLocal(II)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacv/ProjectorDevice;->B4x3:Ljava/lang/ThreadLocal;

    .line 340
    invoke-static {v2, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->createThreadLocal(II)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacv/ProjectorDevice;->x23x1:Ljava/lang/ThreadLocal;

    .line 341
    invoke-static {v3, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->createThreadLocal(II)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacv/ProjectorDevice;->x34x1:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/ProjectorDevice$Settings;)V
    .locals 0
    .parameter "settings"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/ProjectiveDevice$Exception;
        }
    .end annotation

    .prologue
    .line 50
    check-cast p1, Lcom/googlecode/javacv/ProjectiveDevice$Settings;

    .end local p1
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/ProjectiveDevice;-><init>(Lcom/googlecode/javacv/ProjectiveDevice$Settings;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/ProjectiveDevice;-><init>(Ljava/lang/String;)V

    .line 38
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
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/googlecode/javacv/ProjectiveDevice;-><init>(Ljava/lang/String;Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;)V

    .line 46
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice;->settings:Lcom/googlecode/javacv/ProjectorDevice$Settings;

    iget v1, p0, Lcom/googlecode/javacv/ProjectorDevice;->imageWidth:I

    invoke-interface {v0, v1}, Lcom/googlecode/javacv/ProjectorDevice$Settings;->setImageWidth(I)V

    .line 47
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice;->settings:Lcom/googlecode/javacv/ProjectorDevice$Settings;

    iget v1, p0, Lcom/googlecode/javacv/ProjectorDevice;->imageHeight:I

    invoke-interface {v0, v1}, Lcom/googlecode/javacv/ProjectorDevice$Settings;->setImageHeight(I)V

    .line 48
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
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/googlecode/javacv/ProjectiveDevice;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice;->settings:Lcom/googlecode/javacv/ProjectorDevice$Settings;

    iget v1, p0, Lcom/googlecode/javacv/ProjectorDevice;->imageWidth:I

    invoke-interface {v0, v1}, Lcom/googlecode/javacv/ProjectorDevice$Settings;->setImageWidth(I)V

    .line 42
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice;->settings:Lcom/googlecode/javacv/ProjectorDevice$Settings;

    iget v1, p0, Lcom/googlecode/javacv/ProjectorDevice;->imageHeight:I

    invoke-interface {v0, v1}, Lcom/googlecode/javacv/ProjectorDevice$Settings;->setImageHeight(I)V

    .line 43
    return-void
.end method

.method public static read(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;)[Lcom/googlecode/javacv/ProjectorDevice;
    .locals 9
    .parameter "fs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/ProjectiveDevice$Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 377
    const-string v7, "Projectors"

    invoke-static {p0, v8, v7}, Lcom/googlecode/javacv/cpp/opencv_core;->cvGetFileNodeByName(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;Ljava/lang/String;)Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;

    move-result-object v4

    .line 378
    .local v4, node:Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;
    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;->data_seq()Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;

    move-result-object v6

    .line 379
    .local v6, seq:Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
    invoke-virtual {v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;->total()I

    move-result v0

    .line 381
    .local v0, count:I
    new-array v1, v0, [Lcom/googlecode/javacv/ProjectorDevice;

    .line 382
    .local v1, devices:[Lcom/googlecode/javacv/ProjectorDevice;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 383
    invoke-static {v6, v2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvGetSeqElem(Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v5

    .line 384
    .local v5, p:Lcom/googlecode/javacpp/Pointer;
    if-nez v5, :cond_0

    .line 382
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 385
    :cond_0
    new-instance v7, Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;

    invoke-direct {v7, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    invoke-static {v7, v8}, Lcom/googlecode/javacv/cpp/opencv_core;->cvReadString(Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 386
    .local v3, name:Ljava/lang/String;
    new-instance v7, Lcom/googlecode/javacv/ProjectorDevice;

    invoke-direct {v7, v3, p0}, Lcom/googlecode/javacv/ProjectorDevice;-><init>(Ljava/lang/String;Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;)V

    aput-object v7, v1, v2

    goto :goto_1

    .line 388
    .end local v3           #name:Ljava/lang/String;
    .end local v5           #p:Lcom/googlecode/javacpp/Pointer;
    :cond_1
    return-object v1
.end method

.method public static read(Ljava/lang/String;)[Lcom/googlecode/javacv/ProjectorDevice;
    .locals 4
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/ProjectiveDevice$Exception;
        }
    .end annotation

    .prologue
    .line 371
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;->open(Ljava/lang/String;Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;I)Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;

    move-result-object v1

    .line 372
    .local v1, fs:Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;
    invoke-static {v1}, Lcom/googlecode/javacv/ProjectorDevice;->read(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;)[Lcom/googlecode/javacv/ProjectorDevice;

    move-result-object v0

    .line 373
    .local v0, devices:[Lcom/googlecode/javacv/ProjectorDevice;
    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;->release()V

    .line 374
    return-object v0
.end method


# virtual methods
.method public createCanvasFrame()Lcom/googlecode/javacv/CanvasFrame;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/CanvasFrame$Exception;
        }
    .end annotation

    .prologue
    .line 297
    iget-object v6, p0, Lcom/googlecode/javacv/ProjectorDevice;->settings:Lcom/googlecode/javacv/ProjectorDevice$Settings;

    invoke-interface {v6}, Lcom/googlecode/javacv/ProjectorDevice$Settings;->getScreenNumber()I

    move-result v6

    if-gez v6, :cond_1

    .line 298
    const/4 v1, 0x0

    .line 335
    :cond_0
    :goto_0
    return-object v1

    .line 300
    :cond_1
    new-instance v3, Ljava/awt/DisplayMode;

    iget-object v6, p0, Lcom/googlecode/javacv/ProjectorDevice;->settings:Lcom/googlecode/javacv/ProjectorDevice$Settings;

    invoke-interface {v6}, Lcom/googlecode/javacv/ProjectorDevice$Settings;->getImageWidth()I

    move-result v6

    iget-object v7, p0, Lcom/googlecode/javacv/ProjectorDevice;->settings:Lcom/googlecode/javacv/ProjectorDevice$Settings;

    invoke-interface {v7}, Lcom/googlecode/javacv/ProjectorDevice$Settings;->getImageHeight()I

    move-result v7

    iget-object v8, p0, Lcom/googlecode/javacv/ProjectorDevice;->settings:Lcom/googlecode/javacv/ProjectorDevice$Settings;

    invoke-interface {v8}, Lcom/googlecode/javacv/ProjectorDevice$Settings;->getBitDepth()I

    move-result v8

    iget-object v9, p0, Lcom/googlecode/javacv/ProjectorDevice;->settings:Lcom/googlecode/javacv/ProjectorDevice$Settings;

    invoke-interface {v9}, Lcom/googlecode/javacv/ProjectorDevice$Settings;->getRefreshRate()I

    move-result v9

    invoke-direct {v3, v6, v7, v8, v9}, Ljava/awt/DisplayMode;-><init>(IIII)V

    .line 302
    .local v3, d:Ljava/awt/DisplayMode;
    const/4 v1, 0x0

    .line 303
    .local v1, c:Lcom/googlecode/javacv/CanvasFrame;
    const/4 v2, 0x0

    .line 305
    .local v2, cause:Ljava/lang/Throwable;
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-class v7, Lcom/googlecode/javacv/CanvasFrame;

    invoke-virtual {v7}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Lcom/googlecode/javacv/ProjectorDevice;->settings:Lcom/googlecode/javacv/ProjectorDevice$Settings;

    invoke-interface {v6}, Lcom/googlecode/javacv/ProjectorDevice$Settings;->isUseOpenGL()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, ".GLCanvasFrame"

    :goto_1
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-class v7, Lcom/googlecode/javacv/CanvasFrame;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-class v9, Ljava/awt/DisplayMode;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/googlecode/javacv/ProjectorDevice;->settings:Lcom/googlecode/javacv/ProjectorDevice$Settings;

    invoke-interface {v9}, Lcom/googlecode/javacv/ProjectorDevice$Settings;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/googlecode/javacv/ProjectorDevice;->settings:Lcom/googlecode/javacv/ProjectorDevice$Settings;

    invoke-interface {v9}, Lcom/googlecode/javacv/ProjectorDevice$Settings;->getScreenNumber()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object v3, v7, v8

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/googlecode/javacv/ProjectorDevice;->settings:Lcom/googlecode/javacv/ProjectorDevice$Settings;

    invoke-interface {v9}, Lcom/googlecode/javacv/ProjectorDevice$Settings;->getResponseGamma()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/googlecode/javacv/CanvasFrame;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5

    .line 321
    :goto_2
    if-eqz v2, :cond_4

    .line 322
    instance-of v6, v2, Lcom/googlecode/javacv/CanvasFrame$Exception;

    if-eqz v6, :cond_3

    .line 323
    check-cast v2, Lcom/googlecode/javacv/CanvasFrame$Exception;

    .end local v2           #cause:Ljava/lang/Throwable;
    throw v2

    .line 305
    .restart local v2       #cause:Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    const-string v6, ".CanvasFrame"
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_1

    .line 308
    :catch_0
    move-exception v4

    .line 309
    .local v4, ex:Ljava/lang/ClassNotFoundException;
    move-object v2, v4

    .line 320
    goto :goto_2

    .line 310
    .end local v4           #ex:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v4

    .line 311
    .local v4, ex:Ljava/lang/InstantiationException;
    move-object v2, v4

    .line 320
    goto :goto_2

    .line 312
    .end local v4           #ex:Ljava/lang/InstantiationException;
    :catch_2
    move-exception v4

    .line 313
    .local v4, ex:Ljava/lang/IllegalAccessException;
    move-object v2, v4

    .line 320
    goto :goto_2

    .line 314
    .end local v4           #ex:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v4

    .line 315
    .local v4, ex:Ljava/lang/IllegalArgumentException;
    move-object v2, v4

    .line 320
    goto :goto_2

    .line 316
    .end local v4           #ex:Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v4

    .line 317
    .local v4, ex:Ljava/lang/NoSuchMethodException;
    move-object v2, v4

    .line 320
    goto :goto_2

    .line 318
    .end local v4           #ex:Ljava/lang/NoSuchMethodException;
    :catch_5
    move-exception v4

    .line 319
    .local v4, ex:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    goto :goto_2

    .line 325
    .end local v4           #ex:Ljava/lang/reflect/InvocationTargetException;
    :cond_3
    new-instance v6, Lcom/googlecode/javacv/CanvasFrame$Exception;

    const-string v7, "Failed to create CanvasFrame"

    invoke-direct {v6, v7, v2}, Lcom/googlecode/javacv/CanvasFrame$Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 328
    :cond_4
    iget-object v6, p0, Lcom/googlecode/javacv/ProjectorDevice;->settings:Lcom/googlecode/javacv/ProjectorDevice$Settings;

    invoke-interface {v6}, Lcom/googlecode/javacv/ProjectorDevice$Settings;->getLatency()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/googlecode/javacv/CanvasFrame;->setLatency(J)V

    .line 330
    invoke-virtual {v1}, Lcom/googlecode/javacv/CanvasFrame;->getCanvasSize()Ljava/awt/Dimension;

    move-result-object v5

    .line 331
    .local v5, size:Ljava/awt/Dimension;
    iget v6, v5, Ljava/awt/Dimension;->width:I

    iget v7, p0, Lcom/googlecode/javacv/ProjectorDevice;->imageWidth:I

    if-ne v6, v7, :cond_5

    iget v6, v5, Ljava/awt/Dimension;->height:I

    iget v7, p0, Lcom/googlecode/javacv/ProjectorDevice;->imageHeight:I

    if-eq v6, v7, :cond_0

    .line 332
    :cond_5
    iget v6, v5, Ljava/awt/Dimension;->width:I

    iget v7, v5, Ljava/awt/Dimension;->height:I

    invoke-virtual {p0, v6, v7}, Lcom/googlecode/javacv/ProjectorDevice;->rescale(II)V

    goto/16 :goto_0
.end method

.method public getAttenuation(DDLcom/googlecode/javacv/cpp/opencv_core$CvMat;D)D
    .locals 28
    .parameter "x"
    .parameter "y"
    .parameter "n"
    .parameter "d"

    .prologue
    .line 343
    sget-object v5, Lcom/googlecode/javacv/ProjectorDevice;->B4x3:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 344
    .local v18, B:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    sget-object v5, Lcom/googlecode/javacv/ProjectorDevice;->x23x1:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 345
    .local v12, x2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    sget-object v5, Lcom/googlecode/javacv/ProjectorDevice;->x34x1:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 347
    .local v27, x3:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-wide/from16 v2, p6

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/googlecode/javacv/ProjectorDevice;->getBackProjectionMatrix(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;DLcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 348
    const/4 v5, 0x3

    new-array v5, v5, [D

    const/4 v6, 0x0

    aput-wide p1, v5, v6

    const/4 v6, 0x1

    aput-wide p3, v5, v6

    const/4 v6, 0x2

    const-wide/high16 v7, 0x3ff0

    aput-wide v7, v5, v6

    invoke-virtual {v12, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put([D)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 349
    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-static {v0, v12, v1}, Lcom/googlecode/javacv/cpp/opencv_core;->cvMatMul(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 356
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/ProjectorDevice;->R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/googlecode/javacv/ProjectorDevice;->T:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const-wide/high16 v7, -0x4010

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v13, 0x1

    invoke-static/range {v5 .. v13}, Lcom/googlecode/javacv/cpp/opencv_core;->cvGEMM(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;DLcom/googlecode/javacv/cpp/opencv_core$CvArr;DLcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V

    .line 357
    const/4 v5, 0x3

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->rows(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 358
    const-wide/high16 v5, 0x3ff0

    const/4 v7, 0x3

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v7

    div-double v10, v5, v7

    const-wide/high16 v13, -0x4010

    const-wide/16 v15, 0x0

    move-object/from16 v9, v27

    move-object/from16 v17, v12

    invoke-static/range {v9 .. v17}, Lcom/googlecode/javacv/cpp/opencv_core;->cvAddWeighted(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;DLcom/googlecode/javacv/cpp/opencv_core$CvArr;DDLcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 359
    invoke-static {v12, v12}, Lcom/googlecode/javacv/cpp/opencv_core;->cvDotProduct(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)D

    move-result-wide v25

    .line 360
    .local v25, distance2:D
    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v23

    .line 361
    .local v23, distance:D
    invoke-static/range {p6 .. p7}, Ljava/lang/Math;->signum(D)D

    move-result-wide v5

    neg-double v5, v5

    move-object/from16 v0, p5

    invoke-static {v12, v0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvDotProduct(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)D

    move-result-wide v7

    mul-double/2addr v5, v7

    move-object/from16 v0, p5

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core;->cvDotProduct(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    mul-double v7, v7, v23

    div-double v21, v5, v7

    .line 363
    .local v21, cosangle:D
    div-double v19, v21, v25

    .line 365
    .local v19, attenuation:D
    const/4 v5, 0x4

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->rows(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 367
    return-wide v19
.end method

.method public getSettings()Lcom/googlecode/javacv/ProjectiveDevice$Settings;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice;->settings:Lcom/googlecode/javacv/ProjectorDevice$Settings;

    check-cast v0, Lcom/googlecode/javacv/ProjectiveDevice$Settings;

    return-object v0
.end method

.method public setSettings(Lcom/googlecode/javacv/ProjectiveDevice$Settings;)V
    .locals 6
    .parameter "settings"

    .prologue
    .line 283
    invoke-super {p0, p1}, Lcom/googlecode/javacv/ProjectiveDevice;->setSettings(Lcom/googlecode/javacv/ProjectiveDevice$Settings;)V

    .line 284
    instance-of v0, p1, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;

    if-eqz v0, :cond_2

    .line 285
    new-instance v0, Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;

    check-cast p1, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;

    .end local p1
    invoke-direct {v0, p1}, Lcom/googlecode/javacv/ProjectorDevice$CalibrationSettings;-><init>(Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;)V

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice;->settings:Lcom/googlecode/javacv/ProjectorDevice$Settings;

    .line 291
    :goto_0
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice;->settings:Lcom/googlecode/javacv/ProjectorDevice$Settings;

    invoke-interface {v0}, Lcom/googlecode/javacv/ProjectorDevice$Settings;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice;->settings:Lcom/googlecode/javacv/ProjectorDevice$Settings;

    invoke-interface {v0}, Lcom/googlecode/javacv/ProjectorDevice$Settings;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice;->settings:Lcom/googlecode/javacv/ProjectorDevice$Settings;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Projector "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%2d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/googlecode/javacv/ProjectorDevice;->settings:Lcom/googlecode/javacv/ProjectorDevice$Settings;

    invoke-interface {v5}, Lcom/googlecode/javacv/ProjectorDevice$Settings;->getScreenNumber()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/googlecode/javacv/ProjectorDevice$Settings;->setName(Ljava/lang/String;)V

    .line 294
    :cond_1
    return-void

    .line 286
    .restart local p1
    :cond_2
    instance-of v0, p1, Lcom/googlecode/javacv/ProjectiveDevice$CalibratedSettings;

    if-eqz v0, :cond_3

    .line 287
    new-instance v0, Lcom/googlecode/javacv/ProjectorDevice$CalibratedSettings;

    check-cast p1, Lcom/googlecode/javacv/ProjectiveDevice$CalibratedSettings;

    .end local p1
    invoke-direct {v0, p1}, Lcom/googlecode/javacv/ProjectorDevice$CalibratedSettings;-><init>(Lcom/googlecode/javacv/ProjectiveDevice$CalibratedSettings;)V

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice;->settings:Lcom/googlecode/javacv/ProjectorDevice$Settings;

    goto :goto_0

    .line 289
    .restart local p1
    :cond_3
    new-instance v0, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;

    invoke-direct {v0, p1}, Lcom/googlecode/javacv/ProjectorDevice$SettingsImplementation;-><init>(Lcom/googlecode/javacv/ProjectiveDevice$Settings;)V

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectorDevice;->settings:Lcom/googlecode/javacv/ProjectorDevice$Settings;

    goto :goto_0
.end method

.method public setSettings(Lcom/googlecode/javacv/ProjectorDevice$Settings;)V
    .locals 0
    .parameter "settings"

    .prologue
    .line 280
    check-cast p1, Lcom/googlecode/javacv/ProjectiveDevice$Settings;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/ProjectorDevice;->setSettings(Lcom/googlecode/javacv/ProjectiveDevice$Settings;)V

    .line 281
    return-void
.end method
