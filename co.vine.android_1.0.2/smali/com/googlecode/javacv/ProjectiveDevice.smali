.class public Lcom/googlecode/javacv/ProjectiveDevice;
.super Ljava/lang/Object;
.source "ProjectiveDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/ProjectiveDevice$Exception;,
        Lcom/googlecode/javacv/ProjectiveDevice$CalibratedSettings;,
        Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;,
        Lcom/googlecode/javacv/ProjectiveDevice$Settings;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

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

.field private static P13x4:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/googlecode/javacv/cpp/opencv_core$CvMat;",
            ">;"
        }
    .end annotation
.end field

.field private static P23x4:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/googlecode/javacv/cpp/opencv_core$CvMat;",
            ">;"
        }
    .end annotation
.end field

.field private static R13x3:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/googlecode/javacv/cpp/opencv_core$CvMat;",
            ">;"
        }
    .end annotation
.end field

.field private static R23x3:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/googlecode/javacv/cpp/opencv_core$CvMat;",
            ">;"
        }
    .end annotation
.end field

.field private static a4x1:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/googlecode/javacv/cpp/opencv_core$CvMat;",
            ">;"
        }
    .end annotation
.end field

.field private static relativeR3x3:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/googlecode/javacv/cpp/opencv_core$CvMat;",
            ">;"
        }
    .end annotation
.end field

.field private static relativeT3x1:Ljava/lang/ThreadLocal;
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

.field private static temp3x3:Ljava/lang/ThreadLocal;
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
.field public E:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field public F:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field public R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field public T:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field public additiveLight:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field public avgColorErr:D

.field public avgEpipolarErr:D

.field public avgReprojErr:D

.field public cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field public colorMixingMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field public colorOrder:Ljava/lang/String;

.field public colorR2:D

.field private distortMaps1:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

.field private distortMaps2:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

.field public distortionCoeffs:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field public extrParams:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field private fixedPointMaps:Z

.field public imageHeight:I

.field public imageWidth:I

.field private mapsPyramidLevel:I

.field public maxEpipolarErr:D

.field public maxReprojErr:D

.field public reprojErrs:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field private settings:Lcom/googlecode/javacv/ProjectiveDevice$Settings;

.field private tempImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

.field private undistortMaps1:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

