.class public Lcom/googlecode/javacv/ProCamTransformer;
.super Ljava/lang/Object;
.source "ProCamTransformer.java"

# interfaces
.implements Lcom/googlecode/javacv/ImageTransformer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/ProCamTransformer$Parameters;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected H1:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field protected H2:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field protected X:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field protected camera:Lcom/googlecode/javacv/CameraDevice;

.field protected fillColor:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

.field protected frontoParallelH:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field protected invCameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field protected invFrontoParallelH:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field protected kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

.field protected projector:Lcom/googlecode/javacv/ProjectorDevice;

.field protected projectorImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

.field protected projectorTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

.field protected roi:Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

.field protected surfaceImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

.field protected surfaceTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/googlecode/javacv/ProCamTransformer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/googlecode/javacv/ProCamTransformer;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>([DLcom/googlecode/javacv/CameraDevice;Lcom/googlecode/javacv/ProjectorDevice;)V
    .locals 1
    .parameter "referencePoints"
    .parameter "camera"
    .parameter "projector"

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/googlecode/javacv/ProCamTransformer;-><init>([DLcom/googlecode/javacv/CameraDevice;Lcom/googlecode/javacv/ProjectorDevice;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V

    .line 36
    return-void
.end method

.method public constructor <init>([DLcom/googlecode/javacv/CameraDevice;Lcom/googlecode/javacv/ProjectorDevice;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V
    .locals 16
    .parameter "referencePoints"
    .parameter "camera"
    .parameter "projector"
    .parameter "n"

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/googlecode/javacv/ProCamTransformer;->camera:Lcom/googlecode/javacv/CameraDevice;

    .line 69
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/googlecode/javacv/ProCamTransformer;->projector:Lcom/googlecode/javacv/ProjectorDevice;

    .line 70
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/googlecode/javacv/ProCamTransformer;->surfaceTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    .line 71
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/googlecode/javacv/ProCamTransformer;->projectorTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    .line 72
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/googlecode/javacv/ProCamTransformer;->projectorImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/googlecode/javacv/ProCamTransformer;->surfaceImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 73
    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/high16 v9, 0x3ff0

    invoke-static/range {v3 .. v10}, Lcom/googlecode/javacv/cpp/opencv_core;->cvScalar(DDDD)Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/googlecode/javacv/ProCamTransformer;->fillColor:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    .line 74
    new-instance v5, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    invoke-direct {v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/googlecode/javacv/ProCamTransformer;->roi:Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    .line 75
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/googlecode/javacv/ProCamTransformer;->frontoParallelH:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/googlecode/javacv/ProCamTransformer;->invFrontoParallelH:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 76
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/googlecode/javacv/ProCamTransformer;->invCameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 78
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/googlecode/javacv/ProCamTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 79
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/googlecode/javacv/ProCamTransformer;->H1:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 80
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/googlecode/javacv/ProCamTransformer;->H2:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 81
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/googlecode/javacv/ProCamTransformer;->X:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 39
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/ProCamTransformer;->camera:Lcom/googlecode/javacv/CameraDevice;

    .line 40
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/ProCamTransformer;->projector:Lcom/googlecode/javacv/ProjectorDevice;

    .line 42
    if-eqz p1, :cond_0

    .line 43
    new-instance v3, Lcom/googlecode/javacv/ProjectiveColorTransformer;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/googlecode/javacv/CameraDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/googlecode/javacv/CameraDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x3

    const/4 v13, 0x0

    move-object/from16 v8, p4

    move-object/from16 v9, p1

    invoke-direct/range {v3 .. v13}, Lcom/googlecode/javacv/ProjectiveColorTransformer;-><init>(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;[D[DLcom/googlecode/javacv/cpp/opencv_core$CvMat;II)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/javacv/ProCamTransformer;->surfaceTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    .line 47
    :cond_0
    const/4 v5, 0x6

    new-array v4, v5, [D

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    const/4 v5, 0x2

    move-object/from16 v0, p2

    iget v6, v0, Lcom/googlecode/javacv/CameraDevice;->imageWidth:I

    div-int/lit8 v6, v6, 0x2

    int-to-double v6, v6

    aput-wide v6, v4, v5

    const/4 v5, 0x3

    move-object/from16 v0, p2

    iget v6, v0, Lcom/googlecode/javacv/CameraDevice;->imageHeight:I

    int-to-double v6, v6

    aput-wide v6, v4, v5

    const/4 v5, 0x4

    move-object/from16 v0, p2

    iget v6, v0, Lcom/googlecode/javacv/CameraDevice;->imageWidth:I

    int-to-double v6, v6

    aput-wide v6, v4, v5

    const/4 v5, 0x5

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    .line 48
    .local v4, referencePoints1:[D
    const/4 v5, 0x6

    new-array v3, v5, [D

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    aput-wide v6, v3, v5

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    aput-wide v6, v3, v5

    const/4 v5, 0x2

    move-object/from16 v0, p3

    iget v6, v0, Lcom/googlecode/javacv/ProjectorDevice;->imageWidth:I

    div-int/lit8 v6, v6, 0x2

    int-to-double v6, v6

    aput-wide v6, v3, v5

    const/4 v5, 0x3

    move-object/from16 v0, p3

    iget v6, v0, Lcom/googlecode/javacv/ProjectorDevice;->imageHeight:I

    int-to-double v6, v6

    aput-wide v6, v3, v5

    const/4 v5, 0x4

    move-object/from16 v0, p3

    iget v6, v0, Lcom/googlecode/javacv/ProjectorDevice;->imageWidth:I

    int-to-double v6, v6

    aput-wide v6, v3, v5

    const/4 v5, 0x5

    const-wide/16 v6, 0x0

    aput-wide v6, v3, v5

    .line 49
    .local v3, referencePoints2:[D
    if-eqz p4, :cond_1

    .line 50
    const/4 v5, 0x3

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/googlecode/javacv/ProCamTransformer;->invCameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 51
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/googlecode/javacv/CameraDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/googlecode/javacv/ProCamTransformer;->invCameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v5, v6}, Lcom/googlecode/javacv/cpp/opencv_core;->cvInvert(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)D

    .line 52
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/ProCamTransformer;->invCameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/googlecode/javacv/ProjectorDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/googlecode/javacv/ProjectorDevice;->R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/googlecode/javacv/ProjectorDevice;->T:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v10, 0x1

    move-object/from16 v9, p4

    invoke-static/range {v3 .. v10}, Lcom/googlecode/javacv/JavaCV;->perspectiveTransform([D[DLcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Z)V

    .line 55
    :cond_1
    new-instance v5, Lcom/googlecode/javacv/ProjectiveColorTransformer;

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/googlecode/javacv/CameraDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/googlecode/javacv/ProjectorDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/googlecode/javacv/ProjectorDevice;->R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, p3

    iget-object v9, v0, Lcom/googlecode/javacv/ProjectorDevice;->T:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v10, 0x0

    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/googlecode/javacv/ProjectorDevice;->colorMixingMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v14, 0x1

    const/4 v15, 0x3

    move-object v11, v4

    move-object v12, v3

    invoke-direct/range {v5 .. v15}, Lcom/googlecode/javacv/ProjectiveColorTransformer;-><init>(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;[D[DLcom/googlecode/javacv/cpp/opencv_core$CvMat;II)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/googlecode/javacv/ProCamTransformer;->projectorTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    .line 61
    if-eqz p1, :cond_2

    if-eqz p4, :cond_2

    .line 62
    const/4 v5, 0x3

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v5

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2, v5}, Lcom/googlecode/javacv/CameraDevice;->getFrontoParallelH([DLcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/googlecode/javacv/ProCamTransformer;->frontoParallelH:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 63
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/ProCamTransformer;->frontoParallelH:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->clone()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/googlecode/javacv/ProCamTransformer;->invFrontoParallelH:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 64
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/ProCamTransformer;->frontoParallelH:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/googlecode/javacv/ProCamTransformer;->invFrontoParallelH:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v5, v6}, Lcom/googlecode/javacv/cpp/opencv_core;->cvInvert(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)D

    .line 66
    :cond_2
    return-void
.end method


# virtual methods
.method public bridge synthetic createParameters()Lcom/googlecode/javacv/ImageTransformer$Parameters;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/googlecode/javacv/ProCamTransformer;->createParameters()Lcom/googlecode/javacv/ProCamTransformer$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public createParameters()Lcom/googlecode/javacv/ProCamTransformer$Parameters;
    .locals 1

    .prologue
    .line 336
    new-instance v0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;

    invoke-direct {v0, p0}, Lcom/googlecode/javacv/ProCamTransformer$Parameters;-><init>(Lcom/googlecode/javacv/ProCamTransformer;)V

    return-object v0
.end method

.method public getFillColor()Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer;->fillColor:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    return-object v0
.end method

.method public getNumBiases()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer;->projectorTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    invoke-virtual {v0}, Lcom/googlecode/javacv/ProjectiveColorTransformer;->getNumBiases()I

    move-result v0

    return v0
.end method

.method public getNumGains()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer;->projectorTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    invoke-virtual {v0}, Lcom/googlecode/javacv/ProjectiveColorTransformer;->getNumGains()I

    move-result v0

    return v0
.end method

.method public getProjectorImage(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 1
    .parameter "pyramidLevel"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer;->projectorImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getProjectorTransformer()Lcom/googlecode/javacv/ProjectiveColorTransformer;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer;->projectorTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    return-object v0
.end method

.method public getSurfaceImage(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 1
    .parameter "pyramidLevel"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer;->surfaceImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getSurfaceTransformer()Lcom/googlecode/javacv/ProjectiveColorTransformer;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer;->surfaceTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    return-object v0
.end method

.method protected prepareTransforms(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;ILcom/googlecode/javacv/ProCamTransformer$Parameters;)V
    .locals 12
    .parameter "H1"
    .parameter "H2"
    .parameter "X"
    .parameter "pyramidLevel"
    .parameter "p"

    .prologue
    .line 188
    invoke-virtual/range {p5 .. p5}, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->getSurfaceParameters()Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    move-result-object v3

    .line 189
    .local v3, cameraParameters:Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;
    invoke-virtual/range {p5 .. p5}, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->getProjectorParameters()Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    move-result-object v4

    .line 191
    .local v4, projectorParameters:Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;
    iget-object v7, p0, Lcom/googlecode/javacv/ProCamTransformer;->surfaceTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    if-eqz v7, :cond_0

    .line 192
    invoke-virtual {v3}, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->getH()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v7

    invoke-static {v7, p1}, Lcom/googlecode/javacv/cpp/opencv_core;->cvInvert(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)D

    .line 194
    :cond_0
    invoke-virtual {v4}, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->getH()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v7

    invoke-static {v7, p2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvInvert(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)D

    .line 197
    if-lez p4, :cond_2

    .line 198
    const/4 v7, 0x1

    shl-int v5, v7, p4

    .line 199
    .local v5, scale:I
    iget-object v7, p0, Lcom/googlecode/javacv/ProCamTransformer;->surfaceTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    if-eqz v7, :cond_1

    .line 200
    const/4 v7, 0x2

    const/4 v8, 0x2

    invoke-virtual {p1, v8}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v8

    int-to-double v10, v5

    div-double/2addr v8, v10

    invoke-virtual {p1, v7, v8, v9}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 201
    const/4 v7, 0x5

    const/4 v8, 0x5

    invoke-virtual {p1, v8}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v8

    int-to-double v10, v5

    div-double/2addr v8, v10

    invoke-virtual {p1, v7, v8, v9}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 202
    const/4 v7, 0x6

    const/4 v8, 0x6

    invoke-virtual {p1, v8}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v8

    int-to-double v10, v5

    mul-double/2addr v8, v10

    invoke-virtual {p1, v7, v8, v9}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 203
    const/4 v7, 0x7

    const/4 v8, 0x7

    invoke-virtual {p1, v8}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v8

    int-to-double v10, v5

    mul-double/2addr v8, v10

    invoke-virtual {p1, v7, v8, v9}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 206
    :cond_1
    const/4 v7, 0x2

    const/4 v8, 0x2

    invoke-virtual {p2, v8}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v8

    int-to-double v10, v5

    div-double/2addr v8, v10

    invoke-virtual {p2, v7, v8, v9}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 207
    const/4 v7, 0x5

    const/4 v8, 0x5

    invoke-virtual {p2, v8}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v8

    int-to-double v10, v5

    div-double/2addr v8, v10

    invoke-virtual {p2, v7, v8, v9}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 208
    const/4 v7, 0x6

    const/4 v8, 0x6

    invoke-virtual {p2, v8}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v8

    int-to-double v10, v5

    mul-double/2addr v8, v10

    invoke-virtual {p2, v7, v8, v9}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 209
    const/4 v7, 0x7

    const/4 v8, 0x7

    invoke-virtual {p2, v8}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v8

    int-to-double v10, v5

    mul-double/2addr v8, v10

    invoke-virtual {p2, v7, v8, v9}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 212
    .end local v5           #scale:I
    :cond_2
    iget-object v7, p0, Lcom/googlecode/javacv/ProCamTransformer;->projector:Lcom/googlecode/javacv/ProjectorDevice;

    iget-object v7, v7, Lcom/googlecode/javacv/ProjectorDevice;->colorMixingMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {v7}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get()[D

    move-result-object v6

    .line 213
    .local v6, x:[D
    invoke-virtual {v4}, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->getColorParameters()[D

    move-result-object v0

    .line 214
    .local v0, a:[D
    const/4 v7, 0x0

    aget-wide v1, v0, v7

    .line 215
    .local v1, a2:D
    const/16 v7, 0x10

    new-array v7, v7, [D

    const/4 v8, 0x0

    const/4 v9, 0x0

    aget-wide v9, v6, v9

    mul-double/2addr v9, v1

    aput-wide v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x1

    aget-wide v9, v6, v9

    mul-double/2addr v9, v1

    aput-wide v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x2

    aget-wide v9, v6, v9

    mul-double/2addr v9, v1

    aput-wide v9, v7, v8

    const/4 v8, 0x3

    const/4 v9, 0x1

    aget-wide v9, v0, v9

    aput-wide v9, v7, v8

    const/4 v8, 0x4

    const/4 v9, 0x3

    aget-wide v9, v6, v9

    mul-double/2addr v9, v1

    aput-wide v9, v7, v8

    const/4 v8, 0x5

    const/4 v9, 0x4

    aget-wide v9, v6, v9

    mul-double/2addr v9, v1

    aput-wide v9, v7, v8

    const/4 v8, 0x6

    const/4 v9, 0x5

    aget-wide v9, v6, v9

    mul-double/2addr v9, v1

    aput-wide v9, v7, v8

    const/4 v8, 0x7

    const/4 v9, 0x2

    aget-wide v9, v0, v9

    aput-wide v9, v7, v8

    const/16 v8, 0x8

    const/4 v9, 0x6

    aget-wide v9, v6, v9

    mul-double/2addr v9, v1

    aput-wide v9, v7, v8

    const/16 v8, 0x9

    const/4 v9, 0x7

    aget-wide v9, v6, v9

    mul-double/2addr v9, v1

    aput-wide v9, v7, v8

    const/16 v8, 0xa

    const/16 v9, 0x8

    aget-wide v9, v6, v9

    mul-double/2addr v9, v1

    aput-wide v9, v7, v8

    const/16 v8, 0xb

    const/4 v9, 0x3

    aget-wide v9, v0, v9

    aput-wide v9, v7, v8

    const/16 v8, 0xc

    const-wide/16 v9, 0x0

    aput-wide v9, v7, v8

    const/16 v8, 0xd

    const-wide/16 v9, 0x0

    aput-wide v9, v7, v8

    const/16 v8, 0xe

    const-wide/16 v9, 0x0

    aput-wide v9, v7, v8

    const/16 v8, 0xf

    const-wide/high16 v9, 0x3ff0

    aput-wide v9, v7, v8

    invoke-virtual {p3, v7}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put([D)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 219
    return-void
.end method

.method public setFillColor(Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;)V
    .locals 0
    .parameter "fillColor"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/googlecode/javacv/ProCamTransformer;->fillColor:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    .line 95
    return-void
.end method

.method public setProjectorImage(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;II)V
    .locals 1
    .parameter "projectorImage0"
    .parameter "minLevel"
    .parameter "maxLevel"

    .prologue
    .line 108
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/googlecode/javacv/ProCamTransformer;->setProjectorImage(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;IIZ)V

    .line 109
    return-void
.end method

.method public setProjectorImage(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;IIZ)V
    .locals 15
    .parameter "projectorImage0"
    .parameter "minLevel"
    .parameter "maxLevel"
    .parameter "convertToFloat"

    .prologue
    .line 111
    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer;->projectorImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer;->projectorImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    array-length v1, v1

    add-int/lit8 v2, p3, 0x1

    if-eq v1, v2, :cond_1

    .line 112
    :cond_0
    add-int/lit8 v1, p3, 0x1

    new-array v1, v1, [Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iput-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer;->projectorImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 115
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_2

    if-nez p4, :cond_4

    .line 116
    :cond_2
    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer;->projectorImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aput-object p1, v1, p2

    .line 141
    :goto_0
    add-int/lit8 v11, p2, 0x1

    .local v11, i:I
    :goto_1
    move/from16 v0, p3

    if-gt v11, v0, :cond_8

    .line 142
    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer;->projectorImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    add-int/lit8 v2, v11, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v1

    div-int/lit8 v14, v1, 0x2

    .line 143
    .local v14, w:I
    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer;->projectorImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    add-int/lit8 v2, v11, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v1

    div-int/lit8 v10, v1, 0x2

    .line 144
    .local v10, h:I
    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer;->projectorImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    add-int/lit8 v2, v11, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v9

    .line 145
    .local v9, d:I
    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer;->projectorImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    add-int/lit8 v2, v11, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->nChannels()I

    move-result v8

    .line 146
    .local v8, c:I
    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer;->projectorImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    add-int/lit8 v2, v11, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->origin()I

    move-result v13

    .line 147
    .local v13, o:I
    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer;->projectorImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v1, v1, v11

    if-nez v1, :cond_3

    .line 148
    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer;->projectorImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-static {v14, v10, v9, v8, v13}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v2

    aput-object v2, v1, v11

    .line 151
    :cond_3
    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer;->projectorImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    add-int/lit8 v2, v11, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->roi()Lcom/googlecode/javacv/cpp/opencv_core$IplROI;

    move-result-object v12

    .line 152
    .local v12, ir:Lcom/googlecode/javacv/cpp/opencv_core$IplROI;
    if-eqz v12, :cond_7

    .line 153
    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer;->roi:Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    invoke-virtual {v12}, Lcom/googlecode/javacv/cpp/opencv_core$IplROI;->xOffset()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->x(I)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer;->roi:Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    invoke-virtual {v12}, Lcom/googlecode/javacv/cpp/opencv_core$IplROI;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->width(I)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    .line 154
    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer;->roi:Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    invoke-virtual {v12}, Lcom/googlecode/javacv/cpp/opencv_core$IplROI;->yOffset()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->y(I)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer;->roi:Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    invoke-virtual {v12}, Lcom/googlecode/javacv/cpp/opencv_core$IplROI;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->height(I)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    .line 155
    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer;->projectorImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v1, v1, v11

    iget-object v2, p0, Lcom/googlecode/javacv/ProCamTransformer;->roi:Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    invoke-static {v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSetImageROI(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;)V

    .line 159
    :goto_2
    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer;->projectorImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    add-int/lit8 v2, v11, -0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/googlecode/javacv/ProCamTransformer;->projectorImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v2, v2, v11

    const/4 v3, 0x7

    invoke-static {v1, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvPyrDown(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V

    .line 160
    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer;->projectorImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    add-int/lit8 v2, v11, -0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/googlecode/javacv/cpp/opencv_core;->cvResetImageROI(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    .line 141
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 118
    .end local v8           #c:I
    .end local v9           #d:I
    .end local v10           #h:I
    .end local v11           #i:I
    .end local v12           #ir:Lcom/googlecode/javacv/cpp/opencv_core$IplROI;
    .end local v13           #o:I
    .end local v14           #w:I
    :cond_4
    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer;->projectorImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v1, v1, p2

    if-nez v1, :cond_5

    .line 119
    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer;->projectorImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v3

    const/16 v4, 0x20

    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->nChannels()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->origin()I

    move-result v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v2

    aput-object v2, v1, p2

    .line 122
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->roi()Lcom/googlecode/javacv/cpp/opencv_core$IplROI;

    move-result-object v12

    .line 123
    .restart local v12       #ir:Lcom/googlecode/javacv/cpp/opencv_core$IplROI;
    if-eqz v12, :cond_6

    .line 124
    const/4 v1, 0x1

    add-int/lit8 v2, p3, 0x1

    shl-int v7, v1, v2

    .line 125
    .local v7, align:I
    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer;->roi:Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    const/4 v2, 0x0

    invoke-virtual {v12}, Lcom/googlecode/javacv/cpp/opencv_core$IplROI;->xOffset()I

    move-result v3

    int-to-double v3, v3

    int-to-double v5, v7

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    mul-int/2addr v3, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->x(I)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    .line 126
    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer;->roi:Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    const/4 v2, 0x0

    invoke-virtual {v12}, Lcom/googlecode/javacv/cpp/opencv_core$IplROI;->yOffset()I

    move-result v3

    int-to-double v3, v3

    int-to-double v5, v7

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    mul-int/2addr v3, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->y(I)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    .line 127
    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer;->roi:Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v2

    invoke-virtual {v12}, Lcom/googlecode/javacv/cpp/opencv_core$IplROI;->width()I

    move-result v3

    int-to-double v3, v3

    int-to-double v5, v7

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    mul-int/2addr v3, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->width(I)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    .line 128
    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer;->roi:Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v2

    invoke-virtual {v12}, Lcom/googlecode/javacv/cpp/opencv_core$IplROI;->height()I

    move-result v3

    int-to-double v3, v3

    int-to-double v5, v7

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    mul-int/2addr v3, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->height(I)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    .line 129
    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer;->roi:Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSetImageROI(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;)V

    .line 130
    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer;->projectorImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v1, v1, p2

    iget-object v2, p0, Lcom/googlecode/javacv/ProCamTransformer;->roi:Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    invoke-static {v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSetImageROI(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;)V

    .line 135
    .end local v7           #align:I
    :goto_3
    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer;->projectorImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v2, v1, p2

    const-wide v3, 0x3f70101010101010L

    const-wide/16 v5, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lcom/googlecode/javacv/cpp/opencv_core;->cvConvertScale(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;DD)V

    goto/16 :goto_0

    .line 132
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core;->cvResetImageROI(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    .line 133
    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer;->projectorImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v1, v1, p2

    invoke-static {v1}, Lcom/googlecode/javacv/cpp/opencv_core;->cvResetImageROI(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    goto :goto_3

    .line 157
    .restart local v8       #c:I
    .restart local v9       #d:I
    .restart local v10       #h:I
    .restart local v11       #i:I
    .restart local v13       #o:I
    .restart local v14       #w:I
    :cond_7
    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer;->projectorImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v1, v1, v11

    invoke-static {v1}, Lcom/googlecode/javacv/cpp/opencv_core;->cvResetImageROI(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    goto/16 :goto_2

    .line 162
    .end local v8           #c:I
    .end local v9           #d:I
    .end local v10           #h:I
    .end local v12           #ir:Lcom/googlecode/javacv/cpp/opencv_core$IplROI;
    .end local v13           #o:I
    .end local v14           #w:I
    :cond_8
    return-void
.end method

.method public setSurfaceImage(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;I)V
    .locals 9
    .parameter "surfaceImage0"
    .parameter "pyramidLevels"

    .prologue
    .line 167
    iget-object v6, p0, Lcom/googlecode/javacv/ProCamTransformer;->surfaceImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/googlecode/javacv/ProCamTransformer;->surfaceImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    array-length v6, v6

    if-eq v6, p2, :cond_1

    .line 168
    :cond_0
    new-array v6, p2, [Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iput-object v6, p0, Lcom/googlecode/javacv/ProCamTransformer;->surfaceImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 170
    :cond_1
    iget-object v6, p0, Lcom/googlecode/javacv/ProCamTransformer;->surfaceImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    .line 171
    invoke-static {p1}, Lcom/googlecode/javacv/cpp/opencv_core;->cvResetImageROI(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    .line 172
    const/4 v3, 0x1

    .local v3, i:I
    :goto_0
    if-ge v3, p2, :cond_3

    .line 173
    iget-object v6, p0, Lcom/googlecode/javacv/ProCamTransformer;->surfaceImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    add-int/lit8 v7, v3, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v6

    div-int/lit8 v5, v6, 0x2

    .line 174
    .local v5, w:I
    iget-object v6, p0, Lcom/googlecode/javacv/ProCamTransformer;->surfaceImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    add-int/lit8 v7, v3, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v6

    div-int/lit8 v2, v6, 0x2

    .line 175
    .local v2, h:I
    iget-object v6, p0, Lcom/googlecode/javacv/ProCamTransformer;->surfaceImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    add-int/lit8 v7, v3, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v1

    .line 176
    .local v1, d:I
    iget-object v6, p0, Lcom/googlecode/javacv/ProCamTransformer;->surfaceImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    add-int/lit8 v7, v3, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->nChannels()I

    move-result v0

    .line 177
    .local v0, c:I
    iget-object v6, p0, Lcom/googlecode/javacv/ProCamTransformer;->surfaceImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    add-int/lit8 v7, v3, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->origin()I

    move-result v4

    .line 178
    .local v4, o:I
    iget-object v6, p0, Lcom/googlecode/javacv/ProCamTransformer;->surfaceImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v6, v6, v3

    if-nez v6, :cond_2

    .line 179
    iget-object v6, p0, Lcom/googlecode/javacv/ProCamTransformer;->surfaceImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-static {v5, v2, v1, v0, v4}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v7

    aput-object v7, v6, v3

    .line 183
    :goto_1
    iget-object v6, p0, Lcom/googlecode/javacv/ProCamTransformer;->surfaceImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    add-int/lit8 v7, v3, -0x1

    aget-object v6, v6, v7

    iget-object v7, p0, Lcom/googlecode/javacv/ProCamTransformer;->surfaceImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v7, v7, v3

    const/4 v8, 0x7

    invoke-static {v6, v7, v8}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvPyrDown(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V

    .line 172
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 181
    :cond_2
    iget-object v6, p0, Lcom/googlecode/javacv/ProCamTransformer;->surfaceImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v6, v6, v3

    invoke-static {v6}, Lcom/googlecode/javacv/cpp/opencv_core;->cvResetImageROI(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    goto :goto_1

    .line 185
    .end local v0           #c:I
    .end local v1           #d:I
    .end local v2           #h:I
    .end local v4           #o:I
    .end local v5           #w:I
    :cond_3
    return-void
.end method

.method public transform(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/ImageTransformer$Parameters;Z)V
    .locals 2
    .parameter "srcPts"
    .parameter "dstPts"
    .parameter "parameters"
    .parameter "inverse"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer;->surfaceTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer;->surfaceTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    check-cast p3, Lcom/googlecode/javacv/ProCamTransformer$Parameters;

    .end local p3
    #getter for: Lcom/googlecode/javacv/ProCamTransformer$Parameters;->surfaceParameters:Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;
    invoke-static {p3}, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->access$100(Lcom/googlecode/javacv/ProCamTransformer$Parameters;)Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1, p4}, Lcom/googlecode/javacv/ProjectiveColorTransformer;->transform(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/ImageTransformer$Parameters;Z)V

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 261
    .restart local p3
    :cond_1
    if-eq p2, p1, :cond_0

    .line 262
    invoke-virtual {p2, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    goto :goto_0
.end method

.method public transform(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;ILcom/googlecode/javacv/ImageTransformer$Parameters;Z)V
    .locals 16
    .parameter "srcImage"
    .parameter "dstImage"
    .parameter "roi"
    .parameter "pyramidLevel"
    .parameter "parameters"
    .parameter "inverse"

    .prologue
    .line 223
    if-eqz p6, :cond_0

    .line 224
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Inverse transform not supported."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object/from16 v15, p5

    .line 226
    check-cast v15, Lcom/googlecode/javacv/ProCamTransformer$Parameters;

    .line 227
    .local v15, p:Lcom/googlecode/javacv/ProCamTransformer$Parameters;
    invoke-virtual {v15}, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->getSurfaceParameters()Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    move-result-object v7

    .line 228
    .local v7, cameraParameters:Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;
    invoke-virtual {v15}, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->getProjectorParameters()Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    move-result-object v13

    .line 230
    .local v13, projectorParameters:Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;
    #getter for: Lcom/googlecode/javacv/ProCamTransformer$Parameters;->tempImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    invoke-static {v15}, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->access$000(Lcom/googlecode/javacv/ProCamTransformer$Parameters;)[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v2

    if-eqz v2, :cond_1

    #getter for: Lcom/googlecode/javacv/ProCamTransformer$Parameters;->tempImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    invoke-static {v15}, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->access$000(Lcom/googlecode/javacv/ProCamTransformer$Parameters;)[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v2

    array-length v2, v2

    move/from16 v0, p4

    if-gt v2, v0, :cond_2

    .line 231
    :cond_1
    add-int/lit8 v2, p4, 0x1

    new-array v2, v2, [Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    #setter for: Lcom/googlecode/javacv/ProCamTransformer$Parameters;->tempImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    invoke-static {v15, v2}, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->access$002(Lcom/googlecode/javacv/ProCamTransformer$Parameters;[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 233
    :cond_2
    #getter for: Lcom/googlecode/javacv/ProCamTransformer$Parameters;->tempImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    invoke-static {v15}, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->access$000(Lcom/googlecode/javacv/ProCamTransformer$Parameters;)[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v2

    #getter for: Lcom/googlecode/javacv/ProCamTransformer$Parameters;->tempImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    invoke-static {v15}, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->access$000(Lcom/googlecode/javacv/ProCamTransformer$Parameters;)[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v3

    aget-object v3, v3, p4

    move-object/from16 v0, p2

    invoke-static {v3, v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->createIfNotCompatible(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v3

    aput-object v3, v2, p4

    .line 234
    if-nez p3, :cond_4

    .line 235
    #getter for: Lcom/googlecode/javacv/ProCamTransformer$Parameters;->tempImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    invoke-static {v15}, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->access$000(Lcom/googlecode/javacv/ProCamTransformer$Parameters;)[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v2

    aget-object v2, v2, p4

    invoke-static {v2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvResetImageROI(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    .line 242
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/ProCamTransformer;->surfaceTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    if-eqz v2, :cond_3

    .line 243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/ProCamTransformer;->surfaceTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    #getter for: Lcom/googlecode/javacv/ProCamTransformer$Parameters;->tempImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    invoke-static {v15}, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->access$000(Lcom/googlecode/javacv/ProCamTransformer$Parameters;)[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v3

    aget-object v4, v3, p4

    const/4 v8, 0x0

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v2 .. v8}, Lcom/googlecode/javacv/ProjectiveColorTransformer;->transform(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;ILcom/googlecode/javacv/ImageTransformer$Parameters;Z)V

    .line 247
    :cond_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/googlecode/javacv/ProCamTransformer;->projectorTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/ProCamTransformer;->projectorImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v9, v2, p4

    const/4 v14, 0x0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual/range {v8 .. v14}, Lcom/googlecode/javacv/ProjectiveColorTransformer;->transform(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;ILcom/googlecode/javacv/ImageTransformer$Parameters;Z)V

    .line 251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/ProCamTransformer;->surfaceTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    if-eqz v2, :cond_5

    .line 252
    #getter for: Lcom/googlecode/javacv/ProCamTransformer$Parameters;->tempImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    invoke-static {v15}, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->access$000(Lcom/googlecode/javacv/ProCamTransformer$Parameters;)[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v2

    aget-object v2, v2, p4

    const-wide/high16 v3, 0x3ff0

    invoke-virtual/range {p2 .. p2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->highValue()D

    move-result-wide v5

    div-double/2addr v3, v5

    move-object/from16 v0, p2

    move-object/from16 v1, p2

    invoke-static {v0, v2, v1, v3, v4}, Lcom/googlecode/javacv/cpp/opencv_core;->cvMul(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;D)V

    .line 256
    :goto_1
    return-void

    .line 237
    :cond_4
    #getter for: Lcom/googlecode/javacv/ProCamTransformer$Parameters;->tempImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    invoke-static {v15}, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->access$000(Lcom/googlecode/javacv/ProCamTransformer$Parameters;)[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v2

    aget-object v2, v2, p4

    move-object/from16 v0, p3

    invoke-static {v2, v0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSetImageROI(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;)V

    goto :goto_0

    .line 254
    :cond_5
    #getter for: Lcom/googlecode/javacv/ProCamTransformer$Parameters;->tempImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    invoke-static {v15}, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->access$000(Lcom/googlecode/javacv/ProCamTransformer$Parameters;)[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v2

    aget-object v2, v2, p4

    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvCopy(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    goto :goto_1
.end method

.method public transform([Lcom/googlecode/javacv/ImageTransformer$Data;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;[Lcom/googlecode/javacv/ImageTransformer$Parameters;[Z)V
    .locals 9
    .parameter "data"
    .parameter "roi"
    .parameter "parameters"
    .parameter "inverses"

    .prologue
    const/4 v3, 0x4

    const/4 v8, 0x0

    const/4 v2, 0x3

    .line 267
    sget-boolean v0, Lcom/googlecode/javacv/ProCamTransformer;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    array-length v0, p1

    array-length v1, p3

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->capacity()I

    move-result v0

    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 269
    :cond_1
    new-instance v0, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    array-length v1, p1

    invoke-direct {v0, v1}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;-><init>(I)V

    iput-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 271
    :cond_2
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer;->H1:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer;->H1:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    array-length v0, v0

    array-length v1, p1

    if-ge v0, v1, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer;->surfaceTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    if-eqz v0, :cond_4

    .line 272
    array-length v0, p1

    new-array v0, v0, [Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iput-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer;->H1:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 273
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer;->H1:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    array-length v0, v0

    if-ge v7, v0, :cond_4

    .line 274
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer;->H1:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v2, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v1

    aput-object v1, v0, v7

    .line 273
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 277
    .end local v7           #i:I
    :cond_4
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer;->H2:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer;->H2:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    array-length v0, v0

    array-length v1, p1

    if-ge v0, v1, :cond_6

    .line 278
    :cond_5
    array-length v0, p1

    new-array v0, v0, [Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iput-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer;->H2:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 279
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_1
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer;->H2:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    array-length v0, v0

    if-ge v7, v0, :cond_6

    .line 280
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer;->H2:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v2, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v1

    aput-object v1, v0, v7

    .line 279
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 283
    .end local v7           #i:I
    :cond_6
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer;->X:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer;->X:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    array-length v0, v0

    array-length v1, p1

    if-ge v0, v1, :cond_8

    .line 284
    :cond_7
    array-length v0, p1

    new-array v0, v0, [Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iput-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer;->X:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 285
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_2
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer;->X:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    array-length v0, v0

    if-ge v7, v0, :cond_8

    .line 286
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer;->X:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v3, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v1

    aput-object v1, v0, v7

    .line 285
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 290
    .end local v7           #i:I
    :cond_8
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_3
    array-length v0, p1

    if-ge v7, v0, :cond_d

    .line 291
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    invoke-virtual {v0, v7}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->position(I)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 293
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer;->projectorImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v2, p1, v7

    iget v2, v2, Lcom/googlecode/javacv/ImageTransformer$Data;->pyramidLevel:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->srcImg(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 294
    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer;->surfaceTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    if-nez v0, :cond_9

    move-object v0, v8

    :goto_4
    invoke-virtual {v1, v0}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->srcImg2(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 295
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    aget-object v1, p1, v7

    iget-object v1, v1, Lcom/googlecode/javacv/ImageTransformer$Data;->subImg:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->subImg(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 296
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    aget-object v1, p1, v7

    iget-object v1, v1, Lcom/googlecode/javacv/ImageTransformer$Data;->srcDotImg:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->srcDotImg(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 297
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    aget-object v1, p1, v7

    iget-object v1, v1, Lcom/googlecode/javacv/ImageTransformer$Data;->mask:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->mask(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 298
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    aget-object v1, p1, v7

    iget-wide v1, v1, Lcom/googlecode/javacv/ImageTransformer$Data;->zeroThreshold:D

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->zeroThreshold(D)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 299
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    aget-object v1, p1, v7

    iget-wide v1, v1, Lcom/googlecode/javacv/ImageTransformer$Data;->outlierThreshold:D

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->outlierThreshold(D)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 301
    if-eqz p4, :cond_a

    aget-boolean v0, p4, v7

    if-eqz v0, :cond_a

    .line 302
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Inverse transform not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_9
    aget-object v0, p1, v7

    iget-object v0, v0, Lcom/googlecode/javacv/ImageTransformer$Data;->srcImg:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    goto :goto_4

    .line 304
    :cond_a
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer;->surfaceTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    if-nez v0, :cond_b

    move-object v1, v8

    :goto_5
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer;->H2:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    aget-object v2, v0, v7

    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer;->X:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    aget-object v3, v0, v7

    aget-object v0, p1, v7

    iget v4, v0, Lcom/googlecode/javacv/ImageTransformer$Data;->pyramidLevel:I

    aget-object v5, p3, v7

    check-cast v5, Lcom/googlecode/javacv/ProCamTransformer$Parameters;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/googlecode/javacv/ProCamTransformer;->prepareTransforms(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;ILcom/googlecode/javacv/ProCamTransformer$Parameters;)V

    .line 307
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer;->H2:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->H1(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 308
    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer;->surfaceTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    if-nez v0, :cond_c

    move-object v0, v8

    :goto_6
    invoke-virtual {v1, v0}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->H2(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 309
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer;->X:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->X(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 311
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    aget-object v1, p1, v7

    iget-object v1, v1, Lcom/googlecode/javacv/ImageTransformer$Data;->transImg:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->transImg(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 312
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    aget-object v1, p1, v7

    iget-object v1, v1, Lcom/googlecode/javacv/ImageTransformer$Data;->dstImg:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->dstImg(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 313
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    aget-object v1, p1, v7

    iget-object v1, v1, Lcom/googlecode/javacv/ImageTransformer$Data;->dstDstDot:Ljava/nio/DoubleBuffer;

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->dstDstDot(Ljava/nio/DoubleBuffer;)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 290
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 304
    :cond_b
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer;->H1:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    aget-object v1, v0, v7

    goto :goto_5

    .line 308
    :cond_c
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer;->H1:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    aget-object v0, v0, v7

    goto :goto_6

    .line 316
    :cond_d
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->capacity()I

    move-result v6

    .line 317
    .local v6, fullCapacity:I
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    array-length v1, p1

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->capacity(I)Lcom/googlecode/javacpp/Pointer;

    .line 318
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    invoke-virtual {p0}, Lcom/googlecode/javacv/ProCamTransformer;->getFillColor()Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/googlecode/javacv/cpp/cvkernels;->multiWarpColorTransform(Lcom/googlecode/javacv/cpp/cvkernels$KernelData;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;)V

    .line 319
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    invoke-virtual {v0, v6}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->capacity(I)Lcom/googlecode/javacpp/Pointer;

    .line 321
    const/4 v7, 0x0

    :goto_7
    array-length v0, p1

    if-ge v7, v0, :cond_e

    .line 322
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    invoke-virtual {v0, v7}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->position(I)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 323
    aget-object v0, p1, v7

    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->dstCount()I

    move-result v1

    iput v1, v0, Lcom/googlecode/javacv/ImageTransformer$Data;->dstCount:I

    .line 324
    aget-object v0, p1, v7

    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->dstCountZero()I

    move-result v1

    iput v1, v0, Lcom/googlecode/javacv/ImageTransformer$Data;->dstCountZero:I

    .line 325
    aget-object v0, p1, v7

    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->dstCountOutlier()I

    move-result v1

    iput v1, v0, Lcom/googlecode/javacv/ImageTransformer$Data;->dstCountOutlier:I

    .line 326
    aget-object v0, p1, v7

    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->srcDstDot()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/googlecode/javacv/ImageTransformer$Data;->srcDstDot:D

    .line 321
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 333
    :cond_e
    return-void
.end method
