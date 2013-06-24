.class public Lcom/googlecode/javacv/ProCamColorCalibrator;
.super Ljava/lang/Object;
.source "ProCamColorCalibrator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/ProCamColorCalibrator$Settings;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static H3x3:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/googlecode/javacv/cpp/opencv_core$CvMat;",
            ">;"
        }
    .end annotation
.end field

.field private static R3x3:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/googlecode/javacv/cpp/opencv_core$CvMat;",
            ">;"
        }
    .end annotation
.end field

.field private static n3x1:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/googlecode/javacv/cpp/opencv_core$CvMat;",
            ">;"
        }
    .end annotation
.end field

.field private static t3x1:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/googlecode/javacv/cpp/opencv_core$CvMat;",
            ">;"
        }
    .end annotation
.end field

.field private static z3x1:Ljava/lang/ThreadLocal;
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
.field private boardDstPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field private boardPlane:Lcom/googlecode/javacv/MarkedPlane;

.field private boardSrcPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field private camKinv:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field private camera:Lcom/googlecode/javacv/CameraDevice;

.field private cameraColors:[Ljava/awt/Color;

.field private counter:I

.field private markerDetector:Lcom/googlecode/javacv/MarkerDetector;

.field private mask:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

.field private mask2:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

.field private projDstPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field private projSrcPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field private projector:Lcom/googlecode/javacv/ProjectorDevice;

.field private projectorColors:[Ljava/awt/Color;

.field private settings:Lcom/googlecode/javacv/ProCamColorCalibrator$Settings;

.field private undistImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x3

    .line 32
    const-class v0, Lcom/googlecode/javacv/ProCamColorCalibrator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->$assertionsDisabled:Z

    .line 190
    invoke-static {v2, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->createThreadLocal(II)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->H3x3:Ljava/lang/ThreadLocal;

    .line 191
    invoke-static {v2, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->createThreadLocal(II)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->R3x3:Ljava/lang/ThreadLocal;

    .line 192
    invoke-static {v2, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->createThreadLocal(II)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->t3x1:Ljava/lang/ThreadLocal;

    .line 193
    invoke-static {v2, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->createThreadLocal(II)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->n3x1:Ljava/lang/ThreadLocal;

    .line 194
    invoke-static {v2, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->createThreadLocal(II)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->z3x1:Ljava/lang/ThreadLocal;

    return-void

    .line 32
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/googlecode/javacv/ProCamColorCalibrator$Settings;Lcom/googlecode/javacv/MarkerDetector$Settings;Lcom/googlecode/javacv/MarkedPlane;Lcom/googlecode/javacv/CameraDevice;Lcom/googlecode/javacv/ProjectorDevice;)V
    .locals 7
    .parameter "settings"
    .parameter "detectorSettings"
    .parameter "boardPlane"
    .parameter "camera"
    .parameter "projector"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/googlecode/javacv/ProCamColorCalibrator;->markerDetector:Lcom/googlecode/javacv/MarkerDetector;

    .line 94
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/googlecode/javacv/ProCamColorCalibrator;->boardPlane:Lcom/googlecode/javacv/MarkedPlane;

    .line 95
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/googlecode/javacv/ProCamColorCalibrator;->camera:Lcom/googlecode/javacv/CameraDevice;

    .line 96
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/googlecode/javacv/ProCamColorCalibrator;->projector:Lcom/googlecode/javacv/ProjectorDevice;

    .line 97
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/googlecode/javacv/ProCamColorCalibrator;->projectorColors:[Ljava/awt/Color;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/googlecode/javacv/ProCamColorCalibrator;->cameraColors:[Ljava/awt/Color;

    .line 98
    const/4 v2, 0x0

    iput v2, p0, Lcom/googlecode/javacv/ProCamColorCalibrator;->counter:I

    .line 36
    iput-object p1, p0, Lcom/googlecode/javacv/ProCamColorCalibrator;->settings:Lcom/googlecode/javacv/ProCamColorCalibrator$Settings;

    .line 37
    new-instance v2, Lcom/googlecode/javacv/MarkerDetector;

    invoke-direct {v2, p2}, Lcom/googlecode/javacv/MarkerDetector;-><init>(Lcom/googlecode/javacv/MarkerDetector$Settings;)V

    iput-object v2, p0, Lcom/googlecode/javacv/ProCamColorCalibrator;->markerDetector:Lcom/googlecode/javacv/MarkerDetector;

    .line 38
    iput-object p3, p0, Lcom/googlecode/javacv/ProCamColorCalibrator;->boardPlane:Lcom/googlecode/javacv/MarkedPlane;

    .line 39
    iput-object p4, p0, Lcom/googlecode/javacv/ProCamColorCalibrator;->camera:Lcom/googlecode/javacv/CameraDevice;

    .line 40
    iput-object p5, p0, Lcom/googlecode/javacv/ProCamColorCalibrator;->projector:Lcom/googlecode/javacv/ProjectorDevice;

    .line 42
    invoke-virtual {p3}, Lcom/googlecode/javacv/MarkedPlane;->getMarkers()[Lcom/googlecode/javacv/Marker;

    move-result-object v0

    .line 43
    .local v0, boardMarkers:[Lcom/googlecode/javacv/Marker;
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x6

    const/4 v5, 0x2

    invoke-static {v2, v3, v4, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v2

    iput-object v2, p0, Lcom/googlecode/javacv/ProCamColorCalibrator;->boardSrcPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 44
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x6

    const/4 v5, 0x2

    invoke-static {v2, v3, v4, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v2

    iput-object v2, p0, Lcom/googlecode/javacv/ProCamColorCalibrator;->boardDstPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 45
    iget-object v2, p0, Lcom/googlecode/javacv/ProCamColorCalibrator;->boardSrcPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/16 v3, 0x8

    new-array v3, v3, [D

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    aput-wide v5, v3, v4

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    aput-wide v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p3}, Lcom/googlecode/javacv/MarkedPlane;->getWidth()I

    move-result v5

    int-to-double v5, v5

    aput-wide v5, v3, v4

    const/4 v4, 0x3

    const-wide/16 v5, 0x0

    aput-wide v5, v3, v4

    const/4 v4, 0x4

    invoke-virtual {p3}, Lcom/googlecode/javacv/MarkedPlane;->getWidth()I

    move-result v5

    int-to-double v5, v5

    aput-wide v5, v3, v4

    const/4 v4, 0x5

    invoke-virtual {p3}, Lcom/googlecode/javacv/MarkedPlane;->getHeight()I

    move-result v5

    int-to-double v5, v5

    aput-wide v5, v3, v4

    const/4 v4, 0x6

    const-wide/16 v5, 0x0

    aput-wide v5, v3, v4

    const/4 v4, 0x7

    invoke-virtual {p3}, Lcom/googlecode/javacv/MarkedPlane;->getHeight()I

    move-result v5

    int-to-double v5, v5

    aput-wide v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put([D)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 49
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 50
    iget-object v2, p0, Lcom/googlecode/javacv/ProCamColorCalibrator;->boardSrcPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    mul-int/lit8 v3, v1, 0x8

    add-int/lit8 v3, v3, 0x8

    aget-object v4, v0, v1

    iget-object v4, v4, Lcom/googlecode/javacv/Marker;->corners:[D

    invoke-virtual {v2, v3, v4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(I[D)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    :cond_0
    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x6

    const/4 v5, 0x2

    invoke-static {v2, v3, v4, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v2

    iput-object v2, p0, Lcom/googlecode/javacv/ProCamColorCalibrator;->projSrcPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 53
    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x6

    const/4 v5, 0x2

    invoke-static {v2, v3, v4, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v2

    iput-object v2, p0, Lcom/googlecode/javacv/ProCamColorCalibrator;->projDstPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 54
    iget-object v2, p0, Lcom/googlecode/javacv/ProCamColorCalibrator;->projSrcPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/16 v3, 0x8

    new-array v3, v3, [D

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    aput-wide v5, v3, v4

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    aput-wide v5, v3, v4

    const/4 v4, 0x2

    iget v5, p5, Lcom/googlecode/javacv/ProjectorDevice;->imageWidth:I

    add-int/lit8 v5, v5, -0x1

    int-to-double v5, v5

    aput-wide v5, v3, v4

    const/4 v4, 0x3

    const-wide/16 v5, 0x0

    aput-wide v5, v3, v4

    const/4 v4, 0x4

    iget v5, p5, Lcom/googlecode/javacv/ProjectorDevice;->imageWidth:I

    add-int/lit8 v5, v5, -0x1

    int-to-double v5, v5

    aput-wide v5, v3, v4

    const/4 v4, 0x5

    iget v5, p5, Lcom/googlecode/javacv/ProjectorDevice;->imageHeight:I

    add-int/lit8 v5, v5, -0x1

    int-to-double v5, v5

    aput-wide v5, v3, v4

    const/4 v4, 0x6

    const-wide/16 v5, 0x0

    aput-wide v5, v3, v4

    const/4 v4, 0x7

    iget v5, p5, Lcom/googlecode/javacv/ProjectorDevice;->imageHeight:I

    add-int/lit8 v5, v5, -0x1

    int-to-double v5, v5

    aput-wide v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put([D)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 58
    const/4 v2, 0x3

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v2

    iput-object v2, p0, Lcom/googlecode/javacv/ProCamColorCalibrator;->camKinv:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 60
    iget-object v2, p4, Lcom/googlecode/javacv/CameraDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v3, p0, Lcom/googlecode/javacv/ProCamColorCalibrator;->camKinv:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core;->cvInvert(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)D

    .line 62
    return-void
.end method


# virtual methods
.method public addCameraColor()V
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/googlecode/javacv/ProCamColorCalibrator;->counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/googlecode/javacv/ProCamColorCalibrator;->counter:I

    .line 139
    return-void
.end method

.method public addCameraColor(Ljava/awt/Color;)V
    .locals 3
    .parameter "color"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamColorCalibrator;->cameraColors:[Ljava/awt/Color;

    iget v1, p0, Lcom/googlecode/javacv/ProCamColorCalibrator;->counter:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/googlecode/javacv/ProCamColorCalibrator;->counter:I

    aput-object p1, v0, v1

    .line 142
    return-void
.end method

.method public calibrate()D
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 318
    invoke-virtual {p0}, Lcom/googlecode/javacv/ProCamColorCalibrator;->getCameraColors()[Ljava/awt/Color;

    move-result-object v1

    .line 319
    .local v1, cc:[Ljava/awt/Color;
    invoke-virtual {p0}, Lcom/googlecode/javacv/ProCamColorCalibrator;->getProjectorColors()[Ljava/awt/Color;

    move-result-object v2

    .line 320
    .local v2, pc:[Ljava/awt/Color;
    sget-boolean v3, Lcom/googlecode/javacv/ProCamColorCalibrator;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    iget v3, p0, Lcom/googlecode/javacv/ProCamColorCalibrator;->counter:I

    array-length v4, v2

    if-eq v3, v4, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 322
    :cond_0
    new-instance v0, Lcom/googlecode/javacv/ColorCalibrator;

    iget-object v3, p0, Lcom/googlecode/javacv/ProCamColorCalibrator;->projector:Lcom/googlecode/javacv/ProjectorDevice;

    invoke-direct {v0, v3}, Lcom/googlecode/javacv/ColorCalibrator;-><init>(Lcom/googlecode/javacv/ProjectiveDevice;)V

    .line 323
    .local v0, calibrator:Lcom/googlecode/javacv/ColorCalibrator;
    iget-object v3, p0, Lcom/googlecode/javacv/ProCamColorCalibrator;->projector:Lcom/googlecode/javacv/ProjectorDevice;

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacv/ColorCalibrator;->calibrate([Ljava/awt/Color;[Ljava/awt/Color;)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/googlecode/javacv/ProjectorDevice;->avgColorErr:D

    .line 324
    iget-object v3, p0, Lcom/googlecode/javacv/ProCamColorCalibrator;->camera:Lcom/googlecode/javacv/CameraDevice;

    invoke-static {v6, v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v4

    iput-object v4, v3, Lcom/googlecode/javacv/CameraDevice;->colorMixingMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 325
    iget-object v3, p0, Lcom/googlecode/javacv/ProCamColorCalibrator;->camera:Lcom/googlecode/javacv/CameraDevice;

    const/4 v4, 0x1

    invoke-static {v6, v4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v4

    iput-object v4, v3, Lcom/googlecode/javacv/CameraDevice;->additiveLight:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 326
    iget-object v3, p0, Lcom/googlecode/javacv/ProCamColorCalibrator;->camera:Lcom/googlecode/javacv/CameraDevice;

    iget-object v3, v3, Lcom/googlecode/javacv/CameraDevice;->colorMixingMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v3}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSetIdentity(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 327
    iget-object v3, p0, Lcom/googlecode/javacv/ProCamColorCalibrator;->camera:Lcom/googlecode/javacv/CameraDevice;

    iget-object v3, v3, Lcom/googlecode/javacv/CameraDevice;->additiveLight:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v3}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSetZero(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 328
    const/4 v3, 0x0

    iput v3, p0, Lcom/googlecode/javacv/ProCamColorCalibrator;->counter:I

    .line 329
    iget-object v3, p0, Lcom/googlecode/javacv/ProCamColorCalibrator;->projector:Lcom/googlecode/javacv/ProjectorDevice;

    iget-wide v3, v3, Lcom/googlecode/javacv/ProjectorDevice;->avgColorErr:D

    return-wide v3
.end method

.method public getCameraColor()Ljava/awt/Color;
    .locals 2

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/googlecode/javacv/ProCamColorCalibrator;->getCameraColors()[Ljava/awt/Color;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/javacv/ProCamColorCalibrator;->counter:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getCameraColors()[Ljava/awt/Color;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamColorCalibrator;->cameraColors:[Ljava/awt/Color;

    return-object v0
.end method

.method public getColorCount()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/googlecode/javacv/ProCamColorCalibrator;->counter:I

    return v0
.end method

.method public getMaskImage()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamColorCalibrator;->mask:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    return-object v0
.end method

.method public getProjectorColor()Ljava/awt/Color;
    .locals 2

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/googlecode/javacv/ProCamColorCalibrator;->getProjectorColors()[Ljava/awt/Color;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/javacv/ProCamColorCalibrator;->counter:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getProjectorColors()[Ljava/awt/Color;
    .locals 18

    .prologue
    .line 110
    const-wide/high16 v13, 0x3ff0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->projector:Lcom/googlecode/javacv/ProjectorDevice;

    invoke-virtual {v15}, Lcom/googlecode/javacv/ProjectorDevice;->getSettings()Lcom/googlecode/javacv/ProjectiveDevice$Settings;

    move-result-object v15

    invoke-virtual {v15}, Lcom/googlecode/javacv/ProjectiveDevice$Settings;->getResponseGamma()D

    move-result-wide v15

    div-double v6, v13, v15

    .line 111
    .local v6, invgamma:D
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->settings:Lcom/googlecode/javacv/ProCamColorCalibrator$Settings;

    iget v12, v13, Lcom/googlecode/javacv/ProCamColorCalibrator$Settings;->samplesPerChannel:I

    .line 112
    .local v12, s:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->projectorColors:[Ljava/awt/Color;

    if-nez v13, :cond_0

    .line 113
    mul-int v13, v12, v12

    mul-int/2addr v13, v12

    new-array v13, v13, [Ljava/awt/Color;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->projectorColors:[Ljava/awt/Color;

    .line 114
    mul-int v13, v12, v12

    mul-int/2addr v13, v12

    new-array v13, v13, [Ljava/awt/Color;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->cameraColors:[Ljava/awt/Color;

    .line 115
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->projectorColors:[Ljava/awt/Color;

    array-length v13, v13

    if-ge v5, v13, :cond_0

    .line 116
    div-int v8, v5, v12

    .line 117
    .local v8, j:I
    div-int v9, v8, v12

    .line 118
    .local v9, k:I
    rem-int v13, v5, v12

    int-to-double v13, v13

    add-int/lit8 v15, v12, -0x1

    int-to-double v15, v15

    div-double/2addr v13, v15

    invoke-static {v13, v14, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    .line 119
    .local v10, r:D
    rem-int v13, v8, v12

    int-to-double v13, v13

    add-int/lit8 v15, v12, -0x1

    int-to-double v15, v15

    div-double/2addr v13, v15

    invoke-static {v13, v14, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    .line 120
    .local v3, g:D
    rem-int v13, v9, v12

    int-to-double v13, v13

    add-int/lit8 v15, v12, -0x1

    int-to-double v15, v15

    div-double/2addr v13, v15

    invoke-static {v13, v14, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    .line 121
    .local v1, b:D
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->projectorColors:[Ljava/awt/Color;

    new-instance v14, Ljava/awt/Color;

    double-to-float v15, v10

    double-to-float v0, v3

    move/from16 v16, v0

    double-to-float v0, v1

    move/from16 v17, v0

    invoke-direct/range {v14 .. v17}, Ljava/awt/Color;-><init>(FFF)V

    aput-object v14, v13, v5

    .line 115
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 124
    .end local v1           #b:D
    .end local v3           #g:D
    .end local v5           #i:I
    .end local v8           #j:I
    .end local v9           #k:I
    .end local v10           #r:D
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->projectorColors:[Ljava/awt/Color;

    return-object v13
.end method

.method public getUndistortedCameraImage()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamColorCalibrator;->undistImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    return-object v0
.end method

.method public processCameraImage(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Z
    .locals 37
    .parameter "cameraImage"

    .prologue
    .line 196
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->undistImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->undistImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v6

    if-ne v4, v6, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->undistImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v6

    if-ne v4, v6, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->undistImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v6

    if-eq v4, v6, :cond_1

    .line 200
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->clone()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->undistImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 203
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->mask:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->mask2:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->mask:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v6

    if-ne v4, v6, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->mask2:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v6

    if-ne v4, v6, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->mask:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v6

    if-ne v4, v6, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->mask2:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v6

    if-eq v4, v6, :cond_3

    .line 206
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v6

    const/16 v7, 0x8

    const/4 v8, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->origin()I

    move-result v9

    invoke-static {v4, v6, v7, v8, v9}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->mask:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 208
    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v6

    const/16 v7, 0x8

    const/4 v8, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->origin()I

    move-result v9

    invoke-static {v4, v6, v7, v8, v9}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->mask2:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 212
    :cond_3
    sget-object v4, Lcom/googlecode/javacv/ProCamColorCalibrator;->H3x3:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 213
    .local v11, H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    sget-object v4, Lcom/googlecode/javacv/ProCamColorCalibrator;->R3x3:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 214
    .local v18, R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    sget-object v4, Lcom/googlecode/javacv/ProCamColorCalibrator;->t3x1:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 215
    .local v35, t:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    sget-object v4, Lcom/googlecode/javacv/ProCamColorCalibrator;->n3x1:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 216
    .local v5, n:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    sget-object v4, Lcom/googlecode/javacv/ProCamColorCalibrator;->z3x1:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 217
    .local v36, z:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    const/4 v4, 0x3

    new-array v4, v4, [D

    fill-array-data v4, :array_0

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put([D)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 222
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->camera:Lcom/googlecode/javacv/CameraDevice;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->undistImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6}, Lcom/googlecode/javacv/CameraDevice;->undistort(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    .line 223
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->markerDetector:Lcom/googlecode/javacv/MarkerDetector;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->undistImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/googlecode/javacv/MarkerDetector;->detect(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Z)[Lcom/googlecode/javacv/Marker;

    move-result-object v27

    .line 224
    .local v27, detectedBoardMarkers:[Lcom/googlecode/javacv/Marker;
    move-object/from16 v0, v27

    array-length v4, v0

    int-to-double v6, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->boardPlane:Lcom/googlecode/javacv/MarkedPlane;

    invoke-virtual {v4}, Lcom/googlecode/javacv/MarkedPlane;->getMarkers()[Lcom/googlecode/javacv/Marker;

    move-result-object v4

    array-length v4, v4

    int-to-double v8, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->settings:Lcom/googlecode/javacv/ProCamColorCalibrator$Settings;

    iget-wide v12, v4, Lcom/googlecode/javacv/ProCamColorCalibrator$Settings;->detectedBoardMin:D

    mul-double/2addr v8, v12

    cmpl-double v4, v6, v8

    if-ltz v4, :cond_9

    .line 228
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->boardPlane:Lcom/googlecode/javacv/MarkedPlane;

    move-object/from16 v0, v27

    invoke-virtual {v4, v0, v11}, Lcom/googlecode/javacv/MarkedPlane;->getTotalWarp([Lcom/googlecode/javacv/Marker;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)D

    .line 229
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->boardSrcPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->boardDstPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v4, v6, v11}, Lcom/googlecode/javacv/cpp/opencv_core;->cvPerspectiveTransform(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->boardDstPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get()[D

    move-result-object v19

    .line 234
    .local v19, boardPts:[D
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->camKinv:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, v18

    invoke-static {v4, v11, v0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvMatMul(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 235
    move-object/from16 v0, v18

    move-object/from16 v1, v36

    move-object/from16 v2, v18

    move-object/from16 v3, v35

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/javacv/JavaCV;->HnToRt(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)D

    move-result-wide v28

    .line 241
    .local v28, error:D
    move-object/from16 v0, v18

    move-object/from16 v1, v36

    invoke-static {v0, v1, v5}, Lcom/googlecode/javacv/cpp/opencv_core;->cvMatMul(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 242
    invoke-static/range {v35 .. v36}, Lcom/googlecode/javacv/cpp/opencv_core;->cvDotProduct(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)D

    move-result-wide v25

    .line 246
    .local v25, d:D
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->projector:Lcom/googlecode/javacv/ProjectorDevice;

    iget-object v4, v4, Lcom/googlecode/javacv/ProjectorDevice;->T:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const-wide/high16 v6, -0x4010

    div-double v6, v6, v25

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->projector:Lcom/googlecode/javacv/ProjectorDevice;

    iget-object v8, v8, Lcom/googlecode/javacv/ProjectorDevice;->R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const-wide/high16 v9, 0x3ff0

    const/4 v12, 0x2

    invoke-static/range {v4 .. v12}, Lcom/googlecode/javacv/cpp/opencv_core;->cvGEMM(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;DLcom/googlecode/javacv/cpp/opencv_core$CvArr;DLcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V

    .line 247
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->projector:Lcom/googlecode/javacv/ProjectorDevice;

    iget-object v4, v4, Lcom/googlecode/javacv/ProjectorDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v4, v11, v11}, Lcom/googlecode/javacv/cpp/opencv_core;->cvMatMul(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 248
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->camKinv:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v11, v4, v11}, Lcom/googlecode/javacv/cpp/opencv_core;->cvMatMul(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 249
    const-wide/high16 v6, 0x3ff0

    const/16 v4, 0x8

    invoke-virtual {v11, v4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v8

    div-double v13, v6, v8

    const-wide/16 v15, 0x0

    move-object v12, v11

    invoke-static/range {v11 .. v16}, Lcom/googlecode/javacv/cpp/opencv_core;->cvConvertScale(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;DD)V

    .line 253
    invoke-static {v11, v11}, Lcom/googlecode/javacv/cpp/opencv_core;->cvInvert(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)D

    .line 254
    const-wide/high16 v6, 0x3ff0

    const/16 v4, 0x8

    invoke-virtual {v11, v4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v8

    div-double v13, v6, v8

    const-wide/16 v15, 0x0

    move-object v12, v11

    invoke-static/range {v11 .. v16}, Lcom/googlecode/javacv/cpp/opencv_core;->cvConvertScale(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;DD)V

    .line 257
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->projSrcPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->projDstPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v4, v6, v11}, Lcom/googlecode/javacv/cpp/opencv_core;->cvPerspectiveTransform(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->projDstPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get()[D

    move-result-object v32

    .line 262
    .local v32, projPts:[D
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->mask:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-static {v4}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSetZero(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 263
    const-wide/16 v21, 0x0

    .local v21, cx:D
    const-wide/16 v23, 0x0

    .line 264
    .local v23, cy:D
    const/16 v30, 0x0

    .local v30, j:I
    :goto_0
    const/4 v4, 0x4

    move/from16 v0, v30

    if-ge v0, v4, :cond_4

    .line 265
    mul-int/lit8 v4, v30, 0x2

    aget-wide v6, v19, v4

    add-double v21, v21, v6

    .line 266
    mul-int/lit8 v4, v30, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-wide v6, v19, v4

    add-double v23, v23, v6

    .line 264
    add-int/lit8 v30, v30, 0x1

    goto :goto_0

    .line 268
    :cond_4
    const-wide/high16 v6, 0x4010

    div-double v21, v21, v6

    const-wide/high16 v6, 0x4010

    div-double v23, v23, v6

    .line 269
    const/16 v30, 0x0

    :goto_1
    const/4 v4, 0x4

    move/from16 v0, v30

    if-ge v0, v4, :cond_5

    .line 270
    mul-int/lit8 v4, v30, 0x2

    aget-wide v6, v19, v4

    mul-int/lit8 v8, v30, 0x2

    aget-wide v8, v19, v8

    sub-double v8, v8, v21

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->settings:Lcom/googlecode/javacv/ProCamColorCalibrator$Settings;

    iget-wide v12, v10, Lcom/googlecode/javacv/ProCamColorCalibrator$Settings;->trimmingFraction:D

    mul-double/2addr v8, v12

    sub-double/2addr v6, v8

    aput-wide v6, v19, v4

    .line 271
    mul-int/lit8 v4, v30, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-wide v6, v19, v4

    mul-int/lit8 v8, v30, 0x2

    add-int/lit8 v8, v8, 0x1

    aget-wide v8, v19, v8

    sub-double v8, v8, v23

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->settings:Lcom/googlecode/javacv/ProCamColorCalibrator$Settings;

    iget-wide v12, v10, Lcom/googlecode/javacv/ProCamColorCalibrator$Settings;->trimmingFraction:D

    mul-double/2addr v8, v12

    sub-double/2addr v6, v8

    aput-wide v6, v19, v4

    .line 269
    add-int/lit8 v30, v30, 0x1

    goto :goto_1

    .line 273
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->mask:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    new-instance v13, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    const/16 v4, 0x10

    const/4 v6, 0x0

    const/16 v7, 0x8

    move-object/from16 v0, v19

    invoke-direct {v13, v4, v0, v6, v7}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;-><init>(B[DII)V

    const/4 v14, 0x4

    sget-object v15, Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;->WHITE:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    const/16 v16, 0x8

    const/16 v17, 0x10

    invoke-static/range {v12 .. v17}, Lcom/googlecode/javacv/cpp/opencv_core;->cvFillConvexPoly(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;ILcom/googlecode/javacv/cpp/opencv_core$CvScalar;II)V

    .line 276
    const/16 v30, 0x0

    :goto_2
    move-object/from16 v0, v19

    array-length v4, v0

    add-int/lit8 v4, v4, -0x8

    div-int/lit8 v4, v4, 0x8

    move/from16 v0, v30

    if-ge v0, v4, :cond_6

    .line 277
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->mask:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    new-instance v13, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    const/16 v4, 0x10

    mul-int/lit8 v6, v30, 0x8

    add-int/lit8 v6, v6, 0x8

    const/16 v7, 0x8

    move-object/from16 v0, v19

    invoke-direct {v13, v4, v0, v6, v7}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;-><init>(B[DII)V

    const/4 v14, 0x4

    sget-object v15, Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;->BLACK:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    const/16 v16, 0x8

    const/16 v17, 0x10

    invoke-static/range {v12 .. v17}, Lcom/googlecode/javacv/cpp/opencv_core;->cvFillConvexPoly(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;ILcom/googlecode/javacv/cpp/opencv_core$CvScalar;II)V

    .line 276
    add-int/lit8 v30, v30, 0x1

    goto :goto_2

    .line 281
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->mask2:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-static {v4}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSetZero(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 282
    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    .line 283
    const/16 v30, 0x0

    :goto_3
    const/4 v4, 0x4

    move/from16 v0, v30

    if-ge v0, v4, :cond_7

    .line 284
    mul-int/lit8 v4, v30, 0x2

    aget-wide v6, v32, v4

    add-double v21, v21, v6

    .line 285
    mul-int/lit8 v4, v30, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-wide v6, v32, v4

    add-double v23, v23, v6

    .line 283
    add-int/lit8 v30, v30, 0x1

    goto :goto_3

    .line 287
    :cond_7
    const-wide/high16 v6, 0x4010

    div-double v21, v21, v6

    const-wide/high16 v6, 0x4010

    div-double v23, v23, v6

    .line 288
    const/16 v30, 0x0

    :goto_4
    const/4 v4, 0x4

    move/from16 v0, v30

    if-ge v0, v4, :cond_8

    .line 289
    mul-int/lit8 v4, v30, 0x2

    aget-wide v6, v32, v4

    mul-int/lit8 v8, v30, 0x2

    aget-wide v8, v32, v8

    sub-double v8, v8, v21

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->settings:Lcom/googlecode/javacv/ProCamColorCalibrator$Settings;

    iget-wide v12, v10, Lcom/googlecode/javacv/ProCamColorCalibrator$Settings;->trimmingFraction:D

    mul-double/2addr v8, v12

    sub-double/2addr v6, v8

    aput-wide v6, v32, v4

    .line 290
    mul-int/lit8 v4, v30, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-wide v6, v32, v4

    mul-int/lit8 v8, v30, 0x2

    add-int/lit8 v8, v8, 0x1

    aget-wide v8, v32, v8

    sub-double v8, v8, v23

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->settings:Lcom/googlecode/javacv/ProCamColorCalibrator$Settings;

    iget-wide v12, v10, Lcom/googlecode/javacv/ProCamColorCalibrator$Settings;->trimmingFraction:D

    mul-double/2addr v8, v12

    sub-double/2addr v6, v8

    aput-wide v6, v32, v4

    .line 288
    add-int/lit8 v30, v30, 0x1

    goto :goto_4

    .line 292
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->mask2:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    new-instance v13, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    const/16 v4, 0x10

    const/4 v6, 0x0

    const/16 v7, 0x8

    move-object/from16 v0, v32

    invoke-direct {v13, v4, v0, v6, v7}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;-><init>(B[DII)V

    const/4 v14, 0x4

    sget-object v15, Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;->WHITE:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    const/16 v16, 0x8

    const/16 v17, 0x10

    invoke-static/range {v12 .. v17}, Lcom/googlecode/javacv/cpp/opencv_core;->cvFillConvexPoly(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;ILcom/googlecode/javacv/cpp/opencv_core$CvScalar;II)V

    .line 295
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->mask:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->mask2:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->mask:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    const/4 v8, 0x0

    invoke-static {v4, v6, v7, v8}, Lcom/googlecode/javacv/cpp/opencv_core;->cvAnd(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->mask:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->mask:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v4, v6, v7, v8}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvErode(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernel;I)V

    .line 305
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->undistImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->mask:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-static {v4, v6}, Lcom/googlecode/javacv/cpp/opencv_core;->cvAvg(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    move-result-object v20

    .line 306
    .local v20, c:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->camera:Lcom/googlecode/javacv/CameraDevice;

    invoke-virtual {v4}, Lcom/googlecode/javacv/CameraDevice;->getRGBColorOrder()[I

    move-result-object v31

    .line 307
    .local v31, o:[I
    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->highValue()D

    move-result-wide v33

    .line 308
    .local v33, s:D
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->cameraColors:[Ljava/awt/Color;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/googlecode/javacv/ProCamColorCalibrator;->counter:I

    new-instance v7, Ljava/awt/Color;

    const/4 v8, 0x0

    aget v8, v31, v8

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;->val(I)D

    move-result-wide v8

    div-double v8, v8, v33

    double-to-float v8, v8

    const/4 v9, 0x1

    aget v9, v31, v9

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;->val(I)D

    move-result-wide v9

    div-double v9, v9, v33

    double-to-float v9, v9

    const/4 v10, 0x2

    aget v10, v31, v10

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;->val(I)D

    move-result-wide v12

    div-double v12, v12, v33

    double-to-float v10, v12

    invoke-direct {v7, v8, v9, v10}, Ljava/awt/Color;-><init>(FFF)V

    aput-object v7, v4, v6

    .line 311
    const/4 v4, 0x1

    .line 314
    .end local v19           #boardPts:[D
    .end local v20           #c:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;
    .end local v21           #cx:D
    .end local v23           #cy:D
    .end local v25           #d:D
    .end local v28           #error:D
    .end local v30           #j:I
    .end local v31           #o:[I
    .end local v32           #projPts:[D
    .end local v33           #s:D
    :goto_5
    return v4

    :cond_9
    const/4 v4, 0x0

    goto :goto_5

    .line 217
    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xf0t 0x3ft
    .end array-data
.end method