.field private undistortMaps2:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x3

    .line 36
    const-class v0, Lcom/googlecode/javacv/ProjectiveDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/googlecode/javacv/ProjectiveDevice;->$assertionsDisabled:Z

    .line 649
    invoke-static {v2, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->createThreadLocal(II)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacv/ProjectiveDevice;->temp3x3:Ljava/lang/ThreadLocal;

    .line 676
    invoke-static {v3, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->createThreadLocal(II)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacv/ProjectiveDevice;->B4x3:Ljava/lang/ThreadLocal;

    .line 677
    invoke-static {v3, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->createThreadLocal(II)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacv/ProjectiveDevice;->a4x1:Ljava/lang/ThreadLocal;

    .line 678
    invoke-static {v2, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->createThreadLocal(II)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacv/ProjectiveDevice;->t3x1:Ljava/lang/ThreadLocal;

    .line 719
    invoke-static {v2, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->createThreadLocal(II)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacv/ProjectiveDevice;->relativeR3x3:Ljava/lang/ThreadLocal;

    .line 720
    invoke-static {v2, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->createThreadLocal(II)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacv/ProjectiveDevice;->relativeT3x1:Ljava/lang/ThreadLocal;

    .line 721
    invoke-static {v2, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->createThreadLocal(II)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacv/ProjectiveDevice;->R13x3:Ljava/lang/ThreadLocal;

    invoke-static {v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->createThreadLocal(II)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacv/ProjectiveDevice;->P13x4:Ljava/lang/ThreadLocal;

    .line 722
    invoke-static {v2, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->createThreadLocal(II)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacv/ProjectiveDevice;->R23x3:Ljava/lang/ThreadLocal;

    invoke-static {v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->createThreadLocal(II)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacv/ProjectiveDevice;->P23x4:Ljava/lang/ThreadLocal;

    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/googlecode/javacv/ProjectiveDevice$Settings;)V
    .locals 5
    .parameter "settings"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/ProjectiveDevice$Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput v3, p0, Lcom/googlecode/javacv/ProjectiveDevice;->imageWidth:I

    iput v3, p0, Lcom/googlecode/javacv/ProjectiveDevice;->imageHeight:I

    .line 301
    iput-object v2, p0, Lcom/googlecode/javacv/ProjectiveDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iput-object v2, p0, Lcom/googlecode/javacv/ProjectiveDevice;->distortionCoeffs:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iput-object v2, p0, Lcom/googlecode/javacv/ProjectiveDevice;->extrParams:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iput-object v2, p0, Lcom/googlecode/javacv/ProjectiveDevice;->reprojErrs:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 306
    iput-object v2, p0, Lcom/googlecode/javacv/ProjectiveDevice;->R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iput-object v2, p0, Lcom/googlecode/javacv/ProjectiveDevice;->T:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iput-object v2, p0, Lcom/googlecode/javacv/ProjectiveDevice;->E:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iput-object v2, p0, Lcom/googlecode/javacv/ProjectiveDevice;->F:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 309
    const-string v0, "BGR"

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveDevice;->colorOrder:Ljava/lang/String;

    .line 310
    iput-object v2, p0, Lcom/googlecode/javacv/ProjectiveDevice;->colorMixingMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iput-object v2, p0, Lcom/googlecode/javacv/ProjectiveDevice;->additiveLight:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 311
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/googlecode/javacv/ProjectiveDevice;->colorR2:D

    .line 465
    iput-boolean v3, p0, Lcom/googlecode/javacv/ProjectiveDevice;->fixedPointMaps:Z

    .line 466
    iput v3, p0, Lcom/googlecode/javacv/ProjectiveDevice;->mapsPyramidLevel:I

    .line 467
    new-array v0, v4, [Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aput-object v2, v0, v3

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveDevice;->undistortMaps1:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    new-array v0, v4, [Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aput-object v2, v0, v3

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveDevice;->undistortMaps2:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 468
    new-array v0, v4, [Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aput-object v2, v0, v3

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveDevice;->distortMaps1:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    new-array v0, v4, [Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aput-object v2, v0, v3

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveDevice;->distortMaps2:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 469
    iput-object v2, p0, Lcom/googlecode/javacv/ProjectiveDevice;->tempImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 55
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/ProjectiveDevice;->setSettings(Lcom/googlecode/javacv/ProjectiveDevice$Settings;)V

    .line 56
    instance-of v0, p1, Lcom/googlecode/javacv/ProjectiveDevice$CalibratedSettings;

    if-eqz v0, :cond_0

    .line 57
    check-cast p1, Lcom/googlecode/javacv/ProjectiveDevice$CalibratedSettings;

    .end local p1
    iget-object v0, p1, Lcom/googlecode/javacv/ProjectiveDevice$CalibratedSettings;->parametersFile:Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/ProjectiveDevice;->readParameters(Ljava/io/File;)V

    .line 59
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .parameter "name"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput v4, p0, Lcom/googlecode/javacv/ProjectiveDevice;->imageWidth:I

    iput v4, p0, Lcom/googlecode/javacv/ProjectiveDevice;->imageHeight:I

    .line 301
    iput-object v3, p0, Lcom/googlecode/javacv/ProjectiveDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iput-object v3, p0, Lcom/googlecode/javacv/ProjectiveDevice;->distortionCoeffs:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iput-object v3, p0, Lcom/googlecode/javacv/ProjectiveDevice;->extrParams:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iput-object v3, p0, Lcom/googlecode/javacv/ProjectiveDevice;->reprojErrs:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 306
    iput-object v3, p0, Lcom/googlecode/javacv/ProjectiveDevice;->R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iput-object v3, p0, Lcom/googlecode/javacv/ProjectiveDevice;->T:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iput-object v3, p0, Lcom/googlecode/javacv/ProjectiveDevice;->E:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iput-object v3, p0, Lcom/googlecode/javacv/ProjectiveDevice;->F:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 309
    const-string v1, "BGR"

    iput-object v1, p0, Lcom/googlecode/javacv/ProjectiveDevice;->colorOrder:Ljava/lang/String;

    .line 310
    iput-object v3, p0, Lcom/googlecode/javacv/ProjectiveDevice;->colorMixingMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iput-object v3, p0, Lcom/googlecode/javacv/ProjectiveDevice;->additiveLight:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 311
    const-wide/high16 v1, 0x3ff0

    iput-wide v1, p0, Lcom/googlecode/javacv/ProjectiveDevice;->colorR2:D

    .line 465
    iput-boolean v4, p0, Lcom/googlecode/javacv/ProjectiveDevice;->fixedPointMaps:Z

    .line 466
    iput v4, p0, Lcom/googlecode/javacv/ProjectiveDevice;->mapsPyramidLevel:I

    .line 467
    new-array v1, v5, [Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aput-object v3, v1, v4

    iput-object v1, p0, Lcom/googlecode/javacv/ProjectiveDevice;->undistortMaps1:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    new-array v1, v5, [Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aput-object v3, v1, v4

    iput-object v1, p0, Lcom/googlecode/javacv/ProjectiveDevice;->undistortMaps2:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 468
    new-array v1, v5, [Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aput-object v3, v1, v4

    iput-object v1, p0, Lcom/googlecode/javacv/ProjectiveDevice;->distortMaps1:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    new-array v1, v5, [Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aput-object v3, v1, v4

    iput-object v1, p0, Lcom/googlecode/javacv/ProjectiveDevice;->distortMaps2:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 469
    iput-object v3, p0, Lcom/googlecode/javacv/ProjectiveDevice;->tempImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 38
    new-instance v0, Lcom/googlecode/javacv/ProjectiveDevice$Settings;

    invoke-direct {v0}, Lcom/googlecode/javacv/ProjectiveDevice$Settings;-><init>()V

    .line 39
    .local v0, s:Lcom/googlecode/javacv/ProjectiveDevice$Settings;
    iput-object p1, v0, Lcom/googlecode/javacv/ProjectiveDevice$Settings;->name:Ljava/lang/String;

    .line 40
    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/ProjectiveDevice;->setSettings(Lcom/googlecode/javacv/ProjectiveDevice$Settings;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;)V
    .locals 0
    .parameter "name"
    .parameter "fs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/ProjectiveDevice$Exception;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/ProjectiveDevice;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, p2}, Lcom/googlecode/javacv/ProjectiveDevice;->readParameters(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .parameter "name"
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/ProjectiveDevice$Exception;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/ProjectiveDevice;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0, p2}, Lcom/googlecode/javacv/ProjectiveDevice;->readParameters(Ljava/io/File;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/ProjectiveDevice$Exception;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/ProjectiveDevice;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0, p2}, Lcom/googlecode/javacv/ProjectiveDevice;->readParameters(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static distort([D[D)[D
    .locals 36
    .parameter "xu"
    .parameter "k"

    .prologue
    .line 405
    const/16 v32, 0x0

    aget-wide v7, p1, v32

    .line 406
    .local v7, k1:D
    const/16 v32, 0x1

    aget-wide v9, p1, v32

    .line 407
    .local v9, k2:D
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x4

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_0

    const/16 v32, 0x4

    aget-wide v11, p1, v32

    .line 409
    .local v11, k3:D
    :goto_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x5

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_1

    const/16 v32, 0x5

    aget-wide v13, p1, v32

    .line 410
    .local v13, k4:D
    :goto_1
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x6

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_2

    const/16 v32, 0x6

    aget-wide v15, p1, v32

    .line 411
    .local v15, k5:D
    :goto_2
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x7

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_3

    const/16 v32, 0x7

    aget-wide v17, p1, v32

    .line 412
    .local v17, k6:D
    :goto_3
    const/16 v32, 0x2

    aget-wide v21, p1, v32

    .line 413
    .local v21, p1:D
    const/16 v32, 0x3

    aget-wide v23, p1, v32

    .line 415
    .local v23, p2:D
    invoke-virtual/range {p0 .. p0}, [D->clone()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, [D

    .line 417
    .local v29, xd:[D
    const/4 v6, 0x0

    .local v6, i:I
    :goto_4
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v32, v0

    div-int/lit8 v32, v32, 0x2

    move/from16 v0, v32

    if-ge v6, v0, :cond_4

    .line 418
    mul-int/lit8 v32, v6, 0x2

    aget-wide v27, p0, v32

    .line 419
    .local v27, x:D
    mul-int/lit8 v32, v6, 0x2

    add-int/lit8 v32, v32, 0x1

    aget-wide v30, p0, v32

    .line 420
    .local v30, y:D
    mul-double v32, v27, v27

    mul-double v34, v30, v30

    add-double v25, v32, v34

    .line 421
    .local v25, r_2:D
    const-wide/high16 v32, 0x3ff0

    mul-double v34, v7, v25

    add-double v32, v32, v34

    mul-double v34, v9, v25

    mul-double v34, v34, v25

    add-double v32, v32, v34

    mul-double v34, v11, v25

    mul-double v34, v34, v25

    mul-double v34, v34, v25

    add-double v19, v32, v34

    .line 422
    .local v19, k_radial:D
    const-wide/high16 v32, 0x4000

    mul-double v32, v32, v21

    mul-double v32, v32, v27

    mul-double v32, v32, v30

    const-wide/high16 v34, 0x4000

    mul-double v34, v34, v27

    mul-double v34, v34, v27

    add-double v34, v34, v25

    mul-double v34, v34, v23

    add-double v2, v32, v34

    .line 423
    .local v2, delta_x:D
    const-wide/high16 v32, 0x4000

    mul-double v32, v32, v30

    mul-double v32, v32, v30

    add-double v32, v32, v25

    mul-double v32, v32, v21

    const-wide/high16 v34, 0x4000

    mul-double v34, v34, v23

    mul-double v34, v34, v27

    mul-double v34, v34, v30

    add-double v4, v32, v34

    .line 424
    .local v4, delta_y:D
    mul-int/lit8 v32, v6, 0x2

    mul-double v33, v27, v19

    add-double v33, v33, v2

    aput-wide v33, v29, v32

    .line 425
    mul-int/lit8 v32, v6, 0x2

    add-int/lit8 v32, v32, 0x1

    mul-double v33, v30, v19

    add-double v33, v33, v4

    aput-wide v33, v29, v32

    .line 417
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 407
    .end local v2           #delta_x:D
    .end local v4           #delta_y:D
    .end local v6           #i:I
    .end local v11           #k3:D
    .end local v13           #k4:D
    .end local v15           #k5:D
    .end local v17           #k6:D
    .end local v19           #k_radial:D
    .end local v21           #p1:D
    .end local v23           #p2:D
    .end local v25           #r_2:D
    .end local v27           #x:D
    .end local v29           #xd:[D
    .end local v30           #y:D
    :cond_0
    const-wide/16 v11, 0x0

    goto/16 :goto_0

    .line 409
    .restart local v11       #k3:D
    :cond_1
    const-wide/16 v13, 0x0

    goto/16 :goto_1

    .line 410
    .restart local v13       #k4:D
    :cond_2
    const-wide/16 v15, 0x0

    goto/16 :goto_2

    .line 411
    .restart local v15       #k5:D
    :cond_3
    const-wide/16 v17, 0x0

    goto/16 :goto_3

    .line 427
    .restart local v6       #i:I
    .restart local v17       #k6:D
    .restart local v21       #p1:D
    .restart local v23       #p2:D
    .restart local v29       #xd:[D
    :cond_4
    return-object v29
.end method

.method private initDistortMaps()V
    .locals 21

    .prologue
    .line 581
    move-object/from16 v0, p0

    iget v11, v0, Lcom/googlecode/javacv/ProjectiveDevice;->mapsPyramidLevel:I

    .line 582
    .local v11, p:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProjectiveDevice;->distortMaps1:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v16, v0

    aget-object v16, v16, v11

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProjectiveDevice;->distortMaps2:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v16, v0

    aget-object v16, v16, v11

    if-nez v16, :cond_3

    .line 583
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/ProjectiveDevice;->imageWidth:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/ProjectiveDevice;->imageHeight:I

    move/from16 v17, v0

    const/16 v18, 0x20

    const/16 v19, 0x1

    invoke-static/range {v16 .. v19}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v9

    .line 584
    .local v9, mapx:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/ProjectiveDevice;->imageWidth:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/ProjectiveDevice;->imageHeight:I

    move/from16 v17, v0

    const/16 v18, 0x20

    const/16 v19, 0x1

    invoke-static/range {v16 .. v19}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v10

    .line 585
    .local v10, mapy:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    invoke-virtual {v9}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    .line 586
    .local v2, bufx:Ljava/nio/FloatBuffer;
    invoke-virtual {v10}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    .line 587
    .local v3, bufy:Ljava/nio/FloatBuffer;
    invoke-virtual {v9}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v13

    .line 588
    .local v13, width:I
    invoke-virtual {v9}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v6

    .line 589
    .local v6, height:I
    const/4 v15, 0x0

    .local v15, y:I
    :goto_0
    if-ge v15, v6, :cond_2

    .line 590
    const/4 v14, 0x0

    .local v14, x:I
    :goto_1
    if-ge v14, v13, :cond_1

    .line 591
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [D

    move-object/from16 v16, v0

    const/16 v17, 0x0

    int-to-double v0, v14

    move-wide/from16 v18, v0

    aput-wide v18, v16, v17

    const/16 v17, 0x1

    int-to-double v0, v15

    move-wide/from16 v18, v0

    aput-wide v18, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/ProjectiveDevice;->undistort([D)[D

    move-result-object v4

    .line 592
    .local v4, distxy:[D
    const/16 v16, 0x0

    aget-wide v16, v4, v16

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 593
    const/16 v16, 0x1

    aget-wide v16, v4, v16

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 590
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 589
    .end local v4           #distxy:[D
    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 596
    .end local v14           #x:I
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/googlecode/javacv/ProjectiveDevice;->fixedPointMaps:Z

    move/from16 v16, v0

    if-eqz v16, :cond_4

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProjectiveDevice;->distortMaps1:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/ProjectiveDevice;->imageWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/ProjectiveDevice;->imageHeight:I

    move/from16 v18, v0

    const v19, -0x7ffffff0

    const/16 v20, 0x2

    invoke-static/range {v17 .. v20}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v17

    aput-object v17, v16, v11

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProjectiveDevice;->distortMaps2:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/ProjectiveDevice;->imageWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/ProjectiveDevice;->imageHeight:I

    move/from16 v18, v0

    const/16 v19, 0x10

    const/16 v20, 0x1

    invoke-static/range {v17 .. v20}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v17

    aput-object v17, v16, v11

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProjectiveDevice;->distortMaps1:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v16, v0

    aget-object v16, v16, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProjectiveDevice;->distortMaps2:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v17, v0

    aget-object v17, v17, v11

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v9, v10, v0, v1}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvConvertMaps(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 600
    invoke-virtual {v9}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->release()V

    .line 601
    invoke-virtual {v10}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->release()V

    .line 606
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/ProjectiveDevice;->mapsPyramidLevel:I

    move/from16 v16, v0

    if-lez v16, :cond_3

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProjectiveDevice;->distortMaps1:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v16, v0

    aget-object v7, v16, v11

    .line 608
    .local v7, map1:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProjectiveDevice;->distortMaps2:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v16, v0

    aget-object v8, v16, v11

    .line 609
    .local v8, map2:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/ProjectiveDevice;->imageWidth:I

    move/from16 v16, v0

    shr-int v12, v16, v11

    .line 610
    .local v12, w:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/ProjectiveDevice;->imageHeight:I

    move/from16 v16, v0

    shr-int v5, v16, v11

    .line 611
    .local v5, h:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProjectiveDevice;->distortMaps1:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v16, v0

    invoke-virtual {v7}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v17

    invoke-virtual {v7}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->nChannels()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v12, v5, v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v17

    aput-object v17, v16, v11

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProjectiveDevice;->distortMaps2:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v16, v0

    invoke-virtual {v8}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v17

    invoke-virtual {v8}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->nChannels()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v12, v5, v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v17

    aput-object v17, v16, v11

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProjectiveDevice;->distortMaps1:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v16, v0

    aget-object v16, v16, v11

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v7, v0, v1}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvResize(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProjectiveDevice;->distortMaps2:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v16, v0

    aget-object v16, v16, v11

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v8, v0, v1}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvResize(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V

    .line 617
    .end local v2           #bufx:Ljava/nio/FloatBuffer;
    .end local v3           #bufy:Ljava/nio/FloatBuffer;
    .end local v5           #h:I
    .end local v6           #height:I
    .end local v7           #map1:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .end local v8           #map2:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .end local v9           #mapx:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .end local v10           #mapy:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .end local v12           #w:I
    .end local v13           #width:I
    .end local v15           #y:I
    :cond_3
    return-void

    .line 603
    .restart local v2       #bufx:Ljava/nio/FloatBuffer;
    .restart local v3       #bufy:Ljava/nio/FloatBuffer;
    .restart local v6       #height:I
    .restart local v9       #mapx:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .restart local v10       #mapy:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .restart local v13       #width:I
    .restart local v15       #y:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProjectiveDevice;->distortMaps1:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v16, v0

    aput-object v9, v16, v11

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProjectiveDevice;->distortMaps2:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v16, v0

    aput-object v10, v16, v11

    goto/16 :goto_2
.end method

.method private initUndistortMaps()V
    .locals 12

    .prologue
    const/16 v8, 0x20

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 501
    iget v3, p0, Lcom/googlecode/javacv/ProjectiveDevice;->mapsPyramidLevel:I

    .line 502
    .local v3, p:I
    iget-object v5, p0, Lcom/googlecode/javacv/ProjectiveDevice;->undistortMaps1:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v5, v5, v3

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/googlecode/javacv/ProjectiveDevice;->undistortMaps2:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v5, v5, v3

    if-nez v5, :cond_1

    .line 503
    :cond_0
    iget-boolean v5, p0, Lcom/googlecode/javacv/ProjectiveDevice;->fixedPointMaps:Z

    if-eqz v5, :cond_2

    .line 504
    iget-object v5, p0, Lcom/googlecode/javacv/ProjectiveDevice;->undistortMaps1:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget v6, p0, Lcom/googlecode/javacv/ProjectiveDevice;->imageWidth:I

    iget v7, p0, Lcom/googlecode/javacv/ProjectiveDevice;->imageHeight:I

    const v8, -0x7ffffff0

    const/4 v9, 0x2

    invoke-static {v6, v7, v8, v9}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v6

    aput-object v6, v5, v3

    .line 505
    iget-object v5, p0, Lcom/googlecode/javacv/ProjectiveDevice;->undistortMaps2:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget v6, p0, Lcom/googlecode/javacv/ProjectiveDevice;->imageWidth:I

    iget v7, p0, Lcom/googlecode/javacv/ProjectiveDevice;->imageHeight:I

    const/16 v8, 0x10

    invoke-static {v6, v7, v8, v10}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v6

    aput-object v6, v5, v3

    .line 510
    :goto_0
    iget-object v5, p0, Lcom/googlecode/javacv/ProjectiveDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v6, p0, Lcom/googlecode/javacv/ProjectiveDevice;->distortionCoeffs:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v7, p0, Lcom/googlecode/javacv/ProjectiveDevice;->undistortMaps1:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v7, v7, v3

    iget-object v8, p0, Lcom/googlecode/javacv/ProjectiveDevice;->undistortMaps2:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v8, v8, v3

    invoke-static {v5, v6, v7, v8}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvInitUndistortMap(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 511
    iget v5, p0, Lcom/googlecode/javacv/ProjectiveDevice;->mapsPyramidLevel:I

    if-lez v5, :cond_1

    .line 512
    iget-object v5, p0, Lcom/googlecode/javacv/ProjectiveDevice;->undistortMaps1:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v1, v5, v3

    .line 513
    .local v1, map1:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    iget-object v5, p0, Lcom/googlecode/javacv/ProjectiveDevice;->undistortMaps2:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v2, v5, v3

    .line 514
    .local v2, map2:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    iget v5, p0, Lcom/googlecode/javacv/ProjectiveDevice;->imageWidth:I

    shr-int v4, v5, v3

    .line 515
    .local v4, w:I
    iget v5, p0, Lcom/googlecode/javacv/ProjectiveDevice;->imageHeight:I

    shr-int v0, v5, v3

    .line 516
    .local v0, h:I
    iget-object v5, p0, Lcom/googlecode/javacv/ProjectiveDevice;->undistortMaps1:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v6

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->nChannels()I

    move-result v7

    invoke-static {v4, v0, v6, v7}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v6

    aput-object v6, v5, v3

    .line 517
    iget-object v5, p0, Lcom/googlecode/javacv/ProjectiveDevice;->undistortMaps2:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v6

    invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->nChannels()I

    move-result v7

    invoke-static {v4, v0, v6, v7}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v6

    aput-object v6, v5, v3

    .line 518
    iget-object v5, p0, Lcom/googlecode/javacv/ProjectiveDevice;->undistortMaps1:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v5, v5, v3

    invoke-static {v1, v5, v11}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvResize(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V

    .line 519
    iget-object v5, p0, Lcom/googlecode/javacv/ProjectiveDevice;->undistortMaps2:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v5, v5, v3

    invoke-static {v2, v5, v11}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvResize(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V

    .line 552
    .end local v0           #h:I
    .end local v1           #map1:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .end local v2           #map2:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .end local v4           #w:I
    :cond_1
    return-void

    .line 507
    :cond_2
    iget-object v5, p0, Lcom/googlecode/javacv/ProjectiveDevice;->undistortMaps1:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget v6, p0, Lcom/googlecode/javacv/ProjectiveDevice;->imageWidth:I

    iget v7, p0, Lcom/googlecode/javacv/ProjectiveDevice;->imageHeight:I

    invoke-static {v6, v7, v8, v10}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v6

    aput-object v6, v5, v3

    .line 508
    iget-object v5, p0, Lcom/googlecode/javacv/ProjectiveDevice;->undistortMaps2:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget v6, p0, Lcom/googlecode/javacv/ProjectiveDevice;->imageWidth:I

    iget v7, p0, Lcom/googlecode/javacv/ProjectiveDevice;->imageHeight:I

    invoke-static {v6, v7, v8, v10}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v6

    aput-object v6, v5, v3

    goto :goto_0
.end method

.method public static normalize([DLcom/googlecode/javacv/cpp/opencv_core$CvMat;)[D
    .locals 20
    .parameter "xu"
    .parameter "K"

    .prologue
    .line 436
    invoke-virtual/range {p0 .. p0}, [D->clone()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [D

    .line 438
    .local v12, xn:[D
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v13

    const/16 v15, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v15

    div-double v5, v13, v15

    .line 439
    .local v5, fx:D
    const/4 v13, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v13

    const/16 v15, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v15

    div-double v7, v13, v15

    .line 440
    .local v7, fy:D
    const/4 v13, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v13

    const/16 v15, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v15

    div-double v1, v13, v15

    .line 441
    .local v1, dx:D
    const/4 v13, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v13

    const/16 v15, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v15

    div-double v3, v13, v15

    .line 442
    .local v3, dy:D
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v13

    const/16 v15, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v15

    div-double v10, v13, v15

    .line 443
    .local v10, s:D
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    move-object/from16 v0, p0

    array-length v13, v0

    div-int/lit8 v13, v13, 0x2

    if-ge v9, v13, :cond_0

    .line 444
    mul-int/lit8 v13, v9, 0x2

    mul-int/lit8 v14, v9, 0x2

    aget-wide v14, p0, v14

    sub-double/2addr v14, v1

    div-double/2addr v14, v5

    mul-int/lit8 v16, v9, 0x2

    add-int/lit8 v16, v16, 0x1

    aget-wide v16, p0, v16

    add-double v16, v16, v3

    mul-double v16, v16, v10

    mul-double v18, v5, v7

    div-double v16, v16, v18

    sub-double v14, v14, v16

    aput-wide v14, v12, v13

    .line 445
    mul-int/lit8 v13, v9, 0x2

    add-int/lit8 v13, v13, 0x1

    mul-int/lit8 v14, v9, 0x2

    add-int/lit8 v14, v14, 0x1

    aget-wide v14, p0, v14

    sub-double/2addr v14, v3

    div-double/2addr v14, v7

    aput-wide v14, v12, v13

    .line 443
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 447
    :cond_0
    return-object v12
.end method

.method public static read(Ljava/lang/String;)[Lcom/googlecode/javacv/ProjectiveDevice;
    .locals 12
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/ProjectiveDevice$Exception;
        }
    .end annotation

    .prologue
    .line 749
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {p0, v10, v11}, Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;->open(Ljava/lang/String;Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;I)Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;

    move-result-object v4

    .line 750
    .local v4, fs:Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;
    invoke-static {v4}, Lcom/googlecode/javacv/CameraDevice;->read(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;)[Lcom/googlecode/javacv/CameraDevice;

    move-result-object v1

    .line 751
    .local v1, cameraDevices:[Lcom/googlecode/javacv/CameraDevice;
    invoke-static {v4}, Lcom/googlecode/javacv/ProjectorDevice;->read(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;)[Lcom/googlecode/javacv/ProjectorDevice;

    move-result-object v9

    .line 752
    .local v9, projectorDevices:[Lcom/googlecode/javacv/ProjectorDevice;
    array-length v10, v1

    array-length v11, v9

    add-int/2addr v10, v11

    new-array v3, v10, [Lcom/googlecode/javacv/ProjectiveDevice;

    .line 753
    .local v3, devices:[Lcom/googlecode/javacv/ProjectiveDevice;
    const/4 v5, 0x0

    .line 754
    .local v5, i:I
    move-object v0, v1

    .local v0, arr$:[Lcom/googlecode/javacv/CameraDevice;
    array-length v8, v0

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    move v6, v5

    .end local v5           #i:I
    .local v6, i:I
    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v2, v0, v7

    .line 755
    .local v2, d:Lcom/googlecode/javacv/ProjectiveDevice;
    add-int/lit8 v5, v6, 0x1

    .end local v6           #i:I
    .restart local v5       #i:I
    aput-object v2, v3, v6

    .line 754
    add-int/lit8 v7, v7, 0x1

    move v6, v5

    .end local v5           #i:I
    .restart local v6       #i:I
    goto :goto_0

    .line 757
    .end local v2           #d:Lcom/googlecode/javacv/ProjectiveDevice;
    :cond_0
    move-object v0, v9

    .local v0, arr$:[Lcom/googlecode/javacv/ProjectorDevice;
    array-length v8, v0

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_1

    aget-object v2, v0, v7

    .line 758
    .restart local v2       #d:Lcom/googlecode/javacv/ProjectiveDevice;
    add-int/lit8 v5, v6, 0x1

    .end local v6           #i:I
    .restart local v5       #i:I
    aput-object v2, v3, v6

    .line 757
    add-int/lit8 v7, v7, 0x1

    move v6, v5

    .end local v5           #i:I
    .restart local v6       #i:I
    goto :goto_1

    .line 760
    .end local v2           #d:Lcom/googlecode/javacv/ProjectiveDevice;
    :cond_1
    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;->release()V

    .line 761
    return-object v3
.end method

.method public static undistort([D[D)[D
    .locals 41
    .parameter "xd"
    .parameter "k"

    .prologue
    .line 371
    const/16 v37, 0x0

    aget-wide v8, p1, v37

    .line 372
    .local v8, k1:D
    const/16 v37, 0x1

    aget-wide v10, p1, v37

    .line 373
    .local v10, k2:D
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v37, v0

    const/16 v38, 0x4

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_0

    const/16 v37, 0x4

    aget-wide v12, p1, v37

    .line 375
    .local v12, k3:D
    :goto_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v37, v0

    const/16 v38, 0x5

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_1

    const/16 v37, 0x5

    aget-wide v14, p1, v37

    .line 376
    .local v14, k4:D
    :goto_1
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v37, v0

    const/16 v38, 0x6

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_2

    const/16 v37, 0x6

    aget-wide v16, p1, v37

    .line 377
    .local v16, k5:D
    :goto_2
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v37, v0

    const/16 v38, 0x7

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_3

    const/16 v37, 0x7

    aget-wide v18, p1, v37

    .line 378
    .local v18, k6:D
    :goto_3
    const/16 v37, 0x2

    aget-wide v22, p1, v37

    .line 379
    .local v22, p1:D
    const/16 v37, 0x3

    aget-wide v24, p1, v37

    .line 381
    .local v24, p2:D
    invoke-virtual/range {p0 .. p0}, [D->clone()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, [D

    .line 383
    .local v32, xu:[D
    const/4 v6, 0x0

    .local v6, i:I
    :goto_4
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v37, v0

    div-int/lit8 v37, v37, 0x2

    move/from16 v0, v37

    if-ge v6, v0, :cond_5

    .line 384
    mul-int/lit8 v37, v6, 0x2

    aget-wide v28, v32, v37

    .local v28, x:D
    mul-int/lit8 v37, v6, 0x2

    add-int/lit8 v37, v37, 0x1

    aget-wide v33, v32, v37

    .line 385
    .local v33, y:D
    mul-int/lit8 v37, v6, 0x2

    aget-wide v30, p0, v37

    .local v30, xo:D
    mul-int/lit8 v37, v6, 0x2

    add-int/lit8 v37, v37, 0x1

    aget-wide v35, p0, v37

    .line 386
    .local v35, yo:D
    const/4 v7, 0x0

    .local v7, j:I
    :goto_5
    const/16 v37, 0x14

    move/from16 v0, v37

    if-ge v7, v0, :cond_4

    .line 387
    mul-double v37, v28, v28

    mul-double v39, v33, v33

    add-double v26, v37, v39

    .line 388
    .local v26, r_2:D
    const-wide/high16 v37, 0x3ff0

    mul-double v39, v8, v26

    add-double v37, v37, v39

    mul-double v39, v10, v26

    mul-double v39, v39, v26

    add-double v37, v37, v39

    mul-double v39, v12, v26

    mul-double v39, v39, v26

    mul-double v39, v39, v26

    add-double v20, v37, v39

    .line 389
    .local v20, k_radial:D
    const-wide/high16 v37, 0x4000

    mul-double v37, v37, v22

    mul-double v37, v37, v28

    mul-double v37, v37, v33

    const-wide/high16 v39, 0x4000

    mul-double v39, v39, v28

    mul-double v39, v39, v28

    add-double v39, v39, v26

    mul-double v39, v39, v24

    add-double v2, v37, v39

    .line 390
    .local v2, delta_x:D
    const-wide/high16 v37, 0x4000

    mul-double v37, v37, v33

    mul-double v37, v37, v33

    add-double v37, v37, v26

    mul-double v37, v37, v22

    const-wide/high16 v39, 0x4000

    mul-double v39, v39, v24

    mul-double v39, v39, v28

    mul-double v39, v39, v33

    add-double v4, v37, v39

    .line 391
    .local v4, delta_y:D
    sub-double v37, v30, v2

    div-double v28, v37, v20

    .line 392
    sub-double v37, v35, v4

    div-double v33, v37, v20

    .line 386
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 373
    .end local v2           #delta_x:D
    .end local v4           #delta_y:D
    .end local v6           #i:I
    .end local v7           #j:I
    .end local v12           #k3:D
    .end local v14           #k4:D
    .end local v16           #k5:D
    .end local v18           #k6:D
    .end local v20           #k_radial:D
    .end local v22           #p1:D
    .end local v24           #p2:D
    .end local v26           #r_2:D
    .end local v28           #x:D
    .end local v30           #xo:D
    .end local v32           #xu:[D
    .end local v33           #y:D
    .end local v35           #yo:D
    :cond_0
    const-wide/16 v12, 0x0

    goto/16 :goto_0

    .line 375
    .restart local v12       #k3:D
    :cond_1
    const-wide/16 v14, 0x0

    goto/16 :goto_1

    .line 376
    .restart local v14       #k4:D
    :cond_2
    const-wide/16 v16, 0x0

    goto/16 :goto_2

    .line 377
    .restart local v16       #k5:D
    :cond_3
    const-wide/16 v18, 0x0

    goto/16 :goto_3

    .line 394
    .restart local v6       #i:I
    .restart local v7       #j:I
    .restart local v18       #k6:D
    .restart local v22       #p1:D
    .restart local v24       #p2:D
    .restart local v28       #x:D
    .restart local v30       #xo:D
    .restart local v32       #xu:[D
    .restart local v33       #y:D
    .restart local v35       #yo:D
    :cond_4
    mul-int/lit8 v37, v6, 0x2

    aput-wide v28, v32, v37

    mul-int/lit8 v37, v6, 0x2

    add-int/lit8 v37, v37, 0x1

    aput-wide v33, v32, v37

    .line 383
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    .line 396
    .end local v7           #j:I
    .end local v28           #x:D
    .end local v30           #xo:D
    .end local v33           #y:D
    .end local v35           #yo:D
    :cond_5
    return-object v32
.end method

.method public static unnormalize([DLcom/googlecode/javacv/cpp/opencv_core$CvMat;)[D
    .locals 18
    .parameter "xn"
    .parameter "K"

    .prologue
    .line 450
    invoke-virtual/range {p0 .. p0}, [D->clone()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [D

    .line 452
    .local v12, xu:[D
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v13

    const/16 v15, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v15

    div-double v5, v13, v15

    .line 453
    .local v5, fx:D
    const/4 v13, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v13

    const/16 v15, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v15

    div-double v7, v13, v15

    .line 454
    .local v7, fy:D
    const/4 v13, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v13

    const/16 v15, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v15

    div-double v1, v13, v15

    .line 455
    .local v1, dx:D
    const/4 v13, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v13

    const/16 v15, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v15

    div-double v3, v13, v15

    .line 456
    .local v3, dy:D
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v13

    const/16 v15, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v15

    div-double v10, v13, v15

    .line 457
    .local v10, s:D
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    move-object/from16 v0, p0

    array-length v13, v0

    div-int/lit8 v13, v13, 0x2

    if-ge v9, v13, :cond_0

    .line 458
    mul-int/lit8 v13, v9, 0x2

    mul-int/lit8 v14, v9, 0x2

    aget-wide v14, p0, v14

    mul-double/2addr v14, v5

    add-double/2addr v14, v1

    mul-int/lit8 v16, v9, 0x2

    add-int/lit8 v16, v16, 0x1

    aget-wide v16, p0, v16

    mul-double v16, v16, v10

    add-double v14, v14, v16

    aput-wide v14, v12, v13

    .line 459
    mul-int/lit8 v13, v9, 0x2

    add-int/lit8 v13, v13, 0x1

    mul-int/lit8 v14, v9, 0x2

    add-int/lit8 v14, v14, 0x1

    aget-wide v14, p0, v14

    mul-double/2addr v14, v7

    add-double/2addr v14, v3

    aput-wide v14, v12, v13

    .line 457
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 461
    :cond_0
    return-object v12
.end method

.method public static varargs write(Ljava/lang/String;[Lcom/googlecode/javacv/ProjectiveDevice;)V
    .locals 10
    .parameter "filename"
    .parameter "devices"

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 779
    const/4 v6, 0x1

    invoke-static {p0, v7, v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;->open(Ljava/lang/String;Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;I)Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;

    move-result-object v3

    .line 780
    .local v3, fs:Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;
    invoke-static {}, Lcom/googlecode/javacv/cpp/opencv_core;->cvAttrList()Lcom/googlecode/javacv/cpp/opencv_core$CvAttrList;

    move-result-object v0

    .line 782
    .local v0, a:Lcom/googlecode/javacv/cpp/opencv_core$CvAttrList;
    const-string v6, "Cameras"

    invoke-static {v3, v6, v9, v7, v0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvStartWriteStruct(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Ljava/lang/String;ILjava/lang/String;Lcom/googlecode/javacv/cpp/opencv_core$CvAttrList;)V

    .line 783
    move-object v1, p1

    .local v1, arr$:[Lcom/googlecode/javacv/ProjectiveDevice;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v1, v4

    .line 784
    .local v2, d:Lcom/googlecode/javacv/ProjectiveDevice;
    instance-of v6, v2, Lcom/googlecode/javacv/CameraDevice;

    if-eqz v6, :cond_0

    .line 785
    invoke-virtual {v2}, Lcom/googlecode/javacv/ProjectiveDevice;->getSettings()Lcom/googlecode/javacv/ProjectiveDevice$Settings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/googlecode/javacv/ProjectiveDevice$Settings;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v7, v6, v8}, Lcom/googlecode/javacv/cpp/opencv_core;->cvWriteString(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Ljava/lang/String;Ljava/lang/String;I)V

    .line 783
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 788
    .end local v2           #d:Lcom/googlecode/javacv/ProjectiveDevice;
    :cond_1
    invoke-static {v3}, Lcom/googlecode/javacv/cpp/opencv_core;->cvEndWriteStruct(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;)V

    .line 790
    const-string v6, "Projectors"

    invoke-static {v3, v6, v9, v7, v0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvStartWriteStruct(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Ljava/lang/String;ILjava/lang/String;Lcom/googlecode/javacv/cpp/opencv_core$CvAttrList;)V

    .line 791
    move-object v1, p1

    array-length v5, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v2, v1, v4

    .line 792
    .restart local v2       #d:Lcom/googlecode/javacv/ProjectiveDevice;
    instance-of v6, v2, Lcom/googlecode/javacv/ProjectorDevice;

    if-eqz v6, :cond_2

    .line 793
    invoke-virtual {v2}, Lcom/googlecode/javacv/ProjectiveDevice;->getSettings()Lcom/googlecode/javacv/ProjectiveDevice$Settings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/googlecode/javacv/ProjectiveDevice$Settings;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v7, v6, v8}, Lcom/googlecode/javacv/cpp/opencv_core;->cvWriteString(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Ljava/lang/String;Ljava/lang/String;I)V

    .line 791
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 796
    .end local v2           #d:Lcom/googlecode/javacv/ProjectiveDevice;
    :cond_3
    invoke-static {v3}, Lcom/googlecode/javacv/cpp/opencv_core;->cvEndWriteStruct(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;)V

    .line 798
    move-object v1, p1

    array-length v5, v1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v5, :cond_4

    aget-object v2, v1, v4

    .line 799
    .restart local v2       #d:Lcom/googlecode/javacv/ProjectiveDevice;
    invoke-virtual {v2, v3}, Lcom/googlecode/javacv/ProjectiveDevice;->writeParameters(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;)V

    .line 798
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 801
    .end local v2           #d:Lcom/googlecode/javacv/ProjectiveDevice;
    :cond_4
    invoke-virtual {v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;->release()V

    .line 802
    return-void
.end method

.method public static varargs write(Ljava/lang/String;[[Lcom/googlecode/javacv/ProjectiveDevice;)V
    .locals 13
    .parameter "filename"
    .parameter "devices"

    .prologue
    .line 765
    const/4 v11, 0x0

    .line 766
    .local v11, totalLength:I
    move-object v1, p1

    .local v1, arr$:[[Lcom/googlecode/javacv/ProjectiveDevice;
    array-length v9, v1

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v4, v1, v7

    .line 767
    .local v4, ds:[Lcom/googlecode/javacv/ProjectiveDevice;
    array-length v12, v4

    add-int/2addr v11, v12

    .line 766
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 769
    .end local v4           #ds:[Lcom/googlecode/javacv/ProjectiveDevice;
    :cond_0
    new-array v0, v11, [Lcom/googlecode/javacv/ProjectiveDevice;

    .line 770
    .local v0, allDevices:[Lcom/googlecode/javacv/ProjectiveDevice;
    const/4 v5, 0x0

    .line 771
    .local v5, i:I
    move-object v1, p1

    array-length v9, v1

    const/4 v7, 0x0

    move v8, v7

    .end local v1           #arr$:[[Lcom/googlecode/javacv/ProjectiveDevice;
    .end local v7           #i$:I
    .end local v9           #len$:I
    .local v8, i$:I
    :goto_1
    if-ge v8, v9, :cond_2

    aget-object v4, v1, v8

    .line 772
    .restart local v4       #ds:[Lcom/googlecode/javacv/ProjectiveDevice;
    move-object v2, v4

    .local v2, arr$:[Lcom/googlecode/javacv/ProjectiveDevice;
    array-length v10, v2

    .local v10, len$:I
    const/4 v7, 0x0

    .end local v8           #i$:I
    .restart local v7       #i$:I
    move v6, v5

    .end local v5           #i:I
    .local v6, i:I
    :goto_2
    if-ge v7, v10, :cond_1

    aget-object v3, v2, v7

    .line 773
    .local v3, d:Lcom/googlecode/javacv/ProjectiveDevice;
    add-int/lit8 v5, v6, 0x1

    .end local v6           #i:I
    .restart local v5       #i:I
    aput-object v3, v0, v6

    .line 772
    add-int/lit8 v7, v7, 0x1

    move v6, v5

    .end local v5           #i:I
    .restart local v6       #i:I
    goto :goto_2

    .line 771
    .end local v3           #d:Lcom/googlecode/javacv/ProjectiveDevice;
    :cond_1
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    .end local v7           #i$:I
    .restart local v8       #i$:I
    move v5, v6

    .end local v6           #i:I
    .restart local v5       #i:I
    goto :goto_1

    .line 776
    .end local v2           #arr$:[Lcom/googlecode/javacv/ProjectiveDevice;
    .end local v4           #ds:[Lcom/googlecode/javacv/ProjectiveDevice;
    .end local v10           #len$:I
    :cond_2
    invoke-static {p0, v0}, Lcom/googlecode/javacv/ProjectiveDevice;->write(Ljava/lang/String;[Lcom/googlecode/javacv/ProjectiveDevice;)V

    .line 777
    return-void
.end method


# virtual methods
.method public distort(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 6
    .parameter "image"

    .prologue
    .line 634
    if-eqz p1, :cond_0

    .line 635
    invoke-direct {p0}, Lcom/googlecode/javacv/ProjectiveDevice;->initDistortMaps()V

    .line 636
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveDevice;->tempImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-static {v0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->createIfNotCompatible(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveDevice;->tempImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 637
    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveDevice;->tempImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveDevice;->distortMaps1:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget v2, p0, Lcom/googlecode/javacv/ProjectiveDevice;->mapsPyramidLevel:I

    aget-object v2, v0, v2

    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveDevice;->distortMaps2:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget v3, p0, Lcom/googlecode/javacv/ProjectiveDevice;->mapsPyramidLevel:I

    aget-object v3, v0, v3

    const/16 v4, 0x9

    sget-object v5, Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;->ZERO:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvRemap(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;ILcom/googlecode/javacv/cpp/opencv_core$CvScalar;)V

    .line 639
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveDevice;->tempImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 641
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public distort(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V
    .locals 6
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 627
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 628
    invoke-direct {p0}, Lcom/googlecode/javacv/ProjectiveDevice;->initDistortMaps()V

    .line 629
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveDevice;->distortMaps1:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget v1, p0, Lcom/googlecode/javacv/ProjectiveDevice;->mapsPyramidLevel:I

    aget-object v2, v0, v1

    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveDevice;->distortMaps2:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget v1, p0, Lcom/googlecode/javacv/ProjectiveDevice;->mapsPyramidLevel:I

    aget-object v3, v0, v1

    const/16 v4, 0x9

    sget-object v5, Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;->ZERO:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvRemap(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;ILcom/googlecode/javacv/cpp/opencv_core$CvScalar;)V

    .line 632
    :cond_0
    return-void
.end method

.method public varargs distort([D)[D
    .locals 3
    .parameter "x"

    .prologue
    .line 430
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {p1, v2}, Lcom/googlecode/javacv/ProjectiveDevice;->normalize([DLcom/googlecode/javacv/cpp/opencv_core$CvMat;)[D

    move-result-object v1

    .line 431
    .local v1, xn:[D
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveDevice;->distortionCoeffs:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get()[D

    move-result-object v2

    invoke-static {v1, v2}, Lcom/googlecode/javacv/ProjectiveDevice;->distort([D[D)[D

    move-result-object v0

    .line 432
    .local v0, xd:[D
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v0, v2}, Lcom/googlecode/javacv/ProjectiveDevice;->unnormalize([DLcom/googlecode/javacv/cpp/opencv_core$CvMat;)[D

    move-result-object v2

    return-object v2
.end method

.method public getBackProjectionMatrix(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;DLcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .locals 20
    .parameter "n"
    .parameter "d"
    .parameter "B"

    .prologue
    .line 651
    sget-object v2, Lcom/googlecode/javacv/ProjectiveDevice;->temp3x3:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 653
    .local v9, temp:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->cols(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {v9}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->step()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    invoke-virtual {v9, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->step(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 654
    const/4 v2, 0x3

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->rows(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 655
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/ProjectiveDevice;->R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/ProjectiveDevice;->T:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const-wide/high16 v4, -0x4010

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    invoke-static/range {v2 .. v10}, Lcom/googlecode/javacv/cpp/opencv_core;->cvGEMM(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;DLcom/googlecode/javacv/cpp/opencv_core$CvArr;DLcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V

    .line 656
    const-wide/high16 v11, 0x3ff0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v17, 0x2

    move-object/from16 v10, p1

    move-object/from16 v16, p4

    invoke-static/range {v9 .. v17}, Lcom/googlecode/javacv/cpp/opencv_core;->cvGEMM(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;DLcom/googlecode/javacv/cpp/opencv_core$CvArr;DLcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V

    .line 657
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/googlecode/javacv/cpp/opencv_core;->cvDotProduct(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)D

    move-result-wide v2

    add-double v18, v2, p2

    .line 658
    .local v18, a:D
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v3

    sub-double v3, v3, v18

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3, v4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 659
    const/4 v2, 0x4

    const/4 v3, 0x4

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v3

    sub-double v3, v3, v18

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3, v4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 660
    const/16 v2, 0x8

    const/16 v3, 0x8

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v3

    sub-double v3, v3, v18

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3, v4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 661
    const/4 v2, 0x4

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->rows(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 662
    const/4 v2, 0x3

    invoke-virtual {v9, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->cols(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {v9}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->step()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    invoke-virtual {v9, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->step(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 664
    const/16 v2, 0x9

    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get()[D

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(I[D)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 666
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/ProjectiveDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/ProjectiveDevice;->R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v2, v3, v9}, Lcom/googlecode/javacv/cpp/opencv_core;->cvMatMul(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 667
    const/4 v2, 0x0

    invoke-static {v9, v9, v2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvInvert(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;I)D

    .line 669
    move-object/from16 v0, p4

    move-object/from16 v1, p4

    invoke-static {v0, v9, v1}, Lcom/googlecode/javacv/cpp/opencv_core;->cvMatMul(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 670
    const-wide/high16 v2, 0x3ff0

    const/16 v4, 0xb

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v4

    div-double v4, v2, v4

    const-wide/16 v6, 0x0

    move-object/from16 v2, p4

    move-object/from16 v3, p4

    invoke-static/range {v2 .. v7}, Lcom/googlecode/javacv/cpp/opencv_core;->cvConvertScale(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;DD)V

    .line 672
    return-object p4
.end method

.method public getDistortMap1()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 2

    .prologue
    .line 619
    invoke-direct {p0}, Lcom/googlecode/javacv/ProjectiveDevice;->initDistortMaps()V

    .line 620
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveDevice;->distortMaps1:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget v1, p0, Lcom/googlecode/javacv/ProjectiveDevice;->mapsPyramidLevel:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getDistortMap2()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 2

    .prologue
    .line 623
    invoke-direct {p0}, Lcom/googlecode/javacv/ProjectiveDevice;->initDistortMaps()V

    .line 624
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveDevice;->distortMaps2:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget v1, p0, Lcom/googlecode/javacv/ProjectiveDevice;->mapsPyramidLevel:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getFrontoParallelH([DLcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .locals 42
    .parameter "roipts"
    .parameter "n"
    .parameter "H"

    .prologue
    .line 680
    sget-object v34, Lcom/googlecode/javacv/ProjectiveDevice;->B4x3:Ljava/lang/ThreadLocal;

    invoke-virtual/range {v34 .. v34}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .local v4, B:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    sget-object v34, Lcom/googlecode/javacv/ProjectiveDevice;->a4x1:Ljava/lang/ThreadLocal;

    invoke-virtual/range {v34 .. v34}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .local v5, a:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    sget-object v34, Lcom/googlecode/javacv/ProjectiveDevice;->t3x1:Ljava/lang/ThreadLocal;

    invoke-virtual/range {v34 .. v34}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 683
    .local v9, t:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    const/16 v34, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->signum(D)D

    move-result-wide v7

    .line 684
    .local v7, s:D
    neg-double v0, v7

    move-wide/from16 v34, v0

    const/16 v36, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v36

    mul-double v34, v34, v36

    const/16 v36, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v36

    mul-double v36, v36, v7

    invoke-static/range {v34 .. v37}, Lcom/googlecode/javacv/JavaCV;->unitize(DD)[D

    move-result-object v6

    .line 685
    .local v6, dir:[D
    const/16 v34, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v34

    mul-double v34, v34, v7

    invoke-virtual/range {p2 .. p2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get()[D

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/googlecode/javacv/JavaCV;->norm([D)D

    move-result-wide v36

    div-double v34, v34, v36

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->acos(D)D

    move-result-wide v10

    .line 686
    .local v10, theta:D
    const/16 v34, 0x3

    move/from16 v0, v34

    new-array v0, v0, [D

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const/16 v36, 0x0

    aget-wide v36, v6, v36

    mul-double v36, v36, v10

    aput-wide v36, v34, v35

    const/16 v35, 0x1

    const/16 v36, 0x1

    aget-wide v36, v6, v36

    mul-double v36, v36, v10

    aput-wide v36, v34, v35

    const/16 v35, 0x2

    const-wide/16 v36, 0x0

    aput-wide v36, v34, v35

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put([D)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 687
    const/16 v34, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v34

    invoke-static {v9, v0, v1}, Lcom/googlecode/javacv/cpp/opencv_calib3d;->cvRodrigues2(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)I

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/ProjectiveDevice;->R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, p3

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvMatMul(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 692
    const-wide/16 v14, 0x0

    .local v14, x:D
    const-wide/16 v24, 0x0

    .line 693
    .local v24, y:D
    if-eqz p1, :cond_0

    .line 695
    const/16 v34, 0x0

    aget-wide v16, p1, v34

    .local v16, x1:D
    const/16 v34, 0x1

    aget-wide v26, p1, v34

    .line 696
    .local v26, y1:D
    const/16 v34, 0x4

    aget-wide v18, p1, v34

    .local v18, x2:D
    const/16 v34, 0x5

    aget-wide v28, p1, v34

    .line 697
    .local v28, y2:D
    const/16 v34, 0x2

    aget-wide v20, p1, v34

    .local v20, x3:D
    const/16 v34, 0x3

    aget-wide v30, p1, v34

    .line 698
    .local v30, y3:D
    const/16 v34, 0x6

    aget-wide v22, p1, v34

    .local v22, x4:D
    const/16 v34, 0x7

    aget-wide v32, p1, v34

    .line 699
    .local v32, y4:D
    sub-double v34, v22, v20

    sub-double v36, v26, v30

    mul-double v34, v34, v36

    sub-double v36, v32, v30

    sub-double v38, v16, v20

    mul-double v36, v36, v38

    sub-double v34, v34, v36

    sub-double v36, v32, v30

    sub-double v38, v18, v16

    mul-double v36, v36, v38

    sub-double v38, v22, v20

    sub-double v40, v28, v26

    mul-double v38, v38, v40

    sub-double v36, v36, v38

    div-double v12, v34, v36

    .line 701
    .local v12, u:D
    sub-double v34, v18, v16

    mul-double v34, v34, v12

    add-double v14, v16, v34

    .line 702
    sub-double v34, v28, v26

    mul-double v34, v34, v12

    add-double v24, v26, v34

    .line 707
    .end local v12           #u:D
    .end local v16           #x1:D
    .end local v18           #x2:D
    .end local v20           #x3:D
    .end local v22           #x4:D
    .end local v26           #y1:D
    .end local v28           #y2:D
    .end local v30           #y3:D
    .end local v32           #y4:D
    :cond_0
    const-wide/high16 v34, -0x4010

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/googlecode/javacv/ProjectiveDevice;->getBackProjectionMatrix(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;DLcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 708
    const/16 v34, 0x3

    move/from16 v0, v34

    new-array v0, v0, [D

    move-object/from16 v34, v0

    const/16 v35, 0x0

    aput-wide v14, v34, v35

    const/16 v35, 0x1

    aput-wide v24, v34, v35

    const/16 v35, 0x2

    const-wide/high16 v36, 0x3ff0

    aput-wide v36, v34, v35

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put([D)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 709
    invoke-static {v4, v9, v5}, Lcom/googlecode/javacv/cpp/opencv_core;->cvMatMul(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 710
    const/16 v34, 0x2

    const/16 v35, 0x0

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v35

    const/16 v37, 0x3

    move/from16 v0, v37

    invoke-virtual {v5, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v37

    div-double v35, v35, v37

    move-object/from16 v0, p3

    move/from16 v1, v34

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 711
    const/16 v34, 0x5

    const/16 v35, 0x1

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v35

    const/16 v37, 0x3

    move/from16 v0, v37

    invoke-virtual {v5, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v37

    div-double v35, v35, v37

    move-object/from16 v0, p3

    move/from16 v1, v34

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 712
    const/16 v34, 0x8

    const/16 v35, 0x2

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v35

    const/16 v37, 0x3

    move/from16 v0, v37

    invoke-virtual {v5, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v37

    div-double v35, v35, v37

    move-object/from16 v0, p3

    move/from16 v1, v34

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 714
    return-object p3
.end method

.method public getMapsPyramidLevel()I
    .locals 1

    .prologue
    .line 483
    iget v0, p0, Lcom/googlecode/javacv/ProjectiveDevice;->mapsPyramidLevel:I

    return v0
.end method

.method public getRGBColorOrder()[I
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 332
    new-array v1, v3, [I

    .line 333
    .local v1, order:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 334
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveDevice;->colorOrder:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 338
    sget-boolean v2, Lcom/googlecode/javacv/ProjectiveDevice;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 335
    :sswitch_0
    const/4 v2, 0x2

    aput v2, v1, v0

    .line 333
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 336
    :sswitch_1
    const/4 v2, 0x1

    aput v2, v1, v0

    goto :goto_1

    .line 337
    :sswitch_2
    const/4 v2, 0x0

    aput v2, v1, v0

    goto :goto_1

    .line 341
    :cond_1
    return-object v1

    .line 334
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_0
        0x47 -> :sswitch_1
        0x52 -> :sswitch_2
    .end sparse-switch
.end method

.method public getRectifyingHomography(Lcom/googlecode/javacv/ProjectiveDevice;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .locals 29
    .parameter "peer"
    .parameter "H"

    .prologue
    .line 724
    sget-object v3, Lcom/googlecode/javacv/ProjectiveDevice;->relativeR3x3:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .local v10, relativeR:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    sget-object v3, Lcom/googlecode/javacv/ProjectiveDevice;->relativeT3x1:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 725
    .local v17, relativeT:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/ProjectiveDevice;->R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/googlecode/javacv/ProjectiveDevice;->R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const-wide/high16 v5, 0x3ff0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v11, 0x2

    invoke-static/range {v3 .. v11}, Lcom/googlecode/javacv/cpp/opencv_core;->cvGEMM(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;DLcom/googlecode/javacv/cpp/opencv_core$CvArr;DLcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V

    .line 726
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/googlecode/javacv/ProjectiveDevice;->T:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const-wide/high16 v12, -0x4010

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacv/ProjectiveDevice;->T:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const-wide/high16 v15, 0x3ff0

    const/16 v18, 0x0

    invoke-static/range {v10 .. v18}, Lcom/googlecode/javacv/cpp/opencv_core;->cvGEMM(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;DLcom/googlecode/javacv/cpp/opencv_core$CvArr;DLcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V

    .line 728
    sget-object v3, Lcom/googlecode/javacv/ProjectiveDevice;->R13x3:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .local v18, R1:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    sget-object v3, Lcom/googlecode/javacv/ProjectiveDevice;->P13x4:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 729
    .local v20, P1:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    sget-object v3, Lcom/googlecode/javacv/ProjectiveDevice;->R23x3:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .local v19, R2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    sget-object v3, Lcom/googlecode/javacv/ProjectiveDevice;->P23x4:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 730
    .local v21, P2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    move-object/from16 v0, p1

    iget v3, v0, Lcom/googlecode/javacv/ProjectiveDevice;->imageWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/googlecode/javacv/ProjectiveDevice;->imageWidth:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p1

    iget v4, v0, Lcom/googlecode/javacv/ProjectiveDevice;->imageHeight:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/googlecode/javacv/ProjectiveDevice;->imageHeight:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSize(II)Lcom/googlecode/javacv/cpp/opencv_core$CvSize;

    move-result-object v15

    .line 732
    .local v15, imageSize:Lcom/googlecode/javacv/cpp/opencv_core$CvSize;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/googlecode/javacv/ProjectiveDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/googlecode/javacv/ProjectiveDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/googlecode/javacv/ProjectiveDevice;->distortionCoeffs:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/javacv/ProjectiveDevice;->distortionCoeffs:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/high16 v24, -0x4010

    sget-object v26, Lcom/googlecode/javacv/cpp/opencv_core$CvSize;->ZERO:Lcom/googlecode/javacv/cpp/opencv_core$CvSize;

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v16, v10

    invoke-static/range {v11 .. v28}, Lcom/googlecode/javacv/cpp/opencv_calib3d;->cvStereoRectify(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;IDLcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;)V

    .line 736
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/ProjectiveDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, v19

    move-object/from16 v1, v19

    invoke-static {v3, v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core;->cvMatMul(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 737
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/ProjectiveDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvInvert(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)D

    .line 738
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvMatMul(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 740
    return-object p2
.end method

.method public getSettings()Lcom/googlecode/javacv/ProjectiveDevice$Settings;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveDevice;->settings:Lcom/googlecode/javacv/ProjectiveDevice$Settings;

    return-object v0
.end method

.method public getUndistortMap1()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 2

    .prologue
    .line 554
    invoke-direct {p0}, Lcom/googlecode/javacv/ProjectiveDevice;->initUndistortMaps()V

    .line 555
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveDevice;->undistortMaps1:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget v1, p0, Lcom/googlecode/javacv/ProjectiveDevice;->mapsPyramidLevel:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getUndistortMap2()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 2

    .prologue
    .line 558
    invoke-direct {p0}, Lcom/googlecode/javacv/ProjectiveDevice;->initUndistortMaps()V

    .line 559
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveDevice;->undistortMaps2:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget v1, p0, Lcom/googlecode/javacv/ProjectiveDevice;->mapsPyramidLevel:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isFixedPointMaps()Z
    .locals 1

    .prologue
    .line 472
    iget-boolean v0, p0, Lcom/googlecode/javacv/ProjectiveDevice;->fixedPointMaps:Z

    return v0
.end method

.method public readParameters(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;)V
    .locals 8
    .parameter "fs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/ProjectiveDevice$Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 864
    if-nez p1, :cond_0

    .line 865
    new-instance v3, Lcom/googlecode/javacv/ProjectiveDevice$Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: CvFileStorage is null, cannot read parameters for device "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/googlecode/javacv/ProjectiveDevice;->getSettings()Lcom/googlecode/javacv/ProjectiveDevice$Settings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/googlecode/javacv/ProjectiveDevice$Settings;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Is the parametersFile correct?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/googlecode/javacv/ProjectiveDevice$Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 868
    :cond_0
    invoke-static {}, Lcom/googlecode/javacv/cpp/opencv_core;->cvAttrList()Lcom/googlecode/javacv/cpp/opencv_core$CvAttrList;

    move-result-object v0

    .line 870
    .local v0, a:Lcom/googlecode/javacv/cpp/opencv_core$CvAttrList;
    invoke-virtual {p0}, Lcom/googlecode/javacv/ProjectiveDevice;->getSettings()Lcom/googlecode/javacv/ProjectiveDevice$Settings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/googlecode/javacv/ProjectiveDevice$Settings;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v4, v3}, Lcom/googlecode/javacv/cpp/opencv_core;->cvGetFileNodeByName(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;Ljava/lang/String;)Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;

    move-result-object v1

    .line 871
    .local v1, fn:Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;
    if-nez v1, :cond_1

    .line 872
    new-instance v3, Lcom/googlecode/javacv/ProjectiveDevice$Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: CvFileNode is null, cannot read parameters for device "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/googlecode/javacv/ProjectiveDevice;->getSettings()Lcom/googlecode/javacv/ProjectiveDevice$Settings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/googlecode/javacv/ProjectiveDevice$Settings;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Is the name correct?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/googlecode/javacv/ProjectiveDevice$Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 876
    :cond_1
    const-string v3, "imageWidth"

    iget v5, p0, Lcom/googlecode/javacv/ProjectiveDevice;->imageWidth:I

    invoke-static {p1, v1, v3, v5}, Lcom/googlecode/javacv/cpp/opencv_core;->cvReadIntByName(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/googlecode/javacv/ProjectiveDevice;->imageWidth:I

    .line 877
    const-string v3, "imageHeight"

    iget v5, p0, Lcom/googlecode/javacv/ProjectiveDevice;->imageHeight:I

    invoke-static {p1, v1, v3, v5}, Lcom/googlecode/javacv/cpp/opencv_core;->cvReadIntByName(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/googlecode/javacv/ProjectiveDevice;->imageHeight:I

    .line 878
    invoke-virtual {p0}, Lcom/googlecode/javacv/ProjectiveDevice;->getSettings()Lcom/googlecode/javacv/ProjectiveDevice$Settings;

    move-result-object v3

    const-string v5, "gamma"

    invoke-virtual {p0}, Lcom/googlecode/javacv/ProjectiveDevice;->getSettings()Lcom/googlecode/javacv/ProjectiveDevice$Settings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/googlecode/javacv/ProjectiveDevice$Settings;->getResponseGamma()D

    move-result-wide v6

    invoke-static {p1, v1, v5, v6, v7}, Lcom/googlecode/javacv/cpp/opencv_core;->cvReadRealByName(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;Ljava/lang/String;D)D

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/googlecode/javacv/ProjectiveDevice$Settings;->setResponseGamma(D)V

    .line 881
    const-string v3, "cameraMatrix"

    invoke-static {p1, v1, v3, v0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvReadByName(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;Ljava/lang/String;Lcom/googlecode/javacv/cpp/opencv_core$CvAttrList;)Lcom/googlecode/javacpp/Pointer;

    move-result-object v2

    .line 882
    .local v2, p:Lcom/googlecode/javacpp/Pointer;
    if-nez v2, :cond_2

    move-object v3, v4

    :goto_0
    iput-object v3, p0, Lcom/googlecode/javacv/ProjectiveDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 883
    const-string v3, "distortionCoeffs"

    invoke-static {p1, v1, v3, v0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvReadByName(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;Ljava/lang/String;Lcom/googlecode/javacv/cpp/opencv_core$CvAttrList;)Lcom/googlecode/javacpp/Pointer;

    move-result-object v2

    .line 884
    if-nez v2, :cond_3

    move-object v3, v4

    :goto_1
    iput-object v3, p0, Lcom/googlecode/javacv/ProjectiveDevice;->distortionCoeffs:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 885
    const-string v3, "extrParams"

    invoke-static {p1, v1, v3, v0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvReadByName(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;Ljava/lang/String;Lcom/googlecode/javacv/cpp/opencv_core$CvAttrList;)Lcom/googlecode/javacpp/Pointer;

    move-result-object v2

    .line 886
    if-nez v2, :cond_4

    move-object v3, v4

    :goto_2
    iput-object v3, p0, Lcom/googlecode/javacv/ProjectiveDevice;->extrParams:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 887
    const-string v3, "reprojErrs"

    invoke-static {p1, v1, v3, v0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvReadByName(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;Ljava/lang/String;Lcom/googlecode/javacv/cpp/opencv_core$CvAttrList;)Lcom/googlecode/javacpp/Pointer;

    move-result-object v2

    .line 888
    if-nez v2, :cond_5

    move-object v3, v4

    :goto_3
    iput-object v3, p0, Lcom/googlecode/javacv/ProjectiveDevice;->reprojErrs:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 889
    const-string v3, "avgReprojErr"

    iget-wide v5, p0, Lcom/googlecode/javacv/ProjectiveDevice;->avgReprojErr:D

    invoke-static {p1, v1, v3, v5, v6}, Lcom/googlecode/javacv/cpp/opencv_core;->cvReadRealByName(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;Ljava/lang/String;D)D

    move-result-wide v5

    iput-wide v5, p0, Lcom/googlecode/javacv/ProjectiveDevice;->avgReprojErr:D

    .line 890
    const-string v3, "maxReprojErr"

    iget-wide v5, p0, Lcom/googlecode/javacv/ProjectiveDevice;->maxReprojErr:D

    invoke-static {p1, v1, v3, v5, v6}, Lcom/googlecode/javacv/cpp/opencv_core;->cvReadRealByName(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;Ljava/lang/String;D)D

    move-result-wide v5

    iput-wide v5, p0, Lcom/googlecode/javacv/ProjectiveDevice;->maxReprojErr:D

    .line 892
    const-string v3, "R"

    invoke-static {p1, v1, v3, v0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvReadByName(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;Ljava/lang/String;Lcom/googlecode/javacv/cpp/opencv_core$CvAttrList;)Lcom/googlecode/javacpp/Pointer;

    move-result-object v2

    .line 893
    if-nez v2, :cond_6

    move-object v3, v4

    :goto_4
    iput-object v3, p0, Lcom/googlecode/javacv/ProjectiveDevice;->R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 894
    const-string v3, "T"

    invoke-static {p1, v1, v3, v0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvReadByName(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;Ljava/lang/String;Lcom/googlecode/javacv/cpp/opencv_core$CvAttrList;)Lcom/googlecode/javacpp/Pointer;

    move-result-object v2

    .line 895
    if-nez v2, :cond_7

    move-object v3, v4

    :goto_5
    iput-object v3, p0, Lcom/googlecode/javacv/ProjectiveDevice;->T:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 896
    const-string v3, "E"

    invoke-static {p1, v1, v3, v0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvReadByName(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;Ljava/lang/String;Lcom/googlecode/javacv/cpp/opencv_core$CvAttrList;)Lcom/googlecode/javacpp/Pointer;

    move-result-object v2

    .line 897
    if-nez v2, :cond_8

    move-object v3, v4

    :goto_6
    iput-object v3, p0, Lcom/googlecode/javacv/ProjectiveDevice;->E:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 898
    const-string v3, "F"

    invoke-static {p1, v1, v3, v0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvReadByName(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;Ljava/lang/String;Lcom/googlecode/javacv/cpp/opencv_core$CvAttrList;)Lcom/googlecode/javacpp/Pointer;

    move-result-object v2

    .line 899
    if-nez v2, :cond_9

    move-object v3, v4

    :goto_7
    iput-object v3, p0, Lcom/googlecode/javacv/ProjectiveDevice;->F:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 900
    const-string v3, "avgEpipolarErr"

    iget-wide v5, p0, Lcom/googlecode/javacv/ProjectiveDevice;->avgEpipolarErr:D

    invoke-static {p1, v1, v3, v5, v6}, Lcom/googlecode/javacv/cpp/opencv_core;->cvReadRealByName(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;Ljava/lang/String;D)D

    move-result-wide v5

    iput-wide v5, p0, Lcom/googlecode/javacv/ProjectiveDevice;->avgEpipolarErr:D

    .line 901
    const-string v3, "maxEpipolarErr"

    iget-wide v5, p0, Lcom/googlecode/javacv/ProjectiveDevice;->maxEpipolarErr:D

    invoke-static {p1, v1, v3, v5, v6}, Lcom/googlecode/javacv/cpp/opencv_core;->cvReadRealByName(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;Ljava/lang/String;D)D

    move-result-wide v5

    iput-wide v5, p0, Lcom/googlecode/javacv/ProjectiveDevice;->maxEpipolarErr:D

    .line 903
    const-string v3, "colorOrder"

    iget-object v5, p0, Lcom/googlecode/javacv/ProjectiveDevice;->colorOrder:Ljava/lang/String;

    invoke-static {p1, v1, v3, v5}, Lcom/googlecode/javacv/cpp/opencv_core;->cvReadStringByName(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/googlecode/javacv/ProjectiveDevice;->colorOrder:Ljava/lang/String;

    .line 904
    const-string v3, "colorMixingMatrix"

    invoke-static {p1, v1, v3, v0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvReadByName(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;Ljava/lang/String;Lcom/googlecode/javacv/cpp/opencv_core$CvAttrList;)Lcom/googlecode/javacpp/Pointer;

    move-result-object v2

    .line 905
    if-nez v2, :cond_a

    move-object v3, v4

    :goto_8
    iput-object v3, p0, Lcom/googlecode/javacv/ProjectiveDevice;->colorMixingMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 906
    const-string v3, "additiveLight"

    invoke-static {p1, v1, v3, v0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvReadByName(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;Ljava/lang/String;Lcom/googlecode/javacv/cpp/opencv_core$CvAttrList;)Lcom/googlecode/javacpp/Pointer;

    move-result-object v2

    .line 907
    if-nez v2, :cond_b

    :goto_9
    iput-object v4, p0, Lcom/googlecode/javacv/ProjectiveDevice;->additiveLight:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 908
    const-string v3, "avgColorErr"

    iget-wide v4, p0, Lcom/googlecode/javacv/ProjectiveDevice;->avgColorErr:D

    invoke-static {p1, v1, v3, v4, v5}, Lcom/googlecode/javacv/cpp/opencv_core;->cvReadRealByName(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;Ljava/lang/String;D)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/googlecode/javacv/ProjectiveDevice;->avgColorErr:D

    .line 909
    const-string v3, "colorR2"

    iget-wide v4, p0, Lcom/googlecode/javacv/ProjectiveDevice;->colorR2:D

    invoke-static {p1, v1, v3, v4, v5}, Lcom/googlecode/javacv/cpp/opencv_core;->cvReadRealByName(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;Ljava/lang/String;D)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/googlecode/javacv/ProjectiveDevice;->colorR2:D

    .line 910
    return-void

    .line 882
    :cond_2
    new-instance v3, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-direct {v3, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    goto/16 :goto_0

    .line 884
    :cond_3
    new-instance v3, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-direct {v3, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    goto/16 :goto_1

    .line 886
    :cond_4
    new-instance v3, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-direct {v3, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    goto/16 :goto_2

    .line 888
    :cond_5
    new-instance v3, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-direct {v3, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    goto/16 :goto_3

    .line 893
    :cond_6
    new-instance v3, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-direct {v3, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    goto/16 :goto_4

    .line 895
    :cond_7
    new-instance v3, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-direct {v3, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    goto/16 :goto_5

    .line 897
    :cond_8
    new-instance v3, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-direct {v3, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    goto/16 :goto_6

    .line 899
    :cond_9
    new-instance v3, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-direct {v3, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    goto :goto_7

    .line 905
    :cond_a
    new-instance v3, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-direct {v3, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    goto :goto_8

    .line 907
    :cond_b
    new-instance v4, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-direct {v4, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    goto :goto_9
.end method

.method public readParameters(Ljava/io/File;)V
    .locals 1
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/ProjectiveDevice$Exception;
        }
    .end annotation

    .prologue
    .line 856
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/ProjectiveDevice;->readParameters(Ljava/lang/String;)V

    .line 857
    return-void
.end method

.method public readParameters(Ljava/lang/String;)V
    .locals 3
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/ProjectiveDevice$Exception;
        }
    .end annotation

    .prologue
    .line 859
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;->open(Ljava/lang/String;Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;I)Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;

    move-result-object v0

    .line 860
    .local v0, fs:Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;
    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/ProjectiveDevice;->readParameters(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;)V

    .line 861
    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;->release()V

    .line 862
    return-void
.end method

.method public rescale(II)V
    .locals 10
    .parameter "imageWidth"
    .parameter "imageHeight"

    .prologue
    .line 314
    iget v5, p0, Lcom/googlecode/javacv/ProjectiveDevice;->imageWidth:I

    if-ne p1, v5, :cond_0

    iget v5, p0, Lcom/googlecode/javacv/ProjectiveDevice;->imageHeight:I

    if-eq p2, v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/googlecode/javacv/ProjectiveDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v5, :cond_1

    .line 316
    int-to-double v5, p1

    iget v7, p0, Lcom/googlecode/javacv/ProjectiveDevice;->imageWidth:I

    int-to-double v7, v7

    div-double v1, v5, v7

    .line 317
    .local v1, sx:D
    int-to-double v5, p2

    iget v7, p0, Lcom/googlecode/javacv/ProjectiveDevice;->imageHeight:I

    int-to-double v7, v7

    div-double v3, v5, v7

    .line 318
    .local v3, sy:D
    iget-object v5, p0, Lcom/googlecode/javacv/ProjectiveDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/googlecode/javacv/ProjectiveDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v7

    mul-double/2addr v7, v1

    invoke-virtual {v5, v6, v7, v8}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 319
    iget-object v5, p0, Lcom/googlecode/javacv/ProjectiveDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/googlecode/javacv/ProjectiveDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v7

    mul-double/2addr v7, v1

    invoke-virtual {v5, v6, v7, v8}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 320
    iget-object v5, p0, Lcom/googlecode/javacv/ProjectiveDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/googlecode/javacv/ProjectiveDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v7

    mul-double/2addr v7, v1

    invoke-virtual {v5, v6, v7, v8}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 321
    iget-object v5, p0, Lcom/googlecode/javacv/ProjectiveDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/googlecode/javacv/ProjectiveDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v7

    mul-double/2addr v7, v3

    invoke-virtual {v5, v6, v7, v8}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 322
    iget-object v5, p0, Lcom/googlecode/javacv/ProjectiveDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v6, 0x4

    iget-object v7, p0, Lcom/googlecode/javacv/ProjectiveDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v7

    mul-double/2addr v7, v3

    invoke-virtual {v5, v6, v7, v8}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 323
    iget-object v5, p0, Lcom/googlecode/javacv/ProjectiveDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v6, 0x5

    iget-object v7, p0, Lcom/googlecode/javacv/ProjectiveDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v7

    mul-double/2addr v7, v3

    invoke-virtual {v5, v6, v7, v8}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 324
    iput p1, p0, Lcom/googlecode/javacv/ProjectiveDevice;->imageWidth:I

    .line 325
    iput p2, p0, Lcom/googlecode/javacv/ProjectiveDevice;->imageHeight:I

    .line 326
    iget v0, p0, Lcom/googlecode/javacv/ProjectiveDevice;->mapsPyramidLevel:I

    .line 327
    .local v0, p:I
    iget-object v5, p0, Lcom/googlecode/javacv/ProjectiveDevice;->undistortMaps1:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget-object v6, p0, Lcom/googlecode/javacv/ProjectiveDevice;->undistortMaps2:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget-object v7, p0, Lcom/googlecode/javacv/ProjectiveDevice;->distortMaps1:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget-object v8, p0, Lcom/googlecode/javacv/ProjectiveDevice;->distortMaps2:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    const/4 v9, 0x0

    aput-object v9, v8, v0

    aput-object v9, v7, v0

    aput-object v9, v6, v0

    aput-object v9, v5, v0

    .line 329
    .end local v0           #p:I
    .end local v1           #sx:D
    .end local v3           #sy:D
    :cond_1
    return-void
.end method

.method public setFixedPointMaps(Z)V
    .locals 6
    .parameter "fixedPointMaps"

    .prologue
    .line 475
    iget-boolean v1, p0, Lcom/googlecode/javacv/ProjectiveDevice;->fixedPointMaps:Z

    if-eq v1, p1, :cond_0

    .line 476
    iput-boolean p1, p0, Lcom/googlecode/javacv/ProjectiveDevice;->fixedPointMaps:Z

    .line 477
    iget v0, p0, Lcom/googlecode/javacv/ProjectiveDevice;->mapsPyramidLevel:I

    .line 478
    .local v0, p:I
    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveDevice;->undistortMaps1:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveDevice;->undistortMaps2:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget-object v3, p0, Lcom/googlecode/javacv/ProjectiveDevice;->distortMaps1:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget-object v4, p0, Lcom/googlecode/javacv/ProjectiveDevice;->distortMaps2:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    const/4 v5, 0x0

    aput-object v5, v4, v0

    aput-object v5, v3, v0

    aput-object v5, v2, v0

    aput-object v5, v1, v0

    .line 480
    .end local v0           #p:I
    :cond_0
    return-void
.end method

.method public setMapsPyramidLevel(I)V
    .locals 3
    .parameter "mapsPyramidLevel"

    .prologue
    .line 486
    iget v1, p0, Lcom/googlecode/javacv/ProjectiveDevice;->mapsPyramidLevel:I

    if-eq v1, p1, :cond_1

    .line 487
    iput p1, p0, Lcom/googlecode/javacv/ProjectiveDevice;->mapsPyramidLevel:I

    .line 488
    move v0, p1

    .line 489
    .local v0, p:I
    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveDevice;->undistortMaps1:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveDevice;->undistortMaps2:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveDevice;->distortMaps1:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveDevice;->distortMaps2:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 491
    :cond_0
    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveDevice;->undistortMaps1:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iput-object v1, p0, Lcom/googlecode/javacv/ProjectiveDevice;->undistortMaps1:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 492
    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveDevice;->undistortMaps2:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iput-object v1, p0, Lcom/googlecode/javacv/ProjectiveDevice;->undistortMaps2:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 493
    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveDevice;->distortMaps1:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iput-object v1, p0, Lcom/googlecode/javacv/ProjectiveDevice;->distortMaps1:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 494
    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveDevice;->distortMaps2:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iput-object v1, p0, Lcom/googlecode/javacv/ProjectiveDevice;->distortMaps2:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 497
    .end local v0           #p:I
    :cond_1
    return-void
.end method

.method public setSettings(Lcom/googlecode/javacv/ProjectiveDevice$Settings;)V
    .locals 0
    .parameter "settings"

    .prologue
    .line 296
    iput-object p1, p0, Lcom/googlecode/javacv/ProjectiveDevice;->settings:Lcom/googlecode/javacv/ProjectiveDevice$Settings;

    .line 297
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x10

    .line 913
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/googlecode/javacv/ProjectiveDevice;->getSettings()Lcom/googlecode/javacv/ProjectiveDevice$Settings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/googlecode/javacv/ProjectiveDevice$Settings;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/googlecode/javacv/ProjectiveDevice;->imageWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/googlecode/javacv/ProjectiveDevice;->imageHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 915
    .local v1, s:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/googlecode/javacv/ProjectiveDevice;->getSettings()Lcom/googlecode/javacv/ProjectiveDevice$Settings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/googlecode/javacv/ProjectiveDevice$Settings;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 916
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 915
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 918
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nIntrinsics\n----------\ncamera matrix = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-nez v2, :cond_1

    const-string v2, "null"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "distortion coefficients = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveDevice;->distortionCoeffs:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-nez v2, :cond_2

    const-string v2, "null"

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "reprojection RMS/max error (pixels) = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/googlecode/javacv/ProjectiveDevice;->avgReprojErr:D

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/googlecode/javacv/ProjectiveDevice;->maxReprojErr:D

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Extrinsics\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "----------\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "rotation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveDevice;->R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-nez v2, :cond_3

    const-string v2, "null"

    :goto_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "translation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveDevice;->T:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-nez v2, :cond_4

    const-string v2, "null"

    :goto_4
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "epipolar RMS/max error (pixels) = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/googlecode/javacv/ProjectiveDevice;->avgEpipolarErr:D

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/googlecode/javacv/ProjectiveDevice;->maxEpipolarErr:D

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Color\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-----\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "order = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/googlecode/javacv/ProjectiveDevice;->colorOrder:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mixing matrix = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveDevice;->colorMixingMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-nez v2, :cond_5

    const-string v2, "null"

    :goto_5
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "additive light = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveDevice;->additiveLight:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-nez v2, :cond_6

    const-string v2, "null"

    :goto_6
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "normalized RMSE (intensity) = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/googlecode/javacv/ProjectiveDevice;->avgColorErr:D

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "R^2 (intensity) = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/googlecode/javacv/ProjectiveDevice;->colorR2:D

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 939
    return-object v1

    .line 918
    :cond_1
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {v2, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_2
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveDevice;->distortionCoeffs:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    goto/16 :goto_2

    :cond_3
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveDevice;->R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :cond_4
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveDevice;->T:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/16 v4, 0xe

    invoke-virtual {v2, v4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4

    :cond_5
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveDevice;->colorMixingMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {v2, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_6
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveDevice;->additiveLight:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_6
.end method

.method public undistort(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 6
    .parameter "image"

    .prologue
    .line 569
    if-eqz p1, :cond_0

    .line 570
    invoke-direct {p0}, Lcom/googlecode/javacv/ProjectiveDevice;->initUndistortMaps()V

    .line 571
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveDevice;->tempImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-static {v0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->createIfNotCompatible(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveDevice;->tempImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 572
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveDevice;->tempImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-static {v0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvResetImageROI(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    .line 573
    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveDevice;->tempImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveDevice;->undistortMaps1:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget v2, p0, Lcom/googlecode/javacv/ProjectiveDevice;->mapsPyramidLevel:I

    aget-object v2, v0, v2

    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveDevice;->undistortMaps2:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget v3, p0, Lcom/googlecode/javacv/ProjectiveDevice;->mapsPyramidLevel:I

    aget-object v3, v0, v3

    const/16 v4, 0x9

    sget-object v5, Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;->ZERO:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvRemap(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;ILcom/googlecode/javacv/cpp/opencv_core$CvScalar;)V

    .line 575
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveDevice;->tempImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 577
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public undistort(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V
    .locals 6
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 562
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 563
    invoke-direct {p0}, Lcom/googlecode/javacv/ProjectiveDevice;->initUndistortMaps()V

    .line 564
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveDevice;->undistortMaps1:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget v1, p0, Lcom/googlecode/javacv/ProjectiveDevice;->mapsPyramidLevel:I

    aget-object v2, v0, v1

    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveDevice;->undistortMaps2:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget v1, p0, Lcom/googlecode/javacv/ProjectiveDevice;->mapsPyramidLevel:I

    aget-object v3, v0, v1

    const/16 v4, 0x9

    sget-object v5, Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;->ZERO:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvRemap(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;ILcom/googlecode/javacv/cpp/opencv_core$CvScalar;)V

    .line 567
    :cond_0
    return-void
.end method

.method public varargs undistort([D)[D
    .locals 3
    .parameter "x"

    .prologue
    .line 399
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {p1, v2}, Lcom/googlecode/javacv/ProjectiveDevice;->normalize([DLcom/googlecode/javacv/cpp/opencv_core$CvMat;)[D

    move-result-object v0

    .line 400
    .local v0, xn:[D
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveDevice;->distortionCoeffs:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get()[D

    move-result-object v2

    invoke-static {v0, v2}, Lcom/googlecode/javacv/ProjectiveDevice;->undistort([D[D)[D

    move-result-object v1

    .line 401
    .local v1, xu:[D
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v1, v2}, Lcom/googlecode/javacv/ProjectiveDevice;->unnormalize([DLcom/googlecode/javacv/cpp/opencv_core$CvMat;)[D

    move-result-object v2

    return-object v2
.end method

.method public writeParameters(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;)V
    .locals 4
    .parameter "fs"

    .prologue
    .line 813
    invoke-static {}, Lcom/googlecode/javacv/cpp/opencv_core;->cvAttrList()Lcom/googlecode/javacv/cpp/opencv_core$CvAttrList;

    move-result-object v0

    .line 815
    .local v0, a:Lcom/googlecode/javacv/cpp/opencv_core$CvAttrList;
    invoke-virtual {p0}, Lcom/googlecode/javacv/ProjectiveDevice;->getSettings()Lcom/googlecode/javacv/ProjectiveDevice$Settings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/googlecode/javacv/ProjectiveDevice$Settings;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3, v0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvStartWriteStruct(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Ljava/lang/String;ILjava/lang/String;Lcom/googlecode/javacv/cpp/opencv_core$CvAttrList;)V

    .line 817
    const-string v1, "imageWidth"

    iget v2, p0, Lcom/googlecode/javacv/ProjectiveDevice;->imageWidth:I

    invoke-static {p1, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvWriteInt(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Ljava/lang/String;I)V

    .line 818
    const-string v1, "imageHeight"

    iget v2, p0, Lcom/googlecode/javacv/ProjectiveDevice;->imageHeight:I

    invoke-static {p1, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvWriteInt(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Ljava/lang/String;I)V

    .line 819
    const-string v1, "responseGamma"

    invoke-virtual {p0}, Lcom/googlecode/javacv/ProjectiveDevice;->getSettings()Lcom/googlecode/javacv/ProjectiveDevice$Settings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/googlecode/javacv/ProjectiveDevice$Settings;->getResponseGamma()D

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core;->cvWriteReal(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Ljava/lang/String;D)V

    .line 822
    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v1, :cond_0

    .line 823
    const-string v1, "cameraMatrix"

    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {p1, v1, v2, v0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvWrite(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Ljava/lang/String;Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/opencv_core$CvAttrList;)V

    .line 824
    :cond_0
    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveDevice;->distortionCoeffs:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v1, :cond_1

    .line 825
    const-string v1, "distortionCoeffs"

    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveDevice;->distortionCoeffs:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {p1, v1, v2, v0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvWrite(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Ljava/lang/String;Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/opencv_core$CvAttrList;)V

    .line 826
    :cond_1
    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveDevice;->extrParams:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v1, :cond_2

    .line 827
    const-string v1, "extrParams"

    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveDevice;->extrParams:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {p1, v1, v2, v0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvWrite(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Ljava/lang/String;Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/opencv_core$CvAttrList;)V

    .line 828
    :cond_2
    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveDevice;->reprojErrs:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v1, :cond_3

    .line 829
    const-string v1, "reprojErrs"

    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveDevice;->reprojErrs:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {p1, v1, v2, v0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvWrite(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Ljava/lang/String;Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/opencv_core$CvAttrList;)V

    .line 830
    :cond_3
    const-string v1, "avgReprojErr"

    iget-wide v2, p0, Lcom/googlecode/javacv/ProjectiveDevice;->avgReprojErr:D

    invoke-static {p1, v1, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core;->cvWriteReal(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Ljava/lang/String;D)V

    .line 831
    const-string v1, "maxReprojErr"

    iget-wide v2, p0, Lcom/googlecode/javacv/ProjectiveDevice;->maxReprojErr:D

    invoke-static {p1, v1, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core;->cvWriteReal(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Ljava/lang/String;D)V

    .line 833
    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveDevice;->R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v1, :cond_4

    .line 834
    const-string v1, "R"

    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveDevice;->R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {p1, v1, v2, v0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvWrite(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Ljava/lang/String;Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/opencv_core$CvAttrList;)V

    .line 835
    :cond_4
    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveDevice;->T:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v1, :cond_5

    .line 836
    const-string v1, "T"

    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveDevice;->T:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {p1, v1, v2, v0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvWrite(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Ljava/lang/String;Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/opencv_core$CvAttrList;)V

    .line 837
    :cond_5
    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveDevice;->E:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v1, :cond_6

    .line 838
    const-string v1, "E"

    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveDevice;->E:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {p1, v1, v2, v0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvWrite(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Ljava/lang/String;Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/opencv_core$CvAttrList;)V

    .line 839
    :cond_6
    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveDevice;->F:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v1, :cond_7

    .line 840
    const-string v1, "F"

    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveDevice;->F:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {p1, v1, v2, v0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvWrite(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Ljava/lang/String;Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/opencv_core$CvAttrList;)V

    .line 841
    :cond_7
    const-string v1, "avgEpipolarErr"

    iget-wide v2, p0, Lcom/googlecode/javacv/ProjectiveDevice;->avgEpipolarErr:D

    invoke-static {p1, v1, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core;->cvWriteReal(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Ljava/lang/String;D)V

    .line 842
    const-string v1, "maxEpipolarErr"

    iget-wide v2, p0, Lcom/googlecode/javacv/ProjectiveDevice;->maxEpipolarErr:D

    invoke-static {p1, v1, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core;->cvWriteReal(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Ljava/lang/String;D)V

    .line 844
    const-string v1, "colorOrder"

    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveDevice;->colorOrder:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core;->cvWriteString(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Ljava/lang/String;Ljava/lang/String;I)V

    .line 845
    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveDevice;->colorMixingMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v1, :cond_8

    .line 846
    const-string v1, "colorMixingMatrix"

    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveDevice;->colorMixingMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {p1, v1, v2, v0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvWrite(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Ljava/lang/String;Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/opencv_core$CvAttrList;)V

    .line 847
    :cond_8
    iget-object v1, p0, Lcom/googlecode/javacv/ProjectiveDevice;->additiveLight:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v1, :cond_9

    .line 848
    const-string v1, "additiveLight"

    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveDevice;->additiveLight:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {p1, v1, v2, v0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvWrite(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Ljava/lang/String;Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/opencv_core$CvAttrList;)V

    .line 849
    :cond_9
    const-string v1, "avgColorErr"

    iget-wide v2, p0, Lcom/googlecode/javacv/ProjectiveDevice;->avgColorErr:D

    invoke-static {p1, v1, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core;->cvWriteReal(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Ljava/lang/String;D)V

    .line 850
    const-string v1, "colorR2"

    iget-wide v2, p0, Lcom/googlecode/javacv/ProjectiveDevice;->colorR2:D

    invoke-static {p1, v1, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core;->cvWriteReal(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Ljava/lang/String;D)V

    .line 852
    invoke-static {p1}, Lcom/googlecode/javacv/cpp/opencv_core;->cvEndWriteStruct(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;)V

    .line 853
    return-void
.end method

.method public writeParameters(Ljava/io/File;)V
    .locals 1
    .parameter "file"

    .prologue
    .line 805
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/ProjectiveDevice;->writeParameters(Ljava/lang/String;)V

    .line 806
    return-void
.end method

.method public writeParameters(Ljava/lang/String;)V
    .locals 3
    .parameter "filename"

    .prologue
    .line 808
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;->open(Ljava/lang/String;Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;I)Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;

    move-result-object v0

    .line 809
    .local v0, fs:Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;
    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/ProjectiveDevice;->writeParameters(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;)V

    .line 810
    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;->release()V

    .line 811
    return-void
.end method
