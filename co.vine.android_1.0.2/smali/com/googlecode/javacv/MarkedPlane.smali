.class public Lcom/googlecode/javacv/MarkedPlane;
.super Ljava/lang/Object;
.source "MarkedPlane.java"


# static fields
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
.field private backgroundColor:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

.field private foregroundColor:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

.field private localDstPts:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/googlecode/javacv/cpp/opencv_core$CvMat;",
            ">;"
        }
    .end annotation
.end field

.field private localSrcPts:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/googlecode/javacv/cpp/opencv_core$CvMat;",
            ">;"
        }
    .end annotation
.end field

.field private markers:[Lcom/googlecode/javacv/Marker;

.field private planeImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

.field private prewarp:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field private superPlaneImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x3

    .line 170
    invoke-static {v0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->createThreadLocal(II)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacv/MarkedPlane;->tempWarp3x3:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(II[Lcom/googlecode/javacv/Marker;D)V
    .locals 9
    .parameter "width"
    .parameter "height"
    .parameter "planeMarkers"
    .parameter "superScale"

    .prologue
    .line 34
    const/4 v4, 0x0

    sget-object v5, Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;->BLACK:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    sget-object v6, Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;->WHITE:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/googlecode/javacv/MarkedPlane;-><init>(II[Lcom/googlecode/javacv/Marker;ZLcom/googlecode/javacv/cpp/opencv_core$CvScalar;Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;D)V

    .line 35
    return-void
.end method

.method public constructor <init>(II[Lcom/googlecode/javacv/Marker;ZLcom/googlecode/javacv/cpp/opencv_core$CvScalar;Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;D)V
    .locals 28
    .parameter "width"
    .parameter "height"
    .parameter "markers"
    .parameter "initPrewarp"
    .parameter "foregroundColor"
    .parameter "backgroundColor"
    .parameter "superScale"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/MarkedPlane;->markers:[Lcom/googlecode/javacv/Marker;

    .line 102
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/MarkedPlane;->planeImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/MarkedPlane;->superPlaneImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 38
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/MarkedPlane;->markers:[Lcom/googlecode/javacv/Marker;

    .line 39
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/MarkedPlane;->foregroundColor:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    .line 40
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/MarkedPlane;->backgroundColor:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    .line 45
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/MarkedPlane;->prewarp:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 49
    if-eqz p4, :cond_1

    .line 50
    const/16 v23, 0x3

    const/16 v24, 0x3

    invoke-static/range {v23 .. v24}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/MarkedPlane;->prewarp:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 51
    const-wide v17, 0x7fefffffffffffffL

    .local v17, minx:D
    const-wide v19, 0x7fefffffffffffffL

    .line 52
    .local v19, miny:D
    const-wide/16 v13, 0x1

    .local v13, maxx:D
    const-wide/16 v15, 0x1

    .line 53
    .local v15, maxy:D
    move-object/from16 v4, p3

    .local v4, arr$:[Lcom/googlecode/javacv/Marker;
    array-length v11, v4

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_0
    if-ge v10, v11, :cond_0

    aget-object v12, v4, v10

    .line 54
    .local v12, m:Lcom/googlecode/javacv/Marker;
    iget-object v7, v12, Lcom/googlecode/javacv/Marker;->corners:[D

    .line 55
    .local v7, c:[D
    const/16 v23, 0x0

    aget-wide v23, v7, v23

    move-wide/from16 v0, v17

    move-wide/from16 v2, v23

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v23

    const/16 v25, 0x2

    aget-wide v25, v7, v25

    invoke-static/range {v23 .. v26}, Ljava/lang/Math;->min(DD)D

    move-result-wide v23

    const/16 v25, 0x4

    aget-wide v25, v7, v25

    invoke-static/range {v23 .. v26}, Ljava/lang/Math;->min(DD)D

    move-result-wide v23

    const/16 v25, 0x6

    aget-wide v25, v7, v25

    invoke-static/range {v23 .. v26}, Ljava/lang/Math;->min(DD)D

    move-result-wide v17

    .line 56
    const/16 v23, 0x1

    aget-wide v23, v7, v23

    move-wide/from16 v0, v19

    move-wide/from16 v2, v23

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v23

    const/16 v25, 0x3

    aget-wide v25, v7, v25

    invoke-static/range {v23 .. v26}, Ljava/lang/Math;->min(DD)D

    move-result-wide v23

    const/16 v25, 0x5

    aget-wide v25, v7, v25

    invoke-static/range {v23 .. v26}, Ljava/lang/Math;->min(DD)D

    move-result-wide v23

    const/16 v25, 0x7

    aget-wide v25, v7, v25

    invoke-static/range {v23 .. v26}, Ljava/lang/Math;->min(DD)D

    move-result-wide v19

    .line 57
    const/16 v23, 0x0

    aget-wide v23, v7, v23

    move-wide/from16 v0, v23

    invoke-static {v13, v14, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v23

    const/16 v25, 0x2

    aget-wide v25, v7, v25

    invoke-static/range {v23 .. v26}, Ljava/lang/Math;->max(DD)D

    move-result-wide v23

    const/16 v25, 0x4

    aget-wide v25, v7, v25

    invoke-static/range {v23 .. v26}, Ljava/lang/Math;->max(DD)D

    move-result-wide v23

    const/16 v25, 0x6

    aget-wide v25, v7, v25

    invoke-static/range {v23 .. v26}, Ljava/lang/Math;->max(DD)D

    move-result-wide v13

    .line 58
    const/16 v23, 0x1

    aget-wide v23, v7, v23

    move-wide v0, v15

    move-wide/from16 v2, v23

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v23

    const/16 v25, 0x3

    aget-wide v25, v7, v25

    invoke-static/range {v23 .. v26}, Ljava/lang/Math;->max(DD)D

    move-result-wide v23

    const/16 v25, 0x5

    aget-wide v25, v7, v25

    invoke-static/range {v23 .. v26}, Ljava/lang/Math;->max(DD)D

    move-result-wide v23

    const/16 v25, 0x7

    aget-wide v25, v7, v25

    invoke-static/range {v23 .. v26}, Ljava/lang/Math;->max(DD)D

    move-result-wide v15

    .line 53
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 60
    .end local v7           #c:[D
    .end local v12           #m:Lcom/googlecode/javacv/Marker;
    :cond_0
    sub-double v23, v13, v17

    sub-double v25, v15, v19

    div-double v5, v23, v25

    .line 61
    .local v5, aspect:D
    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v23, v0

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v25, v0

    div-double v23, v23, v25

    cmpl-double v23, v5, v23

    if-lez v23, :cond_3

    .line 62
    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v23, v0

    div-double v8, v23, v5

    .line 67
    .local v8, h:D
    const/16 v23, 0x8

    move/from16 v0, v23

    new-array v0, v0, [D

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-wide v17, v23, v24

    const/16 v24, 0x1

    aput-wide v19, v23, v24

    const/16 v24, 0x2

    aput-wide v13, v23, v24

    const/16 v24, 0x3

    aput-wide v19, v23, v24

    const/16 v24, 0x4

    aput-wide v13, v23, v24

    const/16 v24, 0x5

    aput-wide v15, v23, v24

    const/16 v24, 0x6

    aput-wide v17, v23, v24

    const/16 v24, 0x7

    aput-wide v15, v23, v24

    const/16 v24, 0x8

    move/from16 v0, v24

    new-array v0, v0, [D

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    aput-wide v26, v24, v25

    const/16 v25, 0x1

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v26, v0

    sub-double v26, v26, v8

    aput-wide v26, v24, v25

    const/16 v25, 0x2

    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v26, v0

    aput-wide v26, v24, v25

    const/16 v25, 0x3

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v26, v0

    sub-double v26, v26, v8

    aput-wide v26, v24, v25

    const/16 v25, 0x4

    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v26, v0

    aput-wide v26, v24, v25

    const/16 v25, 0x5

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v26, v0

    aput-wide v26, v24, v25

    const/16 v25, 0x6

    const-wide/16 v26, 0x0

    aput-wide v26, v24, v25

    const/16 v25, 0x7

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v26, v0

    aput-wide v26, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/MarkedPlane;->prewarp:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v25, v0

    invoke-static/range {v23 .. v25}, Lcom/googlecode/javacv/JavaCV;->getPerspectiveTransform([D[DLcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 82
    .end local v4           #arr$:[Lcom/googlecode/javacv/Marker;
    .end local v5           #aspect:D
    .end local v8           #h:D
    .end local v10           #i$:I
    .end local v11           #len$:I
    .end local v13           #maxx:D
    .end local v15           #maxy:D
    .end local v17           #minx:D
    .end local v19           #miny:D
    :cond_1
    :goto_1
    if-lez p1, :cond_2

    if-lez p2, :cond_2

    .line 83
    const/16 v23, 0x8

    const/16 v24, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/MarkedPlane;->planeImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 84
    const-wide/high16 v23, 0x3ff0

    cmpl-double v23, p7, v23

    if-nez v23, :cond_4

    .line 85
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/MarkedPlane;->superPlaneImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 90
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/MarkedPlane;->prewarp:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/MarkedPlane;->setPrewarp(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V

    .line 93
    :cond_2
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v23, v0

    mul-int/lit8 v23, v23, 0x4

    const/16 v24, 0x2

    invoke-static/range {v23 .. v24}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->createThreadLocal(II)Ljava/lang/ThreadLocal;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/MarkedPlane;->localSrcPts:Ljava/lang/ThreadLocal;

    .line 94
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v23, v0

    mul-int/lit8 v23, v23, 0x4

    const/16 v24, 0x2

    invoke-static/range {v23 .. v24}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->createThreadLocal(II)Ljava/lang/ThreadLocal;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/MarkedPlane;->localDstPts:Ljava/lang/ThreadLocal;

    .line 95
    return-void

    .line 71
    .restart local v4       #arr$:[Lcom/googlecode/javacv/Marker;
    .restart local v5       #aspect:D
    .restart local v10       #i$:I
    .restart local v11       #len$:I
    .restart local v13       #maxx:D
    .restart local v15       #maxy:D
    .restart local v17       #minx:D
    .restart local v19       #miny:D
    :cond_3
    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v23, v0

    mul-double v21, v23, v5

    .line 76
    .local v21, w:D
    const/16 v23, 0x8

    move/from16 v0, v23

    new-array v0, v0, [D

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-wide v17, v23, v24

    const/16 v24, 0x1

    aput-wide v19, v23, v24

    const/16 v24, 0x2

    aput-wide v13, v23, v24

    const/16 v24, 0x3

    aput-wide v19, v23, v24

    const/16 v24, 0x4

    aput-wide v13, v23, v24

    const/16 v24, 0x5

    aput-wide v15, v23, v24

    const/16 v24, 0x6

    aput-wide v17, v23, v24

    const/16 v24, 0x7

    aput-wide v15, v23, v24

    const/16 v24, 0x8

    move/from16 v0, v24

    new-array v0, v0, [D

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    aput-wide v26, v24, v25

    const/16 v25, 0x1

    const-wide/16 v26, 0x0

    aput-wide v26, v24, v25

    const/16 v25, 0x2

    aput-wide v21, v24, v25

    const/16 v25, 0x3

    const-wide/16 v26, 0x0

    aput-wide v26, v24, v25

    const/16 v25, 0x4

    aput-wide v21, v24, v25

    const/16 v25, 0x5

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v26, v0

    aput-wide v26, v24, v25

    const/16 v25, 0x6

    const-wide/16 v26, 0x0

    aput-wide v26, v24, v25

    const/16 v25, 0x7

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v26, v0

    aput-wide v26, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/MarkedPlane;->prewarp:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v25, v0

    invoke-static/range {v23 .. v25}, Lcom/googlecode/javacv/JavaCV;->getPerspectiveTransform([D[DLcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    goto/16 :goto_1

    .line 87
    .end local v4           #arr$:[Lcom/googlecode/javacv/Marker;
    .end local v5           #aspect:D
    .end local v10           #i$:I
    .end local v11           #len$:I
    .end local v13           #maxx:D
    .end local v15           #maxy:D
    .end local v17           #minx:D
    .end local v19           #miny:D
    .end local v21           #w:D
    :cond_4
    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v23, v0

    mul-double v23, v23, p7

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v23

    move-wide/from16 v0, v23

    double-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v24, v24, p7

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    const/16 v25, 0x8

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/MarkedPlane;->superPlaneImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    goto/16 :goto_2
.end method


# virtual methods
.method public getBackgroundColor()Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/googlecode/javacv/MarkedPlane;->backgroundColor:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    return-object v0
.end method

.method public getForegroundColor()Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/googlecode/javacv/MarkedPlane;->foregroundColor:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/googlecode/javacv/MarkedPlane;->planeImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v0

    return v0
.end method

.method public getImage()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/googlecode/javacv/MarkedPlane;->planeImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    return-object v0
.end method

.method public getMarkers()[Lcom/googlecode/javacv/Marker;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/googlecode/javacv/MarkedPlane;->markers:[Lcom/googlecode/javacv/Marker;

    return-object v0
.end method

.method public getPrewarp()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/googlecode/javacv/MarkedPlane;->prewarp:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    return-object v0
.end method

.method public getTotalWarp([Lcom/googlecode/javacv/Marker;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)D
    .locals 2
    .parameter "imagedMarkers"
    .parameter "totalWarp"

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/googlecode/javacv/MarkedPlane;->getTotalWarp([Lcom/googlecode/javacv/Marker;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Z)D

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalWarp([Lcom/googlecode/javacv/Marker;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Z)D
    .locals 27
    .parameter "imagedMarkers"
    .parameter "totalWarp"
    .parameter "useCenters"

    .prologue
    .line 172
    const-wide/high16 v19, 0x7ff0

    .line 173
    .local v19, rmse:D
    if-eqz p3, :cond_1

    const/16 v18, 0x1

    .line 175
    .local v18, pointsPerMarker:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/MarkedPlane;->localSrcPts:Ljava/lang/ThreadLocal;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .local v21, srcPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/MarkedPlane;->markers:[Lcom/googlecode/javacv/Marker;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    mul-int v23, v23, v18

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->rows(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/MarkedPlane;->localDstPts:Ljava/lang/ThreadLocal;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .local v5, dstPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/MarkedPlane;->markers:[Lcom/googlecode/javacv/Marker;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    mul-int v23, v23, v18

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->rows(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 178
    const/16 v17, 0x0

    .line 179
    .local v17, numPoints:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/MarkedPlane;->markers:[Lcom/googlecode/javacv/Marker;

    .local v3, arr$:[Lcom/googlecode/javacv/Marker;
    array-length v13, v3

    .local v13, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    move v12, v11

    .end local v3           #arr$:[Lcom/googlecode/javacv/Marker;
    .end local v11           #i$:I
    .end local v13           #len$:I
    .local v12, i$:I
    :goto_1
    if-ge v12, v13, :cond_4

    aget-object v15, v3, v12

    .line 180
    .local v15, m1:Lcom/googlecode/javacv/Marker;
    move-object/from16 v4, p1

    .local v4, arr$:[Lcom/googlecode/javacv/Marker;
    array-length v14, v4

    .local v14, len$:I
    const/4 v11, 0x0

    .end local v12           #i$:I
    .restart local v11       #i$:I
    :goto_2
    if-ge v11, v14, :cond_0

    aget-object v16, v4, v11

    .line 181
    .local v16, m2:Lcom/googlecode/javacv/Marker;
    iget v0, v15, Lcom/googlecode/javacv/Marker;->id:I

    move/from16 v23, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/googlecode/javacv/Marker;->id:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    .line 182
    if-eqz p3, :cond_2

    .line 183
    mul-int/lit8 v23, v17, 0x2

    invoke-virtual {v15}, Lcom/googlecode/javacv/Marker;->getCenter()[D

    move-result-object v24

    move-object/from16 v0, v21

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(I[D)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 184
    mul-int/lit8 v23, v17, 0x2

    invoke-virtual/range {v16 .. v16}, Lcom/googlecode/javacv/Marker;->getCenter()[D

    move-result-object v24

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(I[D)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 189
    :goto_3
    add-int v17, v17, v18

    .line 179
    .end local v16           #m2:Lcom/googlecode/javacv/Marker;
    :cond_0
    add-int/lit8 v11, v12, 0x1

    move v12, v11

    .end local v11           #i$:I
    .restart local v12       #i$:I
    goto :goto_1

    .line 173
    .end local v4           #arr$:[Lcom/googlecode/javacv/Marker;
    .end local v5           #dstPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .end local v12           #i$:I
    .end local v14           #len$:I
    .end local v15           #m1:Lcom/googlecode/javacv/Marker;
    .end local v17           #numPoints:I
    .end local v18           #pointsPerMarker:I
    .end local v21           #srcPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    :cond_1
    const/16 v18, 0x4

    goto/16 :goto_0

    .line 186
    .restart local v4       #arr$:[Lcom/googlecode/javacv/Marker;
    .restart local v5       #dstPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .restart local v11       #i$:I
    .restart local v14       #len$:I
    .restart local v15       #m1:Lcom/googlecode/javacv/Marker;
    .restart local v16       #m2:Lcom/googlecode/javacv/Marker;
    .restart local v17       #numPoints:I
    .restart local v18       #pointsPerMarker:I
    .restart local v21       #srcPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    :cond_2
    mul-int/lit8 v23, v17, 0x2

    iget-object v0, v15, Lcom/googlecode/javacv/Marker;->corners:[D

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(I[D)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 187
    mul-int/lit8 v23, v17, 0x2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/googlecode/javacv/Marker;->corners:[D

    move-object/from16 v24, v0

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(I[D)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    goto :goto_3

    .line 180
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 195
    .end local v4           #arr$:[Lcom/googlecode/javacv/Marker;
    .end local v11           #i$:I
    .end local v14           #len$:I
    .end local v15           #m1:Lcom/googlecode/javacv/Marker;
    .end local v16           #m2:Lcom/googlecode/javacv/Marker;
    .restart local v12       #i$:I
    :cond_4
    const/16 v23, 0x4

    move/from16 v0, v17

    move/from16 v1, v23

    if-gt v0, v1, :cond_5

    invoke-virtual/range {v21 .. v21}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->rows()I

    move-result v23

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    const/16 v23, 0x4

    move/from16 v0, v17

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    .line 197
    :cond_5
    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->rows(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->rows(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 198
    const/16 v23, 0x4

    move/from16 v0, v17

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    .line 199
    invoke-virtual/range {v21 .. v21}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get()[D

    move-result-object v23

    invoke-virtual {v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get()[D

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/googlecode/javacv/JavaCV;->getPerspectiveTransform([D[DLcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 205
    :goto_4
    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->cols(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/16 v23, 0x6

    const/16 v24, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->type(II)V

    .line 206
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->cols(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/16 v23, 0x6

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->type(II)V

    .line 207
    move-object/from16 v0, v21

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvPerspectiveTransform(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V

    .line 208
    const/16 v23, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->cols(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/16 v23, 0x6

    const/16 v24, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->type(II)V

    .line 209
    const/16 v23, 0x2

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->cols(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/16 v23, 0x6

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->type(II)V

    .line 211
    const-wide/16 v19, 0x0

    .line 212
    const/4 v10, 0x0

    .local v10, i:I
    :goto_5
    move/from16 v0, v17

    if-ge v10, v0, :cond_7

    .line 213
    mul-int/lit8 v23, v10, 0x2

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v23

    mul-int/lit8 v25, v10, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v25

    sub-double v6, v23, v25

    .line 214
    .local v6, dx:D
    mul-int/lit8 v23, v10, 0x2

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v23

    mul-int/lit8 v25, v10, 0x2

    add-int/lit8 v25, v25, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v25

    sub-double v8, v23, v25

    .line 215
    .local v8, dy:D
    mul-double v23, v6, v6

    mul-double v25, v8, v8

    add-double v23, v23, v25

    add-double v19, v19, v23

    .line 212
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 201
    .end local v6           #dx:D
    .end local v8           #dy:D
    .end local v10           #i:I
    :cond_6
    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-static {v0, v5, v1}, Lcom/googlecode/javacv/cpp/opencv_calib3d;->cvFindHomography(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)I

    goto/16 :goto_4

    .line 217
    .restart local v10       #i:I
    :cond_7
    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v23, v0

    div-double v23, v19, v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v19

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/MarkedPlane;->prewarp:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v23, v0

    if-eqz v23, :cond_8

    .line 222
    sget-object v23, Lcom/googlecode/javacv/MarkedPlane;->tempWarp3x3:Ljava/lang/ThreadLocal;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 223
    .local v22, tempWarp:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/MarkedPlane;->prewarp:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core;->cvInvert(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)D

    .line 224
    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvMatMul(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 228
    .end local v10           #i:I
    .end local v22           #tempWarp:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    :cond_8
    return-wide v19
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/googlecode/javacv/MarkedPlane;->planeImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v0

    return v0
.end method

.method public setBackgroundColor(Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;)V
    .locals 1
    .parameter "backgroundColor"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/googlecode/javacv/MarkedPlane;->backgroundColor:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    .line 120
    iget-object v0, p0, Lcom/googlecode/javacv/MarkedPlane;->prewarp:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/MarkedPlane;->setPrewarp(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V

    .line 121
    return-void
.end method

.method public setColors(Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;)V
    .locals 1
    .parameter "foregroundColor"
    .parameter "backgroundColor"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/googlecode/javacv/MarkedPlane;->foregroundColor:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    .line 128
    iput-object p2, p0, Lcom/googlecode/javacv/MarkedPlane;->backgroundColor:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    .line 129
    iget-object v0, p0, Lcom/googlecode/javacv/MarkedPlane;->prewarp:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/MarkedPlane;->setPrewarp(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V

    .line 130
    return-void
.end method

.method public setForegroundColor(Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;)V
    .locals 1
    .parameter "foregroundColor"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/googlecode/javacv/MarkedPlane;->foregroundColor:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    .line 112
    iget-object v0, p0, Lcom/googlecode/javacv/MarkedPlane;->prewarp:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/MarkedPlane;->setPrewarp(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V

    .line 113
    return-void
.end method

.method public setPrewarp(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V
    .locals 9
    .parameter "prewarp"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/googlecode/javacv/MarkedPlane;->prewarp:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 137
    iget-object v0, p0, Lcom/googlecode/javacv/MarkedPlane;->superPlaneImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/googlecode/javacv/MarkedPlane;->planeImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget-object v1, p0, Lcom/googlecode/javacv/MarkedPlane;->backgroundColor:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    invoke-static {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSet(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;)V

    .line 142
    :goto_0
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    iget-object v0, p0, Lcom/googlecode/javacv/MarkedPlane;->markers:[Lcom/googlecode/javacv/Marker;

    array-length v0, v0

    if-ge v6, v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/googlecode/javacv/MarkedPlane;->superPlaneImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    if-nez v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/googlecode/javacv/MarkedPlane;->markers:[Lcom/googlecode/javacv/Marker;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/googlecode/javacv/MarkedPlane;->planeImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget-object v2, p0, Lcom/googlecode/javacv/MarkedPlane;->foregroundColor:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    const-wide/high16 v3, 0x3ff0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/googlecode/javacv/Marker;->draw(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;DLcom/googlecode/javacv/cpp/opencv_core$CvMat;)V

    .line 142
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 140
    .end local v6           #i:I
    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/MarkedPlane;->superPlaneImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget-object v1, p0, Lcom/googlecode/javacv/MarkedPlane;->backgroundColor:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    invoke-static {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSet(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;)V

    goto :goto_0

    .line 146
    .restart local v6       #i:I
    :cond_1
    iget-object v0, p0, Lcom/googlecode/javacv/MarkedPlane;->markers:[Lcom/googlecode/javacv/Marker;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/googlecode/javacv/MarkedPlane;->superPlaneImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget-object v2, p0, Lcom/googlecode/javacv/MarkedPlane;->foregroundColor:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    iget-object v3, p0, Lcom/googlecode/javacv/MarkedPlane;->superPlaneImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v3}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v3

    int-to-double v3, v3

    iget-object v5, p0, Lcom/googlecode/javacv/MarkedPlane;->planeImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v5}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v5

    int-to-double v7, v5

    div-double/2addr v3, v7

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/googlecode/javacv/Marker;->draw(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;DLcom/googlecode/javacv/cpp/opencv_core$CvMat;)V

    goto :goto_2

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/googlecode/javacv/MarkedPlane;->superPlaneImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    if-eqz v0, :cond_3

    .line 151
    iget-object v0, p0, Lcom/googlecode/javacv/MarkedPlane;->superPlaneImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget-object v1, p0, Lcom/googlecode/javacv/MarkedPlane;->planeImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvResize(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V

    .line 154
    :cond_3
    return-void
.end method
