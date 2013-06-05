.class public Lcom/googlecode/javacv/ProCamGeometricCalibrator;
.super Ljava/lang/Object;
.source "ProCamGeometricCalibrator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/ProCamGeometricCalibrator$Settings;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static tempWarp3x3:Ljava/lang/ThreadLocal;
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
.field private final LSB_IMAGE_SHIFT:I

.field private final MSB_IMAGE_SHIFT:I

.field allImagedBoardMarkers:[Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/LinkedList",
            "<[",
            "Lcom/googlecode/javacv/Marker;",
            ">;"
        }
    .end annotation
.end field

.field private final boardPlane:Lcom/googlecode/javacv/MarkedPlane;

.field private boardWarp:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field private final boardWarpSrcPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field private cameraCalibrators:[Lcom/googlecode/javacv/GeometricCalibrator;

.field private detectorSettings:Lcom/googlecode/javacv/MarkerDetector$Settings;

.field private grayscaleImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

.field private lastBoardWarp:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field private lastDetectedMarkers1:[[Lcom/googlecode/javacv/Marker;

.field private lastDetectedMarkers2:[[Lcom/googlecode/javacv/Marker;

.field private markerDetectors:[Lcom/googlecode/javacv/MarkerDetector;

.field private prevBoardWarp:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field private projWarp:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field private final projectorCalibrator:Lcom/googlecode/javacv/GeometricCalibrator;

.field private final projectorPlane:Lcom/googlecode/javacv/MarkedPlane;

.field private rmseBoardWarp:[D

.field private rmseProjWarp:[D

.field private settings:Lcom/googlecode/javacv/ProCamGeometricCalibrator$Settings;

.field private tempImage1:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

.field private tempImage2:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

.field private tempPts1:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field private tempPts2:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field private updatePrewarp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 34
    const-class v0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->$assertionsDisabled:Z

    .line 310
    invoke-static {v1, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->createThreadLocal(II)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->tempWarp3x3:Ljava/lang/ThreadLocal;

    return-void

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/googlecode/javacv/ProCamGeometricCalibrator$Settings;Lcom/googlecode/javacv/MarkerDetector$Settings;Lcom/googlecode/javacv/MarkedPlane;Lcom/googlecode/javacv/MarkedPlane;Lcom/googlecode/javacv/ProjectiveDevice;Lcom/googlecode/javacv/ProjectiveDevice;)V
    .locals 7
    .parameter "settings"
    .parameter "detectorSettings"
    .parameter "boardPlane"
    .parameter "projectorPlane"
    .parameter "camera"
    .parameter "projector"

    .prologue
    .line 38
    const/4 v0, 0x1

    new-array v5, v0, [Lcom/googlecode/javacv/GeometricCalibrator;

    const/4 v0, 0x0

    new-instance v1, Lcom/googlecode/javacv/GeometricCalibrator;

    invoke-direct {v1, p1, p2, p3, p5}, Lcom/googlecode/javacv/GeometricCalibrator;-><init>(Lcom/googlecode/javacv/GeometricCalibrator$Settings;Lcom/googlecode/javacv/MarkerDetector$Settings;Lcom/googlecode/javacv/MarkedPlane;Lcom/googlecode/javacv/ProjectiveDevice;)V

    aput-object v1, v5, v0

    new-instance v6, Lcom/googlecode/javacv/GeometricCalibrator;

    invoke-direct {v6, p1, p2, p4, p6}, Lcom/googlecode/javacv/GeometricCalibrator;-><init>(Lcom/googlecode/javacv/GeometricCalibrator$Settings;Lcom/googlecode/javacv/MarkerDetector$Settings;Lcom/googlecode/javacv/MarkedPlane;Lcom/googlecode/javacv/ProjectiveDevice;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/googlecode/javacv/ProCamGeometricCalibrator;-><init>(Lcom/googlecode/javacv/ProCamGeometricCalibrator$Settings;Lcom/googlecode/javacv/MarkerDetector$Settings;Lcom/googlecode/javacv/MarkedPlane;Lcom/googlecode/javacv/MarkedPlane;[Lcom/googlecode/javacv/GeometricCalibrator;Lcom/googlecode/javacv/GeometricCalibrator;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/ProCamGeometricCalibrator$Settings;Lcom/googlecode/javacv/MarkerDetector$Settings;Lcom/googlecode/javacv/MarkedPlane;Lcom/googlecode/javacv/MarkedPlane;[Lcom/googlecode/javacv/GeometricCalibrator;Lcom/googlecode/javacv/GeometricCalibrator;)V
    .locals 9
    .parameter "settings"
    .parameter "detectorSettings"
    .parameter "boardPlane"
    .parameter "projectorPlane"
    .parameter "cameraCalibrators"
    .parameter "projectorCalibrator"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/16 v4, 0x8

    iput v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->MSB_IMAGE_SHIFT:I

    const/4 v4, 0x7

    iput v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->LSB_IMAGE_SHIFT:I

    .line 153
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->updatePrewarp:Z

    .line 47
    iput-object p1, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->settings:Lcom/googlecode/javacv/ProCamGeometricCalibrator$Settings;

    .line 48
    iput-object p2, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->detectorSettings:Lcom/googlecode/javacv/MarkerDetector$Settings;

    .line 49
    iput-object p3, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->boardPlane:Lcom/googlecode/javacv/MarkedPlane;

    .line 50
    iput-object p4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->projectorPlane:Lcom/googlecode/javacv/MarkedPlane;

    .line 52
    iput-object p5, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->cameraCalibrators:[Lcom/googlecode/javacv/GeometricCalibrator;

    .line 53
    array-length v2, p5

    .line 54
    .local v2, n:I
    new-array v4, v2, [Lcom/googlecode/javacv/MarkerDetector;

    iput-object v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->markerDetectors:[Lcom/googlecode/javacv/MarkerDetector;

    .line 56
    new-array v4, v2, [Ljava/util/LinkedList;

    iput-object v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->allImagedBoardMarkers:[Ljava/util/LinkedList;

    .line 57
    new-array v4, v2, [Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iput-object v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->grayscaleImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 58
    new-array v4, v2, [Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iput-object v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->tempImage1:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 59
    new-array v4, v2, [Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iput-object v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->tempImage2:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 60
    new-array v4, v2, [[Lcom/googlecode/javacv/Marker;

    iput-object v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->lastDetectedMarkers1:[[Lcom/googlecode/javacv/Marker;

    .line 61
    new-array v4, v2, [[Lcom/googlecode/javacv/Marker;

    iput-object v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->lastDetectedMarkers2:[[Lcom/googlecode/javacv/Marker;

    .line 62
    new-array v4, v2, [D

    iput-object v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->rmseBoardWarp:[D

    .line 63
    new-array v4, v2, [D

    iput-object v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->rmseProjWarp:[D

    .line 64
    new-array v4, v2, [Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iput-object v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->boardWarp:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 65
    new-array v4, v2, [Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iput-object v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->projWarp:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 66
    new-array v4, v2, [Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iput-object v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->prevBoardWarp:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 67
    new-array v4, v2, [Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iput-object v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->lastBoardWarp:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 68
    new-array v4, v2, [Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iput-object v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->tempPts1:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 69
    new-array v4, v2, [Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iput-object v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->tempPts2:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 70
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 71
    iget-object v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->markerDetectors:[Lcom/googlecode/javacv/MarkerDetector;

    new-instance v5, Lcom/googlecode/javacv/MarkerDetector;

    invoke-direct {v5, p2}, Lcom/googlecode/javacv/MarkerDetector;-><init>(Lcom/googlecode/javacv/MarkerDetector$Settings;)V

    aput-object v5, v4, v1

    .line 72
    iget-object v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->allImagedBoardMarkers:[Ljava/util/LinkedList;

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    aput-object v5, v4, v1

    .line 73
    iget-object v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->grayscaleImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    const/4 v5, 0x0

    aput-object v5, v4, v1

    .line 74
    iget-object v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->tempImage1:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    const/4 v5, 0x0

    aput-object v5, v4, v1

    .line 75
    iget-object v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->tempImage2:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    const/4 v5, 0x0

    aput-object v5, v4, v1

    .line 76
    iget-object v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->lastDetectedMarkers1:[[Lcom/googlecode/javacv/Marker;

    const/4 v5, 0x0

    aput-object v5, v4, v1

    .line 77
    iget-object v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->lastDetectedMarkers2:[[Lcom/googlecode/javacv/Marker;

    const/4 v5, 0x0

    aput-object v5, v4, v1

    .line 78
    iget-object v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->rmseBoardWarp:[D

    const-wide/high16 v5, 0x7ff0

    aput-wide v5, v4, v1

    .line 79
    iget-object v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->rmseProjWarp:[D

    const-wide/high16 v5, 0x7ff0

    aput-wide v5, v4, v1

    .line 80
    iget-object v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->boardWarp:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v5, 0x3

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v5

    aput-object v5, v4, v1

    .line 81
    iget-object v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->projWarp:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v5, 0x3

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v5

    aput-object v5, v4, v1

    .line 82
    iget-object v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->prevBoardWarp:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v5, 0x3

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v5

    aput-object v5, v4, v1

    .line 83
    iget-object v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->lastBoardWarp:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v5, 0x3

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v5

    aput-object v5, v4, v1

    .line 84
    iget-object v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->prevBoardWarp:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    aget-object v4, v4, v1

    invoke-static {v4}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSetIdentity(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 85
    iget-object v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->lastBoardWarp:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    aget-object v4, v4, v1

    invoke-static {v4}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSetIdentity(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 86
    iget-object v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->tempPts1:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x6

    const/4 v8, 0x2

    invoke-static {v5, v6, v7, v8}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v5

    aput-object v5, v4, v1

    .line 87
    iget-object v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->tempPts2:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x6

    const/4 v8, 0x2

    invoke-static {v5, v6, v7, v8}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v5

    aput-object v5, v4, v1

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 89
    :cond_0
    iput-object p6, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->projectorCalibrator:Lcom/googlecode/javacv/GeometricCalibrator;

    .line 91
    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x6

    const/4 v7, 0x2

    invoke-static {v4, v5, v6, v7}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v4

    iput-object v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->boardWarpSrcPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 92
    if-eqz p3, :cond_1

    .line 93
    invoke-virtual {p3}, Lcom/googlecode/javacv/MarkedPlane;->getImage()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v3

    .line 94
    .local v3, w:I
    invoke-virtual {p3}, Lcom/googlecode/javacv/MarkedPlane;->getImage()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v0

    .line 95
    .local v0, h:I
    iget-object v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->boardWarpSrcPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/16 v5, 0x8

    new-array v5, v5, [D

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    aput-wide v7, v5, v6

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    aput-wide v7, v5, v6

    const/4 v6, 0x2

    int-to-double v7, v3

    aput-wide v7, v5, v6

    const/4 v6, 0x3

    const-wide/16 v7, 0x0

    aput-wide v7, v5, v6

    const/4 v6, 0x4

    int-to-double v7, v3

    aput-wide v7, v5, v6

    const/4 v6, 0x5

    int-to-double v7, v0

    aput-wide v7, v5, v6

    const/4 v6, 0x6

    const-wide/16 v7, 0x0

    aput-wide v7, v5, v6

    const/4 v6, 0x7

    int-to-double v7, v0

    aput-wide v7, v5, v6

    invoke-virtual {v4, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put([D)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 97
    .end local v0           #h:I
    .end local v3           #w:I
    :cond_1
    if-eqz p4, :cond_2

    .line 98
    invoke-virtual {p4}, Lcom/googlecode/javacv/MarkedPlane;->getImage()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v3

    .line 99
    .restart local v3       #w:I
    invoke-virtual {p4}, Lcom/googlecode/javacv/MarkedPlane;->getImage()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v0

    .line 100
    .restart local v0       #h:I
    invoke-virtual {p6}, Lcom/googlecode/javacv/GeometricCalibrator;->getProjectiveDevice()Lcom/googlecode/javacv/ProjectiveDevice;

    move-result-object v4

    iput v3, v4, Lcom/googlecode/javacv/ProjectiveDevice;->imageWidth:I

    .line 101
    invoke-virtual {p6}, Lcom/googlecode/javacv/GeometricCalibrator;->getProjectiveDevice()Lcom/googlecode/javacv/ProjectiveDevice;

    move-result-object v4

    iput v0, v4, Lcom/googlecode/javacv/ProjectiveDevice;->imageHeight:I

    .line 103
    .end local v0           #h:I
    .end local v3           #w:I
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/googlecode/javacv/ProCamGeometricCalibrator;)[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->grayscaleImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    return-object v0
.end method

.method static synthetic access$100(Lcom/googlecode/javacv/ProCamGeometricCalibrator;)[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->tempImage1:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    return-object v0
.end method

.method static synthetic access$200(Lcom/googlecode/javacv/ProCamGeometricCalibrator;)[[Lcom/googlecode/javacv/Marker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->lastDetectedMarkers1:[[Lcom/googlecode/javacv/Marker;

    return-object v0
.end method

.method static synthetic access$300(Lcom/googlecode/javacv/ProCamGeometricCalibrator;)[Lcom/googlecode/javacv/GeometricCalibrator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->cameraCalibrators:[Lcom/googlecode/javacv/GeometricCalibrator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/googlecode/javacv/ProCamGeometricCalibrator;)[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->tempImage2:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    return-object v0
.end method

.method static synthetic access$500(Lcom/googlecode/javacv/ProCamGeometricCalibrator;)[[Lcom/googlecode/javacv/Marker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->lastDetectedMarkers2:[[Lcom/googlecode/javacv/Marker;

    return-object v0
.end method

.method static synthetic access$600(Lcom/googlecode/javacv/ProCamGeometricCalibrator;)[Lcom/googlecode/javacv/MarkerDetector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->markerDetectors:[Lcom/googlecode/javacv/MarkerDetector;

    return-object v0
.end method


# virtual methods
.method public addMarkers()V
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->addMarkers(I)V

    .line 302
    return-void
.end method

.method public addMarkers(I)V
    .locals 2
    .parameter "cameraNumber"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->lastDetectedMarkers1:[[Lcom/googlecode/javacv/Marker;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->lastDetectedMarkers2:[[Lcom/googlecode/javacv/Marker;

    aget-object v1, v1, p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->addMarkers([Lcom/googlecode/javacv/Marker;[Lcom/googlecode/javacv/Marker;I)V

    .line 305
    return-void
.end method

.method public addMarkers([Lcom/googlecode/javacv/Marker;[Lcom/googlecode/javacv/Marker;)V
    .locals 1
    .parameter "imagedBoardMarkers"
    .parameter "imagedProjectorMarkers"

    .prologue
    .line 307
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->addMarkers([Lcom/googlecode/javacv/Marker;[Lcom/googlecode/javacv/Marker;I)V

    .line 308
    return-void
.end method

.method public addMarkers([Lcom/googlecode/javacv/Marker;[Lcom/googlecode/javacv/Marker;I)V
    .locals 21
    .parameter "imagedBoardMarkers"
    .parameter "imagedProjectorMarkers"
    .parameter "cameraNumber"

    .prologue
    .line 313
    sget-object v17, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->tempWarp3x3:Ljava/lang/ThreadLocal;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 315
    .local v13, tempWarp:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->settings:Lcom/googlecode/javacv/ProCamGeometricCalibrator$Settings;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/googlecode/javacv/ProCamGeometricCalibrator$Settings;->useOnlyIntersection:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->cameraCalibrators:[Lcom/googlecode/javacv/GeometricCalibrator;

    move-object/from16 v17, v0

    aget-object v17, v17, p3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->boardPlane:Lcom/googlecode/javacv/MarkedPlane;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/MarkedPlane;->getMarkers()[Lcom/googlecode/javacv/Marker;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacv/GeometricCalibrator;->addMarkers([Lcom/googlecode/javacv/Marker;[Lcom/googlecode/javacv/Marker;)V

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->allImagedBoardMarkers:[Ljava/util/LinkedList;

    move-object/from16 v17, v0

    aget-object v17, v17, p3

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 354
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->projectorPlane:Lcom/googlecode/javacv/MarkedPlane;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/MarkedPlane;->getMarkers()[Lcom/googlecode/javacv/Marker;

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v12, v0, [Lcom/googlecode/javacv/Marker;

    .line 355
    .local v12, prewrappedProjMarkers:[Lcom/googlecode/javacv/Marker;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    array-length v0, v12

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_7

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->projectorPlane:Lcom/googlecode/javacv/MarkedPlane;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/MarkedPlane;->getMarkers()[Lcom/googlecode/javacv/Marker;

    move-result-object v17

    aget-object v17, v17, v7

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/Marker;->clone()Lcom/googlecode/javacv/Marker;

    move-result-object v17

    aput-object v17, v12, v7

    .line 355
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 321
    .end local v7           #i:I
    .end local v12           #prewrappedProjMarkers:[Lcom/googlecode/javacv/Marker;
    :cond_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v8, v0, [Lcom/googlecode/javacv/Marker;

    .line 322
    .local v8, inProjectorBoardMarkers:[Lcom/googlecode/javacv/Marker;
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_2
    array-length v0, v8

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_1

    .line 323
    aget-object v17, p1, v7

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/Marker;->clone()Lcom/googlecode/javacv/Marker;

    move-result-object v17

    aput-object v17, v8, v7

    .line 322
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 325
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->projWarp:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v17, v0

    aget-object v17, v17, p3

    move-object/from16 v0, v17

    invoke-static {v0, v13}, Lcom/googlecode/javacv/cpp/opencv_core;->cvInvert(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)D

    .line 326
    invoke-static {v8, v13}, Lcom/googlecode/javacv/Marker;->applyWarp([Lcom/googlecode/javacv/Marker;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->projectorPlane:Lcom/googlecode/javacv/MarkedPlane;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/MarkedPlane;->getImage()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v16

    .line 330
    .local v16, w:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->projectorPlane:Lcom/googlecode/javacv/MarkedPlane;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/MarkedPlane;->getImage()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v6

    .line 331
    .local v6, h:I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v4, v0, [Lcom/googlecode/javacv/Marker;

    .line 332
    .local v4, boardMarkersToAdd:[Lcom/googlecode/javacv/Marker;
    const/4 v14, 0x0

    .line 333
    .local v14, totalToAdd:I
    const/4 v7, 0x0

    :goto_3
    array-length v0, v8

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_6

    .line 334
    aget-object v17, v8, v7

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/googlecode/javacv/Marker;->corners:[D

    .line 335
    .local v5, c:[D
    const/4 v11, 0x0

    .line 336
    .local v11, outside:Z
    const/4 v9, 0x0

    .local v9, j:I
    :goto_4
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ge v9, v0, :cond_3

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->detectorSettings:Lcom/googlecode/javacv/MarkerDetector$Settings;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/googlecode/javacv/MarkerDetector$Settings;->subPixelWindow:I

    move/from16 v17, v0

    div-int/lit8 v10, v17, 0x2

    .line 338
    .local v10, margin:I
    mul-int/lit8 v17, v9, 0x2

    aget-wide v17, v5, v17

    int-to-double v0, v10

    move-wide/from16 v19, v0

    cmpg-double v17, v17, v19

    if-ltz v17, :cond_2

    mul-int/lit8 v17, v9, 0x2

    aget-wide v17, v5, v17

    sub-int v19, v16, v10

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    cmpl-double v17, v17, v19

    if-gez v17, :cond_2

    mul-int/lit8 v17, v9, 0x2

    add-int/lit8 v17, v17, 0x1

    aget-wide v17, v5, v17

    int-to-double v0, v10

    move-wide/from16 v19, v0

    cmpg-double v17, v17, v19

    if-ltz v17, :cond_2

    mul-int/lit8 v17, v9, 0x2

    add-int/lit8 v17, v17, 0x1

    aget-wide v17, v5, v17

    sub-int v19, v6, v10

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    cmpl-double v17, v17, v19

    if-ltz v17, :cond_5

    .line 340
    :cond_2
    const/4 v11, 0x1

    .line 344
    .end local v10           #margin:I
    :cond_3
    if-nez v11, :cond_4

    .line 345
    add-int/lit8 v15, v14, 0x1

    .end local v14           #totalToAdd:I
    .local v15, totalToAdd:I
    aget-object v17, p1, v7

    aput-object v17, v4, v14

    move v14, v15

    .line 333
    .end local v15           #totalToAdd:I
    .restart local v14       #totalToAdd:I
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 336
    .restart local v10       #margin:I
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 348
    .end local v5           #c:[D
    .end local v9           #j:I
    .end local v10           #margin:I
    .end local v11           #outside:Z
    :cond_6
    invoke-static {v4, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/googlecode/javacv/Marker;

    .line 349
    .local v3, a:[Lcom/googlecode/javacv/Marker;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->cameraCalibrators:[Lcom/googlecode/javacv/GeometricCalibrator;

    move-object/from16 v17, v0

    aget-object v17, v17, p3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->boardPlane:Lcom/googlecode/javacv/MarkedPlane;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/MarkedPlane;->getMarkers()[Lcom/googlecode/javacv/Marker;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3}, Lcom/googlecode/javacv/GeometricCalibrator;->addMarkers([Lcom/googlecode/javacv/Marker;[Lcom/googlecode/javacv/Marker;)V

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->allImagedBoardMarkers:[Ljava/util/LinkedList;

    move-object/from16 v17, v0

    aget-object v17, v17, p3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 359
    .end local v3           #a:[Lcom/googlecode/javacv/Marker;
    .end local v4           #boardMarkersToAdd:[Lcom/googlecode/javacv/Marker;
    .end local v6           #h:I
    .end local v8           #inProjectorBoardMarkers:[Lcom/googlecode/javacv/Marker;
    .end local v14           #totalToAdd:I
    .end local v16           #w:I
    .restart local v12       #prewrappedProjMarkers:[Lcom/googlecode/javacv/Marker;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->projectorPlane:Lcom/googlecode/javacv/MarkedPlane;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/MarkedPlane;->getPrewarp()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v12, v0}, Lcom/googlecode/javacv/Marker;->applyWarp([Lcom/googlecode/javacv/Marker;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->projectorCalibrator:Lcom/googlecode/javacv/GeometricCalibrator;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 362
    :goto_5
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->projectorCalibrator:Lcom/googlecode/javacv/GeometricCalibrator;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/GeometricCalibrator;->getImageCount()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->cameraCalibrators:[Lcom/googlecode/javacv/GeometricCalibrator;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    rem-int v17, v17, v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v0, v17

    move/from16 v1, p3

    if-ge v0, v1, :cond_8

    .line 364
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->projectorCalibrator:Lcom/googlecode/javacv/GeometricCalibrator;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 365
    :catch_0
    move-exception v17

    goto :goto_5

    .line 367
    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->projectorCalibrator:Lcom/googlecode/javacv/GeometricCalibrator;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v12}, Lcom/googlecode/javacv/GeometricCalibrator;->addMarkers([Lcom/googlecode/javacv/Marker;[Lcom/googlecode/javacv/Marker;)V

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->projectorCalibrator:Lcom/googlecode/javacv/GeometricCalibrator;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->notify()V

    .line 369
    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->boardWarp:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v17, v0

    aget-object v17, v17, p3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->lastBoardWarp:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v18, v0

    aget-object v18, v18, p3

    invoke-static/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/opencv_core;->cvCopy(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 373
    return-void

    .line 369
    :catchall_0
    move-exception v17

    :try_start_3
    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v17
.end method

.method public calibrate(ZZ)[D
    .locals 1
    .parameter "useCenters"
    .parameter "calibrateCameras"

    .prologue
    .line 399
    invoke-virtual {p0, p1, p2}, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->calibrate(ZZ)[D

    move-result-object v0

    return-object v0
.end method

.method public calibrate(ZZI)[D
    .locals 27
    .parameter "useCenters"
    .parameter "calibrateCameras"
    .parameter "cameraAtOrigin"

    .prologue
    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->cameraCalibrators:[Lcom/googlecode/javacv/GeometricCalibrator;

    move-object/from16 v23, v0

    aget-object v5, v23, p3

    .line 406
    .local v5, calibratorAtOrigin:Lcom/googlecode/javacv/GeometricCalibrator;
    if-eqz p2, :cond_1

    .line 407
    const/4 v6, 0x0

    .local v6, cameraNumber:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->cameraCalibrators:[Lcom/googlecode/javacv/GeometricCalibrator;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v6, v0, :cond_1

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->cameraCalibrators:[Lcom/googlecode/javacv/GeometricCalibrator;

    move-object/from16 v23, v0

    aget-object v23, v23, v6

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/GeometricCalibrator;->calibrate(Z)[D

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->cameraCalibrators:[Lcom/googlecode/javacv/GeometricCalibrator;

    move-object/from16 v23, v0

    aget-object v23, v23, v6

    move-object/from16 v0, v23

    if-eq v0, v5, :cond_0

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->cameraCalibrators:[Lcom/googlecode/javacv/GeometricCalibrator;

    move-object/from16 v23, v0

    aget-object v23, v23, v6

    move/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Lcom/googlecode/javacv/GeometricCalibrator;->calibrateStereo(ZLcom/googlecode/javacv/GeometricCalibrator;)[D

    .line 407
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 420
    .end local v6           #cameraNumber:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->projectorCalibrator:Lcom/googlecode/javacv/GeometricCalibrator;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/googlecode/javacv/GeometricCalibrator;->getAllObjectMarkers()Ljava/util/LinkedList;

    move-result-object v3

    .line 421
    .local v3, allDistortedProjectorMarkers:Ljava/util/LinkedList;,"Ljava/util/LinkedList<[Lcom/googlecode/javacv/Marker;>;"
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 422
    .local v9, distortedProjectorMarkersAtOrigin:Ljava/util/LinkedList;,"Ljava/util/LinkedList<[Lcom/googlecode/javacv/Marker;>;"
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 423
    .local v4, allUndistortedProjectorMarkers:Ljava/util/LinkedList;,"Ljava/util/LinkedList<[Lcom/googlecode/javacv/Marker;>;"
    new-instance v22, Ljava/util/LinkedList;

    invoke-direct/range {v22 .. v22}, Ljava/util/LinkedList;-><init>()V

    .line 424
    .local v22, undistortedProjectorMarkersAtOrigin:Ljava/util/LinkedList;,"Ljava/util/LinkedList<[Lcom/googlecode/javacv/Marker;>;"
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 426
    .local v14, ip:Ljava/util/Iterator;,"Ljava/util/Iterator<[Lcom/googlecode/javacv/Marker;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->cameraCalibrators:[Lcom/googlecode/javacv/GeometricCalibrator;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v12, v0, [Ljava/util/Iterator;

    .line 427
    .local v12, ib:[Ljava/util/Iterator;,"[Ljava/util/Iterator<[Lcom/googlecode/javacv/Marker;>;"
    const/4 v6, 0x0

    .restart local v6       #cameraNumber:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->cameraCalibrators:[Lcom/googlecode/javacv/GeometricCalibrator;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v6, v0, :cond_2

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->allImagedBoardMarkers:[Ljava/util/LinkedList;

    move-object/from16 v23, v0

    aget-object v23, v23, v6

    invoke-virtual/range {v23 .. v23}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    aput-object v23, v12, v6

    .line 427
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 433
    :cond_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_7

    .line 434
    const/4 v6, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->cameraCalibrators:[Lcom/googlecode/javacv/GeometricCalibrator;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v6, v0, :cond_2

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->settings:Lcom/googlecode/javacv/ProCamGeometricCalibrator$Settings;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/googlecode/javacv/ProCamGeometricCalibrator$Settings;->prewarpUpdateErrorMax:D

    move-wide/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->cameraCalibrators:[Lcom/googlecode/javacv/GeometricCalibrator;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    invoke-virtual/range {v25 .. v25}, Lcom/googlecode/javacv/GeometricCalibrator;->getProjectiveDevice()Lcom/googlecode/javacv/ProjectiveDevice;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Lcom/googlecode/javacv/ProjectiveDevice;->imageWidth:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->cameraCalibrators:[Lcom/googlecode/javacv/GeometricCalibrator;

    move-object/from16 v26, v0

    aget-object v26, v26, v6

    invoke-virtual/range {v26 .. v26}, Lcom/googlecode/javacv/GeometricCalibrator;->getProjectiveDevice()Lcom/googlecode/javacv/ProjectiveDevice;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Lcom/googlecode/javacv/ProjectiveDevice;->imageHeight:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    mul-double v23, v23, v25

    const-wide/high16 v25, 0x4000

    div-double v16, v23, v25

    .line 439
    .local v16, maxError:D
    aget-object v23, v12, v6

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/googlecode/javacv/Marker;

    .line 440
    .local v7, distortedBoardMarkers:[Lcom/googlecode/javacv/Marker;
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/googlecode/javacv/Marker;

    .line 441
    .local v8, distortedProjectorMarkers:[Lcom/googlecode/javacv/Marker;
    array-length v0, v7

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v0, v0, [Lcom/googlecode/javacv/Marker;

    move-object/from16 v20, v0

    .line 442
    .local v20, undistortedBoardMarkers:[Lcom/googlecode/javacv/Marker;
    array-length v0, v8

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v0, v0, [Lcom/googlecode/javacv/Marker;

    move-object/from16 v21, v0

    .line 445
    .local v21, undistortedProjectorMarkers:[Lcom/googlecode/javacv/Marker;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_3
    array-length v0, v7

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v11, v0, :cond_3

    .line 446
    aget-object v23, v7, v11

    invoke-virtual/range {v23 .. v23}, Lcom/googlecode/javacv/Marker;->clone()Lcom/googlecode/javacv/Marker;

    move-result-object v15

    aput-object v15, v20, v11

    .line 447
    .local v15, m:Lcom/googlecode/javacv/Marker;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->cameraCalibrators:[Lcom/googlecode/javacv/GeometricCalibrator;

    move-object/from16 v23, v0

    aget-object v23, v23, v6

    invoke-virtual/range {v23 .. v23}, Lcom/googlecode/javacv/GeometricCalibrator;->getProjectiveDevice()Lcom/googlecode/javacv/ProjectiveDevice;

    move-result-object v23

    iget-object v0, v15, Lcom/googlecode/javacv/Marker;->corners:[D

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/googlecode/javacv/ProjectiveDevice;->undistort([D)[D

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v15, Lcom/googlecode/javacv/Marker;->corners:[D

    .line 445
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 449
    .end local v15           #m:Lcom/googlecode/javacv/Marker;
    :cond_3
    const/4 v11, 0x0

    :goto_4
    array-length v0, v8

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v11, v0, :cond_4

    .line 450
    aget-object v23, v8, v11

    invoke-virtual/range {v23 .. v23}, Lcom/googlecode/javacv/Marker;->clone()Lcom/googlecode/javacv/Marker;

    move-result-object v15

    aput-object v15, v21, v11

    .line 451
    .restart local v15       #m:Lcom/googlecode/javacv/Marker;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->cameraCalibrators:[Lcom/googlecode/javacv/GeometricCalibrator;

    move-object/from16 v23, v0

    aget-object v23, v23, v6

    invoke-virtual/range {v23 .. v23}, Lcom/googlecode/javacv/GeometricCalibrator;->getProjectiveDevice()Lcom/googlecode/javacv/ProjectiveDevice;

    move-result-object v23

    iget-object v0, v15, Lcom/googlecode/javacv/Marker;->corners:[D

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/googlecode/javacv/ProjectiveDevice;->undistort([D)[D

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v15, Lcom/googlecode/javacv/Marker;->corners:[D

    .line 449
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 456
    .end local v15           #m:Lcom/googlecode/javacv/Marker;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->boardPlane:Lcom/googlecode/javacv/MarkedPlane;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->boardWarp:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v24, v0

    aget-object v24, v24, v6

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacv/MarkedPlane;->getTotalWarp([Lcom/googlecode/javacv/Marker;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)D

    move-result-wide v23

    cmpl-double v23, v23, v16

    if-lez v23, :cond_5

    .line 457
    sget-boolean v23, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->$assertionsDisabled:Z

    if-nez v23, :cond_5

    new-instance v23, Ljava/lang/AssertionError;

    invoke-direct/range {v23 .. v23}, Ljava/lang/AssertionError;-><init>()V

    throw v23

    .line 459
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->boardWarp:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v23, v0

    aget-object v23, v23, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->boardWarp:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v24, v0

    aget-object v24, v24, v6

    invoke-static/range {v23 .. v24}, Lcom/googlecode/javacv/cpp/opencv_core;->cvInvert(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)D

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->boardWarp:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v23, v0

    aget-object v23, v23, v6

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/googlecode/javacv/Marker;->applyWarp([Lcom/googlecode/javacv/Marker;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V

    .line 463
    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->cameraCalibrators:[Lcom/googlecode/javacv/GeometricCalibrator;

    move-object/from16 v23, v0

    aget-object v23, v23, v6

    move-object/from16 v0, v23

    if-ne v0, v5, :cond_6

    .line 465
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 466
    invoke-virtual {v9, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 434
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 468
    :cond_6
    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Lcom/googlecode/javacv/Marker;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 469
    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Lcom/googlecode/javacv/Marker;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 475
    .end local v7           #distortedBoardMarkers:[Lcom/googlecode/javacv/Marker;
    .end local v8           #distortedProjectorMarkers:[Lcom/googlecode/javacv/Marker;
    .end local v11           #i:I
    .end local v16           #maxError:D
    .end local v20           #undistortedBoardMarkers:[Lcom/googlecode/javacv/Marker;
    .end local v21           #undistortedProjectorMarkers:[Lcom/googlecode/javacv/Marker;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->projectorCalibrator:Lcom/googlecode/javacv/GeometricCalibrator;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/googlecode/javacv/GeometricCalibrator;->setAllObjectMarkers(Ljava/util/LinkedList;)V

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->projectorCalibrator:Lcom/googlecode/javacv/GeometricCalibrator;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/GeometricCalibrator;->calibrate(Z)[D

    move-result-object v19

    .line 482
    .local v19, reprojErr:[D
    invoke-virtual {v5}, Lcom/googlecode/javacv/GeometricCalibrator;->getAllObjectMarkers()Ljava/util/LinkedList;

    move-result-object v18

    .line 483
    .local v18, om:Ljava/util/LinkedList;,"Ljava/util/LinkedList<[Lcom/googlecode/javacv/Marker;>;"
    invoke-virtual {v5}, Lcom/googlecode/javacv/GeometricCalibrator;->getAllImageMarkers()Ljava/util/LinkedList;

    move-result-object v13

    .line 484
    .local v13, im:Ljava/util/LinkedList;,"Ljava/util/LinkedList<[Lcom/googlecode/javacv/Marker;>;"
    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/googlecode/javacv/GeometricCalibrator;->setAllObjectMarkers(Ljava/util/LinkedList;)V

    .line 485
    invoke-virtual {v5, v9}, Lcom/googlecode/javacv/GeometricCalibrator;->setAllImageMarkers(Ljava/util/LinkedList;)V

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->projectorCalibrator:Lcom/googlecode/javacv/GeometricCalibrator;

    move-object/from16 v23, v0

    move/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Lcom/googlecode/javacv/GeometricCalibrator;->calibrateStereo(ZLcom/googlecode/javacv/GeometricCalibrator;)[D

    move-result-object v10

    .line 490
    .local v10, epipolarErr:[D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->projectorCalibrator:Lcom/googlecode/javacv/GeometricCalibrator;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/googlecode/javacv/GeometricCalibrator;->setAllObjectMarkers(Ljava/util/LinkedList;)V

    .line 491
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/googlecode/javacv/GeometricCalibrator;->setAllObjectMarkers(Ljava/util/LinkedList;)V

    .line 492
    invoke-virtual {v5, v13}, Lcom/googlecode/javacv/GeometricCalibrator;->setAllImageMarkers(Ljava/util/LinkedList;)V

    .line 494
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [D

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    aget-wide v25, v19, v25

    aput-wide v25, v23, v24

    const/16 v24, 0x1

    const/16 v25, 0x1

    aget-wide v25, v19, v25

    aput-wide v25, v23, v24

    const/16 v24, 0x2

    const/16 v25, 0x0

    aget-wide v25, v10, v25

    aput-wide v25, v23, v24

    const/16 v24, 0x3

    const/16 v25, 0x1

    aget-wide v25, v10, v25

    aput-wide v25, v23, v24

    return-object v23
.end method

.method public drawMarkers(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V
    .locals 1
    .parameter "image"

    .prologue
    .line 240
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->drawMarkers(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;I)V

    .line 241
    return-void
.end method

.method public drawMarkers(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;I)V
    .locals 2
    .parameter "image"
    .parameter "cameraNumber"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->cameraCalibrators:[Lcom/googlecode/javacv/GeometricCalibrator;

    aget-object v0, v0, p2

    iget-object v0, v0, Lcom/googlecode/javacv/GeometricCalibrator;->markerDetector:Lcom/googlecode/javacv/MarkerDetector;

    iget-object v1, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->lastDetectedMarkers1:[[Lcom/googlecode/javacv/Marker;

    aget-object v1, v1, p2

    invoke-virtual {v0, p1, v1}, Lcom/googlecode/javacv/MarkerDetector;->draw(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;[Lcom/googlecode/javacv/Marker;)V

    .line 245
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->projectorCalibrator:Lcom/googlecode/javacv/GeometricCalibrator;

    iget-object v0, v0, Lcom/googlecode/javacv/GeometricCalibrator;->markerDetector:Lcom/googlecode/javacv/MarkerDetector;

    iget-object v1, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->lastDetectedMarkers2:[[Lcom/googlecode/javacv/Marker;

    aget-object v1, v1, p2

    invoke-virtual {v0, p1, v1}, Lcom/googlecode/javacv/MarkerDetector;->draw(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;[Lcom/googlecode/javacv/Marker;)V

    .line 247
    return-void
.end method

.method public getBoardPlane()Lcom/googlecode/javacv/MarkedPlane;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->boardPlane:Lcom/googlecode/javacv/MarkedPlane;

    return-object v0
.end method

.method public getCameraCalibrators()[Lcom/googlecode/javacv/GeometricCalibrator;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->cameraCalibrators:[Lcom/googlecode/javacv/GeometricCalibrator;

    return-object v0
.end method

.method public getImageCount()I
    .locals 7

    .prologue
    .line 171
    iget-object v5, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->projectorCalibrator:Lcom/googlecode/javacv/GeometricCalibrator;

    invoke-virtual {v5}, Lcom/googlecode/javacv/GeometricCalibrator;->getImageCount()I

    move-result v5

    iget-object v6, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->cameraCalibrators:[Lcom/googlecode/javacv/GeometricCalibrator;

    array-length v6, v6

    div-int v4, v5, v6

    .line 172
    .local v4, n:I
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->cameraCalibrators:[Lcom/googlecode/javacv/GeometricCalibrator;

    .local v0, arr$:[Lcom/googlecode/javacv/GeometricCalibrator;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 173
    .local v1, c:Lcom/googlecode/javacv/GeometricCalibrator;
    sget-boolean v5, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    invoke-virtual {v1}, Lcom/googlecode/javacv/GeometricCalibrator;->getImageCount()I

    move-result v5

    if-eq v5, v4, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 172
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    .end local v1           #c:Lcom/googlecode/javacv/GeometricCalibrator;
    :cond_1
    return v4
.end method

.method public getProjectorCalibrator()Lcom/googlecode/javacv/GeometricCalibrator;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->projectorCalibrator:Lcom/googlecode/javacv/GeometricCalibrator;

    return-object v0
.end method

.method public getProjectorImage()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 11

    .prologue
    .line 376
    iget-boolean v7, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->updatePrewarp:Z

    if-eqz v7, :cond_2

    .line 378
    const-wide v2, 0x7fefffffffffffffL

    .line 379
    .local v2, minRmse:D
    const/4 v1, 0x0

    .line 380
    .local v1, minCameraNumber:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v7, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->cameraCalibrators:[Lcom/googlecode/javacv/GeometricCalibrator;

    array-length v7, v7

    if-ge v0, v7, :cond_1

    .line 381
    iget-object v7, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->rmseBoardWarp:[D

    aget-wide v7, v7, v0

    iget-object v9, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->rmseProjWarp:[D

    aget-wide v9, v9, v0

    add-double v5, v7, v9

    .line 382
    .local v5, rmse:D
    cmpg-double v7, v5, v2

    if-gez v7, :cond_0

    .line 383
    move-wide v2, v5

    .line 384
    move v1, v0

    .line 380
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    .end local v5           #rmse:D
    :cond_1
    iget-object v7, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->projectorPlane:Lcom/googlecode/javacv/MarkedPlane;

    invoke-virtual {v7}, Lcom/googlecode/javacv/MarkedPlane;->getPrewarp()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v4

    .line 390
    .local v4, prewarp:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    iget-object v7, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->projWarp:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    aget-object v7, v7, v1

    invoke-static {v7, v4}, Lcom/googlecode/javacv/cpp/opencv_core;->cvInvert(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)D

    .line 391
    iget-object v7, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->boardWarp:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    aget-object v7, v7, v1

    invoke-static {v4, v7, v4}, Lcom/googlecode/javacv/cpp/opencv_core;->cvMatMul(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 392
    iget-object v7, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->projectorPlane:Lcom/googlecode/javacv/MarkedPlane;

    invoke-virtual {v7, v4}, Lcom/googlecode/javacv/MarkedPlane;->setPrewarp(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V

    .line 395
    .end local v0           #i:I
    .end local v1           #minCameraNumber:I
    .end local v2           #minRmse:D
    .end local v4           #prewarp:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    :cond_2
    iget-object v7, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->projectorPlane:Lcom/googlecode/javacv/MarkedPlane;

    invoke-virtual {v7}, Lcom/googlecode/javacv/MarkedPlane;->getImage()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v7

    return-object v7
.end method

.method public getProjectorPlane()Lcom/googlecode/javacv/MarkedPlane;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->projectorPlane:Lcom/googlecode/javacv/MarkedPlane;

    return-object v0
.end method

.method public processCameraImage(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)[[Lcom/googlecode/javacv/Marker;
    .locals 1
    .parameter "cameraImage"

    .prologue
    .line 179
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->processCameraImage(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;I)[[Lcom/googlecode/javacv/Marker;

    move-result-object v0

    return-object v0
.end method

.method public processCameraImage(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;I)[[Lcom/googlecode/javacv/Marker;
    .locals 11
    .parameter "cameraImage"
    .parameter "cameraNumber"

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 182
    iget-object v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->cameraCalibrators:[Lcom/googlecode/javacv/GeometricCalibrator;

    aget-object v4, v4, p2

    invoke-virtual {v4}, Lcom/googlecode/javacv/GeometricCalibrator;->getProjectiveDevice()Lcom/googlecode/javacv/ProjectiveDevice;

    move-result-object v4

    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v5

    iput v5, v4, Lcom/googlecode/javacv/ProjectiveDevice;->imageWidth:I

    .line 183
    iget-object v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->cameraCalibrators:[Lcom/googlecode/javacv/GeometricCalibrator;

    aget-object v4, v4, p2

    invoke-virtual {v4}, Lcom/googlecode/javacv/GeometricCalibrator;->getProjectiveDevice()Lcom/googlecode/javacv/ProjectiveDevice;

    move-result-object v4

    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v5

    iput v5, v4, Lcom/googlecode/javacv/ProjectiveDevice;->imageHeight:I

    .line 185
    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->nChannels()I

    move-result v4

    if-le v4, v2, :cond_4

    .line 186
    iget-object v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->grayscaleImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v4, v4, p2

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->grayscaleImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v4, v4, p2

    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v4

    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v5

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->grayscaleImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v4, v4, p2

    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v4

    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v5

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->grayscaleImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v4, v4, p2

    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v4

    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 190
    :cond_0
    iget-object v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->grayscaleImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v5

    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v6

    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v7

    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->origin()I

    move-result v8

    invoke-static {v5, v6, v7, v2, v8}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v5

    aput-object v5, v4, p2

    .line 193
    :cond_1
    iget-object v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->grayscaleImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v4, v4, p2

    const/4 v5, 0x6

    invoke-static {p1, v4, v5}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvCvtColor(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V

    .line 198
    :goto_0
    iget-object v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->boardPlane:Lcom/googlecode/javacv/MarkedPlane;

    invoke-virtual {v4}, Lcom/googlecode/javacv/MarkedPlane;->getForegroundColor()Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;->magnitude()D

    move-result-wide v4

    iget-object v6, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->boardPlane:Lcom/googlecode/javacv/MarkedPlane;

    invoke-virtual {v6}, Lcom/googlecode/javacv/MarkedPlane;->getBackgroundColor()Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    move-result-object v6

    invoke-virtual {v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;->magnitude()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_5

    move v0, v2

    .line 200
    .local v0, boardWhiteMarkers:Z
    :goto_1
    iget-object v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->projectorPlane:Lcom/googlecode/javacv/MarkedPlane;

    invoke-virtual {v4}, Lcom/googlecode/javacv/MarkedPlane;->getForegroundColor()Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;->magnitude()D

    move-result-wide v4

    iget-object v6, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->projectorPlane:Lcom/googlecode/javacv/MarkedPlane;

    invoke-virtual {v6}, Lcom/googlecode/javacv/MarkedPlane;->getBackgroundColor()Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    move-result-object v6

    invoke-virtual {v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;->magnitude()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_6

    move v1, v2

    .line 202
    .local v1, projWhiteMarkers:Z
    :goto_2
    iget-object v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->grayscaleImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v4, v4, p2

    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v4

    if-le v4, v10, :cond_7

    .line 203
    iget-object v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->tempImage1:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v4, v4, p2

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->tempImage1:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v4, v4, p2

    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v4

    iget-object v5, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->grayscaleImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v5, v5, p2

    invoke-virtual {v5}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v5

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->tempImage1:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v4, v4, p2

    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v4

    iget-object v5, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->grayscaleImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v5, v5, p2

    invoke-virtual {v5}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 206
    :cond_2
    iget-object v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->tempImage1:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget-object v5, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->grayscaleImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v5, v5, p2

    invoke-virtual {v5}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v5

    iget-object v6, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->grayscaleImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v6, v6, p2

    invoke-virtual {v6}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v6

    iget-object v7, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->grayscaleImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v7, v7, p2

    invoke-virtual {v7}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->origin()I

    move-result v7

    invoke-static {v5, v6, v10, v2, v7}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v5

    aput-object v5, v4, p2

    .line 209
    iget-object v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->tempImage2:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget-object v5, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->grayscaleImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v5, v5, p2

    invoke-virtual {v5}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v5

    iget-object v6, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->grayscaleImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v6, v6, p2

    invoke-virtual {v6}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v6

    iget-object v7, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->grayscaleImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v7, v7, p2

    invoke-virtual {v7}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->origin()I

    move-result v7

    invoke-static {v5, v6, v10, v2, v7}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v5

    aput-object v5, v4, p2

    .line 213
    :cond_3
    new-array v4, v9, [Ljava/lang/Runnable;

    new-instance v5, Lcom/googlecode/javacv/ProCamGeometricCalibrator$1;

    invoke-direct {v5, p0, p2, v0}, Lcom/googlecode/javacv/ProCamGeometricCalibrator$1;-><init>(Lcom/googlecode/javacv/ProCamGeometricCalibrator;IZ)V

    aput-object v5, v4, v3

    new-instance v5, Lcom/googlecode/javacv/ProCamGeometricCalibrator$2;

    invoke-direct {v5, p0, p2, v1}, Lcom/googlecode/javacv/ProCamGeometricCalibrator$2;-><init>(Lcom/googlecode/javacv/ProCamGeometricCalibrator;IZ)V

    aput-object v5, v4, v2

    invoke-static {v4}, Lcom/googlecode/javacv/Parallel;->run([Ljava/lang/Runnable;)V

    .line 234
    :goto_3
    invoke-virtual {p0, p2}, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->processMarkers(I)Z

    move-result v4

    if-eqz v4, :cond_8

    new-array v4, v9, [[Lcom/googlecode/javacv/Marker;

    iget-object v5, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->lastDetectedMarkers1:[[Lcom/googlecode/javacv/Marker;

    aget-object v5, v5, p2

    aput-object v5, v4, v3

    iget-object v3, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->lastDetectedMarkers2:[[Lcom/googlecode/javacv/Marker;

    aget-object v3, v3, p2

    aput-object v3, v4, v2

    move-object v2, v4

    :goto_4
    return-object v2

    .line 195
    .end local v0           #boardWhiteMarkers:Z
    .end local v1           #projWhiteMarkers:Z
    :cond_4
    iget-object v4, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->grayscaleImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aput-object p1, v4, p2

    goto/16 :goto_0

    :cond_5
    move v0, v3

    .line 198
    goto/16 :goto_1

    .restart local v0       #boardWhiteMarkers:Z
    :cond_6
    move v1, v3

    .line 200
    goto/16 :goto_2

    .line 225
    .restart local v1       #projWhiteMarkers:Z
    :cond_7
    new-array v4, v9, [Ljava/lang/Runnable;

    new-instance v5, Lcom/googlecode/javacv/ProCamGeometricCalibrator$3;

    invoke-direct {v5, p0, p2, v0}, Lcom/googlecode/javacv/ProCamGeometricCalibrator$3;-><init>(Lcom/googlecode/javacv/ProCamGeometricCalibrator;IZ)V

    aput-object v5, v4, v3

    new-instance v5, Lcom/googlecode/javacv/ProCamGeometricCalibrator$4;

    invoke-direct {v5, p0, p2, v1}, Lcom/googlecode/javacv/ProCamGeometricCalibrator$4;-><init>(Lcom/googlecode/javacv/ProCamGeometricCalibrator;IZ)V

    aput-object v5, v4, v2

    invoke-static {v4}, Lcom/googlecode/javacv/Parallel;->run([Ljava/lang/Runnable;)V

    goto :goto_3

    .line 234
    :cond_8
    const/4 v2, 0x0

    check-cast v2, [[Lcom/googlecode/javacv/Marker;

    goto :goto_4
.end method

.method public processMarkers()Z
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->processMarkers(I)Z

    move-result v0

    return v0
.end method

.method public processMarkers(I)Z
    .locals 2
    .parameter "cameraNumber"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->lastDetectedMarkers1:[[Lcom/googlecode/javacv/Marker;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->lastDetectedMarkers2:[[Lcom/googlecode/javacv/Marker;

    aget-object v1, v1, p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->processMarkers([Lcom/googlecode/javacv/Marker;[Lcom/googlecode/javacv/Marker;I)Z

    move-result v0

    return v0
.end method

.method public processMarkers([Lcom/googlecode/javacv/Marker;[Lcom/googlecode/javacv/Marker;)Z
    .locals 1
    .parameter "imagedBoardMarkers"
    .parameter "imagedProjectorMarkers"

    .prologue
    .line 257
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->processMarkers([Lcom/googlecode/javacv/Marker;[Lcom/googlecode/javacv/Marker;I)Z

    move-result v0

    return v0
.end method

.method public processMarkers([Lcom/googlecode/javacv/Marker;[Lcom/googlecode/javacv/Marker;I)Z
    .locals 11
    .parameter "imagedBoardMarkers"
    .parameter "imagedProjectorMarkers"
    .parameter "cameraNumber"

    .prologue
    .line 261
    iget-object v5, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->rmseBoardWarp:[D

    iget-object v6, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->boardPlane:Lcom/googlecode/javacv/MarkedPlane;

    iget-object v7, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->boardWarp:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    aget-object v7, v7, p3

    invoke-virtual {v6, p1, v7}, Lcom/googlecode/javacv/MarkedPlane;->getTotalWarp([Lcom/googlecode/javacv/Marker;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)D

    move-result-wide v6

    aput-wide v6, v5, p3

    .line 262
    iget-object v5, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->rmseProjWarp:[D

    iget-object v6, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->projectorPlane:Lcom/googlecode/javacv/MarkedPlane;

    iget-object v7, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->projWarp:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    aget-object v7, v7, p3

    invoke-virtual {v6, p2, v7}, Lcom/googlecode/javacv/MarkedPlane;->getTotalWarp([Lcom/googlecode/javacv/Marker;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)D

    move-result-wide v6

    aput-wide v6, v5, p3

    .line 264
    iget-object v5, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->cameraCalibrators:[Lcom/googlecode/javacv/GeometricCalibrator;

    aget-object v5, v5, p3

    invoke-virtual {v5}, Lcom/googlecode/javacv/GeometricCalibrator;->getProjectiveDevice()Lcom/googlecode/javacv/ProjectiveDevice;

    move-result-object v5

    iget v5, v5, Lcom/googlecode/javacv/ProjectiveDevice;->imageWidth:I

    iget-object v6, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->cameraCalibrators:[Lcom/googlecode/javacv/GeometricCalibrator;

    aget-object v6, v6, p3

    invoke-virtual {v6}, Lcom/googlecode/javacv/GeometricCalibrator;->getProjectiveDevice()Lcom/googlecode/javacv/ProjectiveDevice;

    move-result-object v6

    iget v6, v6, Lcom/googlecode/javacv/ProjectiveDevice;->imageHeight:I

    add-int/2addr v5, v6

    div-int/lit8 v0, v5, 0x2

    .line 266
    .local v0, imageSize:I
    iget-object v5, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->rmseBoardWarp:[D

    aget-wide v5, v5, p3

    iget-object v7, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->settings:Lcom/googlecode/javacv/ProCamGeometricCalibrator$Settings;

    iget-wide v7, v7, Lcom/googlecode/javacv/ProCamGeometricCalibrator$Settings;->prewarpUpdateErrorMax:D

    int-to-double v9, v0

    mul-double/2addr v7, v9

    cmpg-double v5, v5, v7

    if-gtz v5, :cond_1

    iget-object v5, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->rmseProjWarp:[D

    aget-wide v5, v5, p3

    iget-object v7, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->settings:Lcom/googlecode/javacv/ProCamGeometricCalibrator$Settings;

    iget-wide v7, v7, Lcom/googlecode/javacv/ProCamGeometricCalibrator$Settings;->prewarpUpdateErrorMax:D

    int-to-double v9, v0

    mul-double/2addr v7, v9

    cmpg-double v5, v5, v7

    if-gtz v5, :cond_1

    .line 268
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->updatePrewarp:Z

    .line 275
    array-length v5, p1

    int-to-double v5, v5

    iget-object v7, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->boardPlane:Lcom/googlecode/javacv/MarkedPlane;

    invoke-virtual {v7}, Lcom/googlecode/javacv/MarkedPlane;->getMarkers()[Lcom/googlecode/javacv/Marker;

    move-result-object v7

    array-length v7, v7

    int-to-double v7, v7

    iget-object v9, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->settings:Lcom/googlecode/javacv/ProCamGeometricCalibrator$Settings;

    iget-wide v9, v9, Lcom/googlecode/javacv/ProCamGeometricCalibrator$Settings;->detectedBoardMin:D

    mul-double/2addr v7, v9

    cmpg-double v5, v5, v7

    if-ltz v5, :cond_0

    array-length v5, p2

    int-to-double v5, v5

    iget-object v7, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->projectorPlane:Lcom/googlecode/javacv/MarkedPlane;

    invoke-virtual {v7}, Lcom/googlecode/javacv/MarkedPlane;->getMarkers()[Lcom/googlecode/javacv/Marker;

    move-result-object v7

    array-length v7, v7

    int-to-double v7, v7

    iget-object v9, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->settings:Lcom/googlecode/javacv/ProCamGeometricCalibrator$Settings;

    iget-wide v9, v9, Lcom/googlecode/javacv/ProCamGeometricCalibrator$Settings;->detectedProjectorMin:D

    mul-double/2addr v7, v9

    cmpg-double v5, v5, v7

    if-gez v5, :cond_2

    .line 277
    :cond_0
    const/4 v5, 0x0

    .line 296
    :goto_0
    return v5

    .line 271
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 281
    :cond_2
    iget-object v5, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->boardWarpSrcPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v6, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->tempPts1:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    aget-object v6, v6, p3

    iget-object v7, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->boardWarp:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    aget-object v7, v7, p3

    invoke-static {v5, v6, v7}, Lcom/googlecode/javacv/cpp/opencv_core;->cvPerspectiveTransform(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V

    .line 282
    iget-object v5, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->boardWarpSrcPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v6, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->tempPts2:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    aget-object v6, v6, p3

    iget-object v7, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->prevBoardWarp:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    aget-object v7, v7, p3

    invoke-static {v5, v6, v7}, Lcom/googlecode/javacv/cpp/opencv_core;->cvPerspectiveTransform(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V

    .line 283
    iget-object v5, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->tempPts1:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    aget-object v5, v5, p3

    iget-object v6, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->tempPts2:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    aget-object v6, v6, p3

    invoke-static {v5, v6}, Lcom/googlecode/javacv/cpp/opencv_core;->cvNorm(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)D

    move-result-wide v3

    .line 284
    .local v3, rmsePrev:D
    iget-object v5, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->boardWarpSrcPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v6, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->tempPts2:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    aget-object v6, v6, p3

    iget-object v7, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->lastBoardWarp:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    aget-object v7, v7, p3

    invoke-static {v5, v6, v7}, Lcom/googlecode/javacv/cpp/opencv_core;->cvPerspectiveTransform(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V

    .line 285
    iget-object v5, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->tempPts1:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    aget-object v5, v5, p3

    iget-object v6, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->tempPts2:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    aget-object v6, v6, p3

    invoke-static {v5, v6}, Lcom/googlecode/javacv/cpp/opencv_core;->cvNorm(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)D

    move-result-wide v1

    .line 289
    .local v1, rmseLast:D
    iget-object v5, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->boardWarp:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    aget-object v5, v5, p3

    iget-object v6, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->prevBoardWarp:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    aget-object v6, v6, p3

    invoke-static {v5, v6}, Lcom/googlecode/javacv/cpp/opencv_core;->cvCopy(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 292
    iget-object v5, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->settings:Lcom/googlecode/javacv/ProCamGeometricCalibrator$Settings;

    iget-wide v5, v5, Lcom/googlecode/javacv/ProCamGeometricCalibrator$Settings;->patternSteadySize:D

    int-to-double v7, v0

    mul-double/2addr v5, v7

    cmpg-double v5, v3, v5

    if-gez v5, :cond_3

    iget-object v5, p0, Lcom/googlecode/javacv/ProCamGeometricCalibrator;->settings:Lcom/googlecode/javacv/ProCamGeometricCalibrator$Settings;

    iget-wide v5, v5, Lcom/googlecode/javacv/ProCamGeometricCalibrator$Settings;->patternMovedSize:D

    int-to-double v7, v0

    mul-double/2addr v5, v7

    cmpl-double v5, v1, v5

    if-lez v5, :cond_3

    .line 294
    const/4 v5, 0x1

    goto :goto_0

    .line 296
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method
