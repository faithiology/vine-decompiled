.class public Lcom/googlecode/javacv/ReflectanceInitializer;
.super Ljava/lang/Object;
.source "ReflectanceInitializer.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static mat3x1:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/googlecode/javacv/cpp/opencv_core$CvMat;",
            ">;"
        }
    .end annotation
.end field

.field private static mat3x3:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/googlecode/javacv/cpp/opencv_core$CvMat;",
            ">;"
        }
    .end annotation
.end field

.field private static mat4x4:Ljava/lang/ThreadLocal;
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
.field private alignerSettings:Lcom/googlecode/javacv/GNImageAligner$Settings;

.field private cameraDevice:Lcom/googlecode/javacv/CameraDevice;

.field private projectorDevice:Lcom/googlecode/javacv/ProjectorDevice;

.field private projectorImages:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

.field private reflectanceMin:D

.field private smoothingSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x3

    .line 34
    const-class v0, Lcom/googlecode/javacv/ReflectanceInitializer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/googlecode/javacv/ReflectanceInitializer;->$assertionsDisabled:Z

    .line 65
    invoke-static {v2, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->createThreadLocal(II)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacv/ReflectanceInitializer;->mat3x1:Ljava/lang/ThreadLocal;

    .line 66
    invoke-static {v2, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->createThreadLocal(II)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacv/ReflectanceInitializer;->mat3x3:Ljava/lang/ThreadLocal;

    .line 67
    invoke-static {v3, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->createThreadLocal(II)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacv/ReflectanceInitializer;->mat4x4:Ljava/lang/ThreadLocal;

    return-void

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/googlecode/javacv/CameraDevice;Lcom/googlecode/javacv/ProjectorDevice;ILcom/googlecode/javacv/GNImageAligner$Settings;)V
    .locals 8
    .parameter "cameraDevice"
    .parameter "projectorDevice"
    .parameter "channels"
    .parameter "alignerSettings"

    .prologue
    .line 38
    const/16 v5, 0x33

    const-wide v6, 0x3f847ae147ae147bL

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/googlecode/javacv/ReflectanceInitializer;-><init>(Lcom/googlecode/javacv/CameraDevice;Lcom/googlecode/javacv/ProjectorDevice;ILcom/googlecode/javacv/GNImageAligner$Settings;ID)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/CameraDevice;Lcom/googlecode/javacv/ProjectorDevice;ILcom/googlecode/javacv/GNImageAligner$Settings;ID)V
    .locals 6
    .parameter "cameraDevice"
    .parameter "projectorDevice"
    .parameter "channels"
    .parameter "alignerSettings"
    .parameter "smoothingSize"
    .parameter "reflectanceMin"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p4, p0, Lcom/googlecode/javacv/ReflectanceInitializer;->alignerSettings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    .line 43
    iput p5, p0, Lcom/googlecode/javacv/ReflectanceInitializer;->smoothingSize:I

    .line 44
    iput-wide p6, p0, Lcom/googlecode/javacv/ReflectanceInitializer;->reflectanceMin:D

    .line 45
    iput-object p1, p0, Lcom/googlecode/javacv/ReflectanceInitializer;->cameraDevice:Lcom/googlecode/javacv/CameraDevice;

    .line 46
    iput-object p2, p0, Lcom/googlecode/javacv/ReflectanceInitializer;->projectorDevice:Lcom/googlecode/javacv/ProjectorDevice;

    .line 47
    const/4 v2, 0x3

    new-array v2, v2, [Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iput-object v2, p0, Lcom/googlecode/javacv/ReflectanceInitializer;->projectorImages:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 49
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/googlecode/javacv/ReflectanceInitializer;->projectorImages:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 50
    iget-object v2, p0, Lcom/googlecode/javacv/ReflectanceInitializer;->projectorImages:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget v3, p2, Lcom/googlecode/javacv/ProjectorDevice;->imageWidth:I

    iget v4, p2, Lcom/googlecode/javacv/ProjectorDevice;->imageHeight:I

    const/16 v5, 0x20

    invoke-static {v3, v4, v5, p3}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v3

    aput-object v3, v2, v1

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    :cond_0
    iget-object v2, p0, Lcom/googlecode/javacv/ReflectanceInitializer;->projectorImages:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSetZero(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 57
    iget-object v2, p0, Lcom/googlecode/javacv/ReflectanceInitializer;->projectorImages:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    sget-object v3, Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;->ONE:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    invoke-static {v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSet(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;)V

    .line 59
    sget-object v2, Lcom/googlecode/javacv/ReflectanceInitializer;->mat3x3:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 60
    .local v0, H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    invoke-virtual {p2, p1, v0}, Lcom/googlecode/javacv/ProjectorDevice;->getRectifyingHomography(Lcom/googlecode/javacv/ProjectiveDevice;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 61
    iget-object v2, p0, Lcom/googlecode/javacv/ReflectanceInitializer;->projectorImages:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-static {v2, v0}, Lcom/googlecode/javacv/JavaCV;->fractalTriangleWave(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V

    .line 62
    return-void
.end method


# virtual methods
.method public getProjectorImages()[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/googlecode/javacv/ReflectanceInitializer;->projectorImages:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    return-object v0
.end method

.method public initializePlaneParameters(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;[D[D[D)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .locals 16
    .parameter "reflectance"
    .parameter "cameraImage"
    .parameter "referencePoints"
    .parameter "roiPts"
    .parameter "gainAmbientLight"

    .prologue
    .line 166
    new-instance v2, Lcom/googlecode/javacv/ProCamTransformer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/ReflectanceInitializer;->cameraDevice:Lcom/googlecode/javacv/CameraDevice;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/ReflectanceInitializer;->projectorDevice:Lcom/googlecode/javacv/ProjectorDevice;

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-direct {v2, v0, v4, v5, v6}, Lcom/googlecode/javacv/ProCamTransformer;-><init>([DLcom/googlecode/javacv/CameraDevice;Lcom/googlecode/javacv/ProjectorDevice;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V

    .line 167
    .local v2, transformer:Lcom/googlecode/javacv/ProCamTransformer;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/ReflectanceInitializer;->projectorImages:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/googlecode/javacv/ReflectanceInitializer;->alignerSettings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget v6, v6, Lcom/googlecode/javacv/GNImageAligner$Settings;->pyramidLevelMax:I

    invoke-virtual {v2, v4, v5, v6}, Lcom/googlecode/javacv/ProCamTransformer;->setProjectorImage(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;II)V

    .line 169
    invoke-virtual {v2}, Lcom/googlecode/javacv/ProCamTransformer;->createParameters()Lcom/googlecode/javacv/ProCamTransformer$Parameters;

    move-result-object v3

    .line 173
    .local v3, parameters:Lcom/googlecode/javacv/ProCamTransformer$Parameters;
    invoke-virtual {v3}, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->size()I

    move-result v4

    move-object/from16 v0, p5

    array-length v5, v0

    sub-int v11, v4, v5

    .line 174
    .local v11, gainAmbientLightStart:I
    invoke-virtual {v3}, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->size()I

    move-result v10

    .line 175
    .local v10, gainAmbientLightEnd:I
    move v12, v11

    .local v12, i:I
    :goto_0
    if-ge v12, v10, :cond_0

    .line 176
    sub-int v4, v12, v11

    aget-wide v4, p5, v4

    invoke-virtual {v3, v12, v4, v5}, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->set(ID)V

    .line 175
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 178
    :cond_0
    new-instance v1, Lcom/googlecode/javacv/GNImageAligner;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/googlecode/javacv/ReflectanceInitializer;->alignerSettings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    move-object/from16 v4, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/googlecode/javacv/GNImageAligner;-><init>(Lcom/googlecode/javacv/ImageTransformer;Lcom/googlecode/javacv/ImageTransformer$Parameters;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;[DLcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/GNImageAligner$Settings;)V

    .line 181
    .local v1, aligner:Lcom/googlecode/javacv/ImageAligner;
    invoke-virtual {v3}, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    new-array v9, v4, [D

    .line 182
    .local v9, delta:[D
    const/4 v8, 0x0

    .line 183
    .local v8, converged:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 184
    .local v14, iterationsStartTime:J
    const/4 v13, 0x0

    .line 185
    .local v13, iterations:I
    :goto_1
    if-nez v8, :cond_1

    const/16 v4, 0x64

    if-ge v13, v4, :cond_1

    .line 186
    invoke-interface {v1, v9}, Lcom/googlecode/javacv/ImageAligner;->iterate([D)Z

    move-result v8

    .line 187
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 189
    :cond_1
    invoke-interface {v1}, Lcom/googlecode/javacv/ImageAligner;->getParameters()Lcom/googlecode/javacv/ImageTransformer$Parameters;

    move-result-object v3

    .end local v3           #parameters:Lcom/googlecode/javacv/ProCamTransformer$Parameters;
    check-cast v3, Lcom/googlecode/javacv/ProCamTransformer$Parameters;

    .line 193
    .restart local v3       #parameters:Lcom/googlecode/javacv/ProCamTransformer$Parameters;
    const-class v4, Lcom/googlecode/javacv/ReflectanceInitializer;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iteratingTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v14

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  iterations = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  objectiveRMSE = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Lcom/googlecode/javacv/ImageAligner;->getRMSE()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v3}, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->getN0()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v4

    return-object v4
.end method

.method public initializeReflectance([Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;[D[D)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 30
    .parameter "cameraImages"
    .parameter "reflectance"
    .parameter "roiPts"
    .parameter "gainAmbientLight"

    .prologue
    .line 82
    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {v5}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v28

    .line 83
    .local v28, w:I
    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {v5}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v19

    .line 84
    .local v19, h:I
    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {v5}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->nChannels()I

    move-result v15

    .line 86
    .local v15, channels:I
    const/16 v5, 0x8

    const/4 v6, 0x1

    move/from16 v0, v28

    move/from16 v1, v19

    invoke-static {v0, v1, v5, v6}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v3

    .line 87
    .local v3, mask:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    invoke-static {v3}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSetZero(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 88
    new-instance v4, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/ReflectanceInitializer;->cameraDevice:Lcom/googlecode/javacv/CameraDevice;

    invoke-virtual {v5}, Lcom/googlecode/javacv/CameraDevice;->getMapsPyramidLevel()I

    move-result v5

    rsub-int/lit8 v5, v5, 0x10

    int-to-byte v5, v5

    move-object/from16 v0, p3

    invoke-direct {v4, v5, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;-><init>(B[D)V

    const/4 v5, 0x4

    sget-object v6, Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;->WHITE:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    const/16 v7, 0x8

    const/16 v8, 0x10

    invoke-static/range {v3 .. v8}, Lcom/googlecode/javacv/cpp/opencv_core;->cvFillConvexPoly(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;ILcom/googlecode/javacv/cpp/opencv_core$CvScalar;II)V

    .line 92
    const/4 v5, 0x0

    aget-object v4, p1, v5

    .line 93
    .local v4, float1:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    const/4 v5, 0x1

    aget-object v18, p1, v5

    .line 94
    .local v18, float2:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core;->cvCopy(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 95
    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/googlecode/javacv/ReflectanceInitializer;->smoothingSize:I

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    move-object v5, v4

    invoke-static/range {v4 .. v12}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvSmooth(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;IIIDD)V

    .line 96
    const/4 v7, 0x2

    move-object/from16 v0, p0

    iget v8, v0, Lcom/googlecode/javacv/ReflectanceInitializer;->smoothingSize:I

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v5, v18

    move-object/from16 v6, v18

    invoke-static/range {v5 .. v13}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvSmooth(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;IIIDD)V

    .line 99
    const/4 v5, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v18

    invoke-static {v0, v4, v1, v5}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSub(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 103
    sget-object v5, Lcom/googlecode/javacv/ReflectanceInitializer;->mat3x1:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 104
    .local v25, p:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    const/4 v5, 0x3

    new-array v5, v5, [D

    fill-array-data v5, :array_0

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put([D)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 105
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/ReflectanceInitializer;->projectorDevice:Lcom/googlecode/javacv/ProjectorDevice;

    iget-object v5, v5, Lcom/googlecode/javacv/ProjectorDevice;->colorMixingMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, v25

    move-object/from16 v1, v25

    invoke-static {v5, v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core;->cvMatMul(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 107
    invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->nChannels()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    .line 108
    sget-object v5, Lcom/googlecode/javacv/ReflectanceInitializer;->mat4x4:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 109
    .local v21, invp:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    const/16 v5, 0x10

    new-array v5, v5, [D

    const/4 v6, 0x0

    const-wide/high16 v7, 0x3ff0

    const/4 v9, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v9

    div-double/2addr v7, v9

    aput-wide v7, v5, v6

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    aput-wide v7, v5, v6

    const/4 v6, 0x2

    const-wide/16 v7, 0x0

    aput-wide v7, v5, v6

    const/4 v6, 0x3

    const-wide/16 v7, 0x0

    aput-wide v7, v5, v6

    const/4 v6, 0x4

    const-wide/16 v7, 0x0

    aput-wide v7, v5, v6

    const/4 v6, 0x5

    const-wide/high16 v7, 0x3ff0

    const/4 v9, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v9

    div-double/2addr v7, v9

    aput-wide v7, v5, v6

    const/4 v6, 0x6

    const-wide/16 v7, 0x0

    aput-wide v7, v5, v6

    const/4 v6, 0x7

    const-wide/16 v7, 0x0

    aput-wide v7, v5, v6

    const/16 v6, 0x8

    const-wide/16 v7, 0x0

    aput-wide v7, v5, v6

    const/16 v6, 0x9

    const-wide/16 v7, 0x0

    aput-wide v7, v5, v6

    const/16 v6, 0xa

    const-wide/high16 v7, 0x3ff0

    const/4 v9, 0x2

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v9

    div-double/2addr v7, v9

    aput-wide v7, v5, v6

    const/16 v6, 0xb

    const-wide/16 v7, 0x0

    aput-wide v7, v5, v6

    const/16 v6, 0xc

    const-wide/16 v7, 0x0

    aput-wide v7, v5, v6

    const/16 v6, 0xd

    const-wide/16 v7, 0x0

    aput-wide v7, v5, v6

    const/16 v6, 0xe

    const-wide/16 v7, 0x0

    aput-wide v7, v5, v6

    const/16 v6, 0xf

    const-wide/high16 v7, 0x3ff0

    aput-wide v7, v5, v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put([D)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 119
    :goto_0
    const/4 v5, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2, v5}, Lcom/googlecode/javacv/cpp/opencv_core;->cvTransform(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V

    .line 125
    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v16

    .line 126
    .local v16, fb1:Ljava/nio/FloatBuffer;
    invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v17

    .line 127
    .local v17, fb2:Ljava/nio/FloatBuffer;
    invoke-virtual {v3}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v23

    .line 128
    .local v23, mb:Ljava/nio/ByteBuffer;
    sget-boolean v5, Lcom/googlecode/javacv/ReflectanceInitializer;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    invoke-virtual/range {v16 .. v16}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v5

    invoke-virtual/range {v17 .. v17}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v6

    div-int/lit8 v6, v6, 0x3

    if-eq v5, v6, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 114
    .end local v16           #fb1:Ljava/nio/FloatBuffer;
    .end local v17           #fb2:Ljava/nio/FloatBuffer;
    .end local v21           #invp:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .end local v23           #mb:Ljava/nio/ByteBuffer;
    :cond_0
    sget-object v5, Lcom/googlecode/javacv/ReflectanceInitializer;->mat3x3:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 115
    .restart local v21       #invp:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    const/16 v5, 0x9

    new-array v5, v5, [D

    const/4 v6, 0x0

    const-wide/high16 v7, 0x3ff0

    const/4 v9, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v9

    div-double/2addr v7, v9

    aput-wide v7, v5, v6

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    aput-wide v7, v5, v6

    const/4 v6, 0x2

    const-wide/16 v7, 0x0

    aput-wide v7, v5, v6

    const/4 v6, 0x3

    const-wide/16 v7, 0x0

    aput-wide v7, v5, v6

    const/4 v6, 0x4

    const-wide/high16 v7, 0x3ff0

    const/4 v9, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v9

    div-double/2addr v7, v9

    aput-wide v7, v5, v6

    const/4 v6, 0x5

    const-wide/16 v7, 0x0

    aput-wide v7, v5, v6

    const/4 v6, 0x6

    const-wide/16 v7, 0x0

    aput-wide v7, v5, v6

    const/4 v6, 0x7

    const-wide/16 v7, 0x0

    aput-wide v7, v5, v6

    const/16 v6, 0x8

    const-wide/high16 v7, 0x3ff0

    const/4 v9, 0x2

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v9

    div-double/2addr v7, v9

    aput-wide v7, v5, v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put([D)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    goto/16 :goto_0

    .line 129
    .restart local v16       #fb1:Ljava/nio/FloatBuffer;
    .restart local v17       #fb2:Ljava/nio/FloatBuffer;
    .restart local v23       #mb:Ljava/nio/ByteBuffer;
    :cond_1
    sget-boolean v5, Lcom/googlecode/javacv/ReflectanceInitializer;->$assertionsDisabled:Z

    if-nez v5, :cond_2

    invoke-virtual/range {v16 .. v16}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v5

    invoke-virtual/range {v23 .. v23}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    div-int/lit8 v6, v6, 0x3

    if-eq v5, v6, :cond_2

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 130
    :cond_2
    new-array v0, v15, [I

    move-object/from16 v24, v0

    .line 131
    .local v24, nPixels:[I
    const/16 v20, 0x0

    .local v20, i:I
    const/16 v22, 0x0

    .local v22, j:I
    :goto_1
    invoke-virtual/range {v16 .. v16}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v5

    move/from16 v0, v22

    if-ge v0, v5, :cond_6

    .line 132
    const/16 v29, 0x0

    .local v29, z:I
    :goto_2
    move/from16 v0, v29

    if-ge v0, v15, :cond_5

    .line 133
    add-int v5, v22, v29

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v27

    .line 134
    .local v27, ra:F
    add-int v5, v22, v29

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v26

    .line 135
    .local v26, r:F
    const/4 v5, 0x0

    cmpl-float v5, v26, v5

    if-nez v5, :cond_4

    const/4 v14, 0x0

    .line 136
    .local v14, a:F
    :goto_3
    add-int v5, v22, v29

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v14}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 137
    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    if-eqz v5, :cond_3

    .line 138
    move/from16 v0, v26

    float-to-double v5, v0

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/googlecode/javacv/ReflectanceInitializer;->reflectanceMin:D

    cmpl-double v5, v5, v7

    if-lez v5, :cond_3

    .line 139
    aget v5, v24, v29

    add-int/lit8 v5, v5, 0x1

    aput v5, v24, v29

    .line 140
    add-int/lit8 v5, v29, 0x1

    aget-wide v6, p4, v5

    float-to-double v8, v14

    add-double/2addr v6, v8

    aput-wide v6, p4, v5

    .line 132
    :cond_3
    add-int/lit8 v29, v29, 0x1

    goto :goto_2

    .line 135
    .end local v14           #a:F
    :cond_4
    div-float v14, v27, v26

    goto :goto_3

    .line 131
    .end local v26           #r:F
    .end local v27           #ra:F
    :cond_5
    add-int/lit8 v20, v20, 0x1

    add-int v22, v22, v15

    goto :goto_1

    .line 145
    .end local v29           #z:I
    :cond_6
    const/4 v5, 0x0

    const-wide/high16 v6, 0x3ff0

    aput-wide v6, p4, v5

    .line 146
    const/16 v29, 0x0

    .restart local v29       #z:I
    :goto_4
    move-object/from16 v0, p4

    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    move/from16 v0, v29

    if-ge v0, v5, :cond_8

    .line 147
    add-int/lit8 v7, v29, 0x1

    aget v5, v24, v29

    if-nez v5, :cond_7

    const-wide/16 v5, 0x0

    :goto_5
    aput-wide v5, p4, v7

    .line 146
    add-int/lit8 v29, v29, 0x1

    goto :goto_4

    .line 147
    :cond_7
    add-int/lit8 v5, v29, 0x1

    aget-wide v5, p4, v5

    aget v8, v24, v29

    int-to-double v8, v8

    div-double/2addr v5, v8

    goto :goto_5

    .line 152
    :cond_8
    const/4 v5, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v5

    const/4 v7, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v7

    const/4 v9, 0x2

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v9

    const-wide/16 v11, 0x0

    invoke-static/range {v5 .. v12}, Lcom/googlecode/javacv/cpp/opencv_core;->cvScalar(DDDD)Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v4, v6}, Lcom/googlecode/javacv/cpp/opencv_core;->cvAddS(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 153
    const-wide/high16 v5, 0x3ff0

    move-object/from16 v0, p2

    move-object/from16 v1, p2

    invoke-static {v0, v4, v1, v5, v6}, Lcom/googlecode/javacv/cpp/opencv_core;->cvDiv(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;D)V

    .line 155
    invoke-static {v3, v3}, Lcom/googlecode/javacv/cpp/opencv_core;->cvNot(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 158
    const/4 v5, 0x0

    const/16 v6, 0xf

    invoke-static {v3, v3, v5, v6}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvErode(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernel;I)V

    .line 159
    sget-object v5, Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;->ZERO:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    move-object/from16 v0, p2

    invoke-static {v0, v5, v3}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSet(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 161
    return-object p2

    .line 104
    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xf0t 0x3ft
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xf0t 0x3ft
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xf0t 0x3ft
    .end array-data
.end method
