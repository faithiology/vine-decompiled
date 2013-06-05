.class public Lcom/googlecode/javacv/GeometricCalibrator;
.super Ljava/lang/Object;
.source "GeometricCalibrator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/GeometricCalibrator$Settings;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private allImageMarkers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<[",
            "Lcom/googlecode/javacv/Marker;",
            ">;"
        }
    .end annotation
.end field

.field private allObjectMarkers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<[",
            "Lcom/googlecode/javacv/Marker;",
            ">;"
        }
    .end annotation
.end field

.field private lastDetectedMarkers:[Lcom/googlecode/javacv/Marker;

.field private lastWarp:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field private markedPlane:Lcom/googlecode/javacv/MarkedPlane;

.field markerDetector:Lcom/googlecode/javacv/MarkerDetector;

.field private prevWarp:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field private projectiveDevice:Lcom/googlecode/javacv/ProjectiveDevice;

.field private settings:Lcom/googlecode/javacv/GeometricCalibrator$Settings;

.field private tempImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

.field private tempPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field private warp:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field private warpDstPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field private warpSrcPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/googlecode/javacv/GeometricCalibrator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/googlecode/javacv/GeometricCalibrator;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/googlecode/javacv/GeometricCalibrator$Settings;Lcom/googlecode/javacv/MarkerDetector$Settings;Lcom/googlecode/javacv/MarkedPlane;Lcom/googlecode/javacv/ProjectiveDevice;)V
    .locals 11
    .parameter "settings"
    .parameter "detectorSettings"
    .parameter "markedPlane"
    .parameter "projectiveDevice"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v5, 0x1

    const-wide/16 v7, 0x0

    const/4 v6, 0x3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/googlecode/javacv/GeometricCalibrator;->allObjectMarkers:Ljava/util/LinkedList;

    .line 89
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/googlecode/javacv/GeometricCalibrator;->allImageMarkers:Ljava/util/LinkedList;

    .line 90
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/googlecode/javacv/GeometricCalibrator;->tempImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 91
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/googlecode/javacv/GeometricCalibrator;->lastDetectedMarkers:[Lcom/googlecode/javacv/Marker;

    .line 92
    invoke-static {v6, v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v2

    iput-object v2, p0, Lcom/googlecode/javacv/GeometricCalibrator;->warp:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 93
    invoke-static {v6, v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v2

    iput-object v2, p0, Lcom/googlecode/javacv/GeometricCalibrator;->prevWarp:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 94
    invoke-static {v6, v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v2

    iput-object v2, p0, Lcom/googlecode/javacv/GeometricCalibrator;->lastWarp:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 95
    const/4 v2, 0x6

    invoke-static {v5, v10, v2, v9}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v2

    iput-object v2, p0, Lcom/googlecode/javacv/GeometricCalibrator;->warpSrcPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 96
    const/4 v2, 0x6

    invoke-static {v5, v10, v2, v9}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v2

    iput-object v2, p0, Lcom/googlecode/javacv/GeometricCalibrator;->warpDstPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 97
    const/4 v2, 0x6

    invoke-static {v5, v10, v2, v9}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v2

    iput-object v2, p0, Lcom/googlecode/javacv/GeometricCalibrator;->tempPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 41
    iput-object p1, p0, Lcom/googlecode/javacv/GeometricCalibrator;->settings:Lcom/googlecode/javacv/GeometricCalibrator$Settings;

    .line 42
    new-instance v2, Lcom/googlecode/javacv/MarkerDetector;

    invoke-direct {v2, p2}, Lcom/googlecode/javacv/MarkerDetector;-><init>(Lcom/googlecode/javacv/MarkerDetector$Settings;)V

    iput-object v2, p0, Lcom/googlecode/javacv/GeometricCalibrator;->markerDetector:Lcom/googlecode/javacv/MarkerDetector;

    .line 43
    iput-object p3, p0, Lcom/googlecode/javacv/GeometricCalibrator;->markedPlane:Lcom/googlecode/javacv/MarkedPlane;

    .line 44
    iput-object p4, p0, Lcom/googlecode/javacv/GeometricCalibrator;->projectiveDevice:Lcom/googlecode/javacv/ProjectiveDevice;

    .line 46
    iget-object v2, p0, Lcom/googlecode/javacv/GeometricCalibrator;->prevWarp:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSetIdentity(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 47
    iget-object v2, p0, Lcom/googlecode/javacv/GeometricCalibrator;->lastWarp:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSetIdentity(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 49
    if-eqz p3, :cond_0

    .line 50
    invoke-virtual {p3}, Lcom/googlecode/javacv/MarkedPlane;->getImage()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v1

    .line 51
    .local v1, w:I
    invoke-virtual {p3}, Lcom/googlecode/javacv/MarkedPlane;->getImage()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v0

    .line 52
    .local v0, h:I
    iget-object v2, p0, Lcom/googlecode/javacv/GeometricCalibrator;->warpSrcPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/16 v3, 0x8

    new-array v3, v3, [D

    const/4 v4, 0x0

    aput-wide v7, v3, v4

    aput-wide v7, v3, v5

    int-to-double v4, v1

    aput-wide v4, v3, v9

    aput-wide v7, v3, v6

    int-to-double v4, v1

    aput-wide v4, v3, v10

    const/4 v4, 0x5

    int-to-double v5, v0

    aput-wide v5, v3, v4

    const/4 v4, 0x6

    aput-wide v7, v3, v4

    const/4 v4, 0x7

    int-to-double v5, v0

    aput-wide v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put([D)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 54
    .end local v0           #h:I
    .end local v1           #w:I
    :cond_0
    return-void
.end method

.method public static computeReprojectionError(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)[D
    .locals 37
    .parameter "object_points"
    .parameter "image_points"
    .parameter "point_counts"
    .parameter "camera_matrix"
    .parameter "dist_coeffs"
    .parameter "rot_vects"
    .parameter "trans_vects"
    .parameter "per_view_errors"

    .prologue
    .line 266
    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->rows()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->cols()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->type()I

    move-result v35

    move/from16 v0, v35

    invoke-static {v6, v7, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(III)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v17

    .line 269
    .local v17, image_points2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    invoke-virtual/range {p5 .. p5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->rows()I

    move-result v16

    .local v16, image_count:I
    const/16 v24, 0x0

    .line 270
    .local v24, points_so_far:I
    const-wide/16 v25, 0x0

    .local v25, total_err:D
    const-wide/16 v20, 0x0

    .line 272
    .local v20, max_err:D
    new-instance v3, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-direct {v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;-><init>()V

    .line 273
    .local v3, object_points_i:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    new-instance v18, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-direct/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;-><init>()V

    .line 274
    .local v18, image_points_i:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    new-instance v8, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-direct {v8}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;-><init>()V

    .line 275
    .local v8, image_points2_i:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    invoke-virtual/range {p2 .. p2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v23

    .line 276
    .local v23, point_counts_buf:Ljava/nio/IntBuffer;
    new-instance v4, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-direct {v4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;-><init>()V

    .local v4, rot_vect:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    new-instance v5, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-direct {v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;-><init>()V

    .line 278
    .local v5, trans_vect:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_3

    .line 279
    invoke-virtual {v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->reset()V

    .line 280
    invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->reset()V

    .line 281
    invoke-virtual {v8}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->reset()V

    .line 282
    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/nio/IntBuffer;->get(I)I

    move-result v22

    .line 284
    .local v22, point_count:I
    add-int v6, v24, v22

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-static {v0, v3, v1, v6}, Lcom/googlecode/javacv/cpp/opencv_core;->cvGetCols(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 286
    add-int v6, v24, v22

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v24

    invoke-static {v0, v1, v2, v6}, Lcom/googlecode/javacv/cpp/opencv_core;->cvGetCols(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 288
    add-int v6, v24, v22

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-static {v0, v8, v1, v6}, Lcom/googlecode/javacv/cpp/opencv_core;->cvGetCols(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 290
    add-int v24, v24, v22

    .line 292
    add-int/lit8 v6, v15, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, p5

    invoke-static {v0, v4, v15, v6, v7}, Lcom/googlecode/javacv/cpp/opencv_core;->cvGetRows(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;III)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 293
    add-int/lit8 v6, v15, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, p6

    invoke-static {v0, v5, v15, v6, v7}, Lcom/googlecode/javacv/cpp/opencv_core;->cvGetRows(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;III)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    .line 295
    invoke-static/range {v3 .. v8}, Lcom/googlecode/javacv/cpp/opencv_calib3d;->cvProjectPoints2(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V

    .line 297
    move-object/from16 v0, v18

    invoke-static {v0, v8}, Lcom/googlecode/javacv/cpp/opencv_core;->cvNorm(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)D

    move-result-wide v13

    .line 298
    .local v13, err:D
    mul-double/2addr v13, v13

    .line 299
    if-eqz p7, :cond_0

    .line 300
    move/from16 v0, v22

    int-to-double v6, v0

    div-double v6, v13, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    move-object/from16 v0, p7

    invoke-virtual {v0, v15, v6, v7}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 301
    :cond_0
    add-double v25, v25, v13

    .line 303
    const/16 v19, 0x0

    .local v19, j:I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    .line 304
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v6, v1, v7}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(III)D

    move-result-wide v27

    .line 305
    .local v27, x1:D
    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v6, v1, v7}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(III)D

    move-result-wide v31

    .line 306
    .local v31, y1:D
    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v0, v19

    invoke-virtual {v8, v6, v0, v7}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(III)D

    move-result-wide v29

    .line 307
    .local v29, x2:D
    const/4 v6, 0x0

    const/4 v7, 0x1

    move/from16 v0, v19

    invoke-virtual {v8, v6, v0, v7}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(III)D

    move-result-wide v33

    .line 308
    .local v33, y2:D
    sub-double v9, v27, v29

    .line 309
    .local v9, dx:D
    sub-double v11, v31, v33

    .line 310
    .local v11, dy:D
    mul-double v6, v9, v9

    mul-double v35, v11, v11

    add-double v6, v6, v35

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    .line 311
    cmpl-double v6, v13, v20

    if-lez v6, :cond_1

    .line 312
    move-wide/from16 v20, v13

    .line 303
    :cond_1
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 278
    .end local v9           #dx:D
    .end local v11           #dy:D
    .end local v27           #x1:D
    .end local v29           #x2:D
    .end local v31           #y1:D
    .end local v33           #y2:D
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 317
    .end local v13           #err:D
    .end local v19           #j:I
    .end local v22           #point_count:I
    :cond_3
    const/4 v6, 0x2

    new-array v6, v6, [D

    const/4 v7, 0x0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v35, v0

    div-double v35, v25, v35

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v35

    aput-wide v35, v6, v7

    const/4 v7, 0x1

    aput-wide v20, v6, v7

    return-object v6
.end method

.method public static computeStereoError(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)[D
    .locals 24
    .parameter "imagePoints1"
    .parameter "imagePoints2"
    .parameter "M1"
    .parameter "D1"
    .parameter "M2"
    .parameter "D2"
    .parameter "F"

    .prologue
    .line 379
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->cols()I

    move-result v10

    .line 380
    .local v10, N:I
    const/4 v2, 0x1

    const/4 v3, 0x5

    const/4 v4, 0x3

    invoke-static {v2, v10, v3, v4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v8

    .line 381
    .local v8, L1:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    const/4 v2, 0x1

    const/4 v3, 0x5

    const/4 v4, 0x3

    invoke-static {v2, v10, v3, v4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v9

    .line 383
    .local v9, L2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    const/4 v6, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p2

    invoke-static/range {v2 .. v7}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvUndistortPoints(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V

    .line 384
    const/4 v6, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p4

    invoke-static/range {v2 .. v7}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvUndistortPoints(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V

    .line 387
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-static {v0, v2, v1, v8}, Lcom/googlecode/javacv/cpp/opencv_calib3d;->cvComputeCorrespondEpilines(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;ILcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V

    .line 388
    const/4 v2, 0x2

    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-static {v0, v2, v1, v9}, Lcom/googlecode/javacv/cpp/opencv_calib3d;->cvComputeCorrespondEpilines(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;ILcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V

    .line 389
    const-wide/16 v11, 0x0

    .local v11, avgErr:D
    const-wide/16 v20, 0x0

    .line 390
    .local v20, maxErr:D
    move-object/from16 v22, p0

    .local v22, p1:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    move-object/from16 v23, p1

    .line 391
    .local v23, p2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    const/16 v19, 0x0

    .local v19, i:I
    :goto_0
    move/from16 v0, v19

    if-ge v0, v10, :cond_1

    .line 392
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v2, v1, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(III)D

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v4, v0, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(III)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v4, v1, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(III)D

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    move/from16 v0, v19

    invoke-virtual {v9, v6, v0, v7}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(III)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x2

    move/from16 v0, v19

    invoke-virtual {v9, v4, v0, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(III)D

    move-result-wide v4

    add-double v13, v2, v4

    .line 394
    .local v13, e1:D
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v2, v1, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(III)D

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v0, v19

    invoke-virtual {v8, v4, v0, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(III)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v4, v1, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(III)D

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    move/from16 v0, v19

    invoke-virtual {v8, v6, v0, v7}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(III)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x2

    move/from16 v0, v19

    invoke-virtual {v8, v4, v0, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(III)D

    move-result-wide v4

    add-double v15, v2, v4

    .line 396
    .local v15, e2:D
    mul-double v2, v13, v13

    mul-double v4, v15, v15

    add-double v17, v2, v4

    .line 397
    .local v17, err:D
    add-double v11, v11, v17

    .line 399
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v17

    .line 400
    cmpl-double v2, v17, v20

    if-lez v2, :cond_0

    .line 401
    move-wide/from16 v20, v17

    .line 391
    :cond_0
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 404
    .end local v13           #e1:D
    .end local v15           #e2:D
    .end local v17           #err:D
    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [D

    const/4 v3, 0x0

    int-to-double v4, v10

    div-double v4, v11, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    aput-wide v4, v2, v3

    const/4 v3, 0x1

    aput-wide v20, v2, v3

    return-object v2
.end method

.method private getPoints(Z)[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .locals 24
    .parameter "useCenters"

    .prologue
    .line 213
    sget-boolean v20, Lcom/googlecode/javacv/GeometricCalibrator;->$assertionsDisabled:Z

    if-nez v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/GeometricCalibrator;->allObjectMarkers:Ljava/util/LinkedList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/LinkedList;->size()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/GeometricCalibrator;->allImageMarkers:Ljava/util/LinkedList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/LinkedList;->size()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    new-instance v20, Ljava/lang/AssertionError;

    invoke-direct/range {v20 .. v20}, Ljava/lang/AssertionError;-><init>()V

    throw v20

    .line 214
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/GeometricCalibrator;->allObjectMarkers:Ljava/util/LinkedList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 215
    .local v6, i1:Ljava/util/Iterator;,"Ljava/util/Iterator<[Lcom/googlecode/javacv/Marker;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/GeometricCalibrator;->allImageMarkers:Ljava/util/LinkedList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 216
    .local v7, i2:Ljava/util/Iterator;,"Ljava/util/Iterator<[Lcom/googlecode/javacv/Marker;>;"
    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/GeometricCalibrator;->allImageMarkers:Ljava/util/LinkedList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/LinkedList;->size()I

    move-result v21

    const/16 v22, 0x4

    const/16 v23, 0x1

    invoke-static/range {v20 .. v23}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v17

    .line 217
    .local v17, pointCounts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v18

    .line 218
    .local v18, pointCountsBuf:Ljava/nio/IntBuffer;
    const/16 v19, 0x0

    .line 219
    .local v19, totalPointCount:I
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 220
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lcom/googlecode/javacv/Marker;

    .line 221
    .local v12, m1:[Lcom/googlecode/javacv/Marker;
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Lcom/googlecode/javacv/Marker;

    .line 222
    .local v13, m2:[Lcom/googlecode/javacv/Marker;
    sget-boolean v20, Lcom/googlecode/javacv/GeometricCalibrator;->$assertionsDisabled:Z

    if-nez v20, :cond_1

    array-length v0, v12

    move/from16 v20, v0

    array-length v0, v13

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    new-instance v20, Ljava/lang/AssertionError;

    invoke-direct/range {v20 .. v20}, Ljava/lang/AssertionError;-><init>()V

    throw v20

    .line 223
    :cond_1
    array-length v0, v12

    move/from16 v21, v0

    if-eqz p1, :cond_2

    const/16 v20, 0x1

    :goto_1
    mul-int v14, v21, v20

    .line 224
    .local v14, n:I
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 225
    add-int v19, v19, v14

    .line 226
    goto :goto_0

    .line 223
    .end local v14           #n:I
    :cond_2
    const/16 v20, 0x4

    goto :goto_1

    .line 227
    .end local v12           #m1:[Lcom/googlecode/javacv/Marker;
    .end local v13           #m2:[Lcom/googlecode/javacv/Marker;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/GeometricCalibrator;->allObjectMarkers:Ljava/util/LinkedList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/GeometricCalibrator;->allImageMarkers:Ljava/util/LinkedList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 229
    const/16 v20, 0x1

    const/16 v21, 0x5

    const/16 v22, 0x3

    move/from16 v0, v20

    move/from16 v1, v19

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v15

    .line 230
    .local v15, objectPoints:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    const/16 v20, 0x1

    const/16 v21, 0x5

    const/16 v22, 0x2

    move/from16 v0, v20

    move/from16 v1, v19

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v8

    .line 231
    .local v8, imagePoints:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    invoke-virtual {v15}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v16

    .line 232
    .local v16, objectPointsBuf:Ljava/nio/FloatBuffer;
    invoke-virtual {v8}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v9

    .line 233
    .local v9, imagePointsBuf:Ljava/nio/FloatBuffer;
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 234
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lcom/googlecode/javacv/Marker;

    .line 235
    .restart local v12       #m1:[Lcom/googlecode/javacv/Marker;
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Lcom/googlecode/javacv/Marker;

    .line 236
    .restart local v13       #m2:[Lcom/googlecode/javacv/Marker;
    const/4 v10, 0x0

    .local v10, j:I
    :goto_2
    array-length v0, v12

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v10, v0, :cond_4

    .line 237
    if-eqz p1, :cond_6

    .line 238
    aget-object v20, v12, v10

    invoke-virtual/range {v20 .. v20}, Lcom/googlecode/javacv/Marker;->getCenter()[D

    move-result-object v4

    .line 239
    .local v4, c1:[D
    const/16 v20, 0x0

    aget-wide v20, v4, v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 240
    const/16 v20, 0x1

    aget-wide v20, v4, v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 241
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 243
    aget-object v20, v13, v10

    invoke-virtual/range {v20 .. v20}, Lcom/googlecode/javacv/Marker;->getCenter()[D

    move-result-object v5

    .line 244
    .local v5, c2:[D
    const/16 v20, 0x0

    aget-wide v20, v5, v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 245
    const/16 v20, 0x1

    aget-wide v20, v5, v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 236
    .end local v4           #c1:[D
    .end local v5           #c2:[D
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 247
    :cond_6
    const/4 v11, 0x0

    .local v11, k:I
    :goto_3
    const/16 v20, 0x4

    move/from16 v0, v20

    if-ge v11, v0, :cond_5

    .line 248
    aget-object v20, v12, v10

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/googlecode/javacv/Marker;->corners:[D

    move-object/from16 v20, v0

    mul-int/lit8 v21, v11, 0x2

    aget-wide v20, v20, v21

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 249
    aget-object v20, v12, v10

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/googlecode/javacv/Marker;->corners:[D

    move-object/from16 v20, v0

    mul-int/lit8 v21, v11, 0x2

    add-int/lit8 v21, v21, 0x1

    aget-wide v20, v20, v21

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 250
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 252
    aget-object v20, v13, v10

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/googlecode/javacv/Marker;->corners:[D

    move-object/from16 v20, v0

    mul-int/lit8 v21, v11, 0x2

    aget-wide v20, v20, v21

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 253
    aget-object v20, v13, v10

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/googlecode/javacv/Marker;->corners:[D

    move-object/from16 v20, v0

    mul-int/lit8 v21, v11, 0x2

    add-int/lit8 v21, v21, 0x1

    aget-wide v20, v20, v21

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 247
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 259
    .end local v10           #j:I
    .end local v11           #k:I
    .end local v12           #m1:[Lcom/googlecode/javacv/Marker;
    .end local v13           #m2:[Lcom/googlecode/javacv/Marker;
    :cond_7
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v15, v20, v21

    const/16 v21, 0x1

    aput-object v8, v20, v21

    const/16 v21, 0x2

    aput-object v17, v20, v21

    return-object v20
.end method


# virtual methods
.method public addMarkers()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/googlecode/javacv/GeometricCalibrator;->markedPlane:Lcom/googlecode/javacv/MarkedPlane;

    invoke-virtual {v0}, Lcom/googlecode/javacv/MarkedPlane;->getMarkers()[Lcom/googlecode/javacv/Marker;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/javacv/GeometricCalibrator;->lastDetectedMarkers:[Lcom/googlecode/javacv/Marker;

    invoke-virtual {p0, v0, v1}, Lcom/googlecode/javacv/GeometricCalibrator;->addMarkers([Lcom/googlecode/javacv/Marker;[Lcom/googlecode/javacv/Marker;)V

    .line 174
    return-void
.end method

.method public addMarkers([Lcom/googlecode/javacv/Marker;)V
    .locals 1
    .parameter "imageMarkers"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/googlecode/javacv/GeometricCalibrator;->markedPlane:Lcom/googlecode/javacv/MarkedPlane;

    invoke-virtual {v0}, Lcom/googlecode/javacv/MarkedPlane;->getMarkers()[Lcom/googlecode/javacv/Marker;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/googlecode/javacv/GeometricCalibrator;->addMarkers([Lcom/googlecode/javacv/Marker;[Lcom/googlecode/javacv/Marker;)V

    .line 177
    return-void
.end method

.method public addMarkers([Lcom/googlecode/javacv/Marker;[Lcom/googlecode/javacv/Marker;)V
    .locals 15
    .parameter "objectMarkers"
    .parameter "imageMarkers"

    .prologue
    .line 180
    move-object/from16 v0, p1

    array-length v13, v0

    move-object/from16 v0, p2

    array-length v14, v0

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 181
    .local v11, maxLength:I
    new-array v12, v11, [Lcom/googlecode/javacv/Marker;

    .line 182
    .local v12, om:[Lcom/googlecode/javacv/Marker;
    new-array v6, v11, [Lcom/googlecode/javacv/Marker;

    .line 183
    .local v6, im:[Lcom/googlecode/javacv/Marker;
    const/4 v3, 0x0

    .line 184
    .local v3, i:I
    move-object/from16 v1, p1

    .local v1, arr$:[Lcom/googlecode/javacv/Marker;
    array-length v7, v1

    .local v7, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    move v5, v4

    .end local v1           #arr$:[Lcom/googlecode/javacv/Marker;
    .end local v4           #i$:I
    .end local v7           #len$:I
    .local v5, i$:I
    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v9, v1, v5

    .line 185
    .local v9, m1:Lcom/googlecode/javacv/Marker;
    move-object/from16 v2, p2

    .local v2, arr$:[Lcom/googlecode/javacv/Marker;
    array-length v8, v2

    .local v8, len$:I
    const/4 v4, 0x0

    .end local v5           #i$:I
    .restart local v4       #i$:I
    :goto_1
    if-ge v4, v8, :cond_0

    aget-object v10, v2, v4

    .line 186
    .local v10, m2:Lcom/googlecode/javacv/Marker;
    iget v13, v9, Lcom/googlecode/javacv/Marker;->id:I

    iget v14, v10, Lcom/googlecode/javacv/Marker;->id:I

    if-ne v13, v14, :cond_1

    .line 187
    aput-object v9, v12, v3

    .line 188
    aput-object v10, v6, v3

    .line 189
    add-int/lit8 v3, v3, 0x1

    .line 184
    .end local v10           #m2:Lcom/googlecode/javacv/Marker;
    :cond_0
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4           #i$:I
    .restart local v5       #i$:I
    goto :goto_0

    .line 185
    .end local v5           #i$:I
    .restart local v4       #i$:I
    .restart local v10       #m2:Lcom/googlecode/javacv/Marker;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 194
    .end local v2           #arr$:[Lcom/googlecode/javacv/Marker;
    .end local v4           #i$:I
    .end local v8           #len$:I
    .end local v9           #m1:Lcom/googlecode/javacv/Marker;
    .end local v10           #m2:Lcom/googlecode/javacv/Marker;
    .restart local v5       #i$:I
    :cond_2
    if-ge v3, v11, :cond_3

    .line 195
    invoke-static {v12, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    .end local v12           #om:[Lcom/googlecode/javacv/Marker;
    check-cast v12, [Lcom/googlecode/javacv/Marker;

    .line 196
    .restart local v12       #om:[Lcom/googlecode/javacv/Marker;
    invoke-static {v6, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    .end local v6           #im:[Lcom/googlecode/javacv/Marker;
    check-cast v6, [Lcom/googlecode/javacv/Marker;

    .line 198
    .restart local v6       #im:[Lcom/googlecode/javacv/Marker;
    :cond_3
    iget-object v13, p0, Lcom/googlecode/javacv/GeometricCalibrator;->allObjectMarkers:Ljava/util/LinkedList;

    invoke-virtual {v13, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v13, p0, Lcom/googlecode/javacv/GeometricCalibrator;->allImageMarkers:Ljava/util/LinkedList;

    invoke-virtual {v13, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v13, p0, Lcom/googlecode/javacv/GeometricCalibrator;->prevWarp:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v14, p0, Lcom/googlecode/javacv/GeometricCalibrator;->lastWarp:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v13, v14}, Lcom/googlecode/javacv/cpp/opencv_core;->cvCopy(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 203
    return-void
.end method

.method public calibrate(Z)[D
    .locals 14
    .parameter "useCenters"

    .prologue
    .line 321
    iget-object v9, p0, Lcom/googlecode/javacv/GeometricCalibrator;->projectiveDevice:Lcom/googlecode/javacv/ProjectiveDevice;

    .line 322
    .local v9, d:Lcom/googlecode/javacv/ProjectiveDevice;
    invoke-virtual {v9}, Lcom/googlecode/javacv/ProjectiveDevice;->getSettings()Lcom/googlecode/javacv/ProjectiveDevice$Settings;

    move-result-object v10

    check-cast v10, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;

    .line 324
    .local v10, dsettings:Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;
    iget-object v0, v9, Lcom/googlecode/javacv/ProjectiveDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-nez v0, :cond_0

    .line 325
    const/4 v0, 0x3

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    iput-object v0, v9, Lcom/googlecode/javacv/ProjectiveDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 326
    iget-object v0, v9, Lcom/googlecode/javacv/ProjectiveDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSetZero(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 327
    iget v0, v10, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, v9, Lcom/googlecode/javacv/ProjectiveDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v1, 0x0

    iget-wide v2, v10, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->initAspectRatio:D

    invoke-virtual {v0, v1, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 329
    iget-object v0, v9, Lcom/googlecode/javacv/ProjectiveDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v1, 0x4

    const-wide/high16 v2, 0x3ff0

    invoke-virtual {v0, v1, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 332
    :cond_0
    invoke-virtual {v10}, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->isFixK3()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v12, 0x4

    .line 333
    .local v12, kn:I
    :goto_0
    invoke-virtual {v10}, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->isRationalModel()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v10}, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->isFixK4()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v10}, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->isFixK4()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v10}, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->isFixK5()Z

    move-result v0

    if-nez v0, :cond_1

    .line 335
    const/16 v12, 0x8

    .line 337
    :cond_1
    iget-object v0, v9, Lcom/googlecode/javacv/ProjectiveDevice;->distortionCoeffs:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v0, :cond_2

    iget-object v0, v9, Lcom/googlecode/javacv/ProjectiveDevice;->distortionCoeffs:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->cols()I

    move-result v0

    if-eq v0, v12, :cond_3

    .line 338
    :cond_2
    const/4 v0, 0x1

    invoke-static {v0, v12}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    iput-object v0, v9, Lcom/googlecode/javacv/ProjectiveDevice;->distortionCoeffs:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 339
    iget-object v0, v9, Lcom/googlecode/javacv/ProjectiveDevice;->distortionCoeffs:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSetZero(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 342
    :cond_3
    new-instance v6, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-direct {v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;-><init>()V

    .local v6, rotVects:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    new-instance v7, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-direct {v7}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;-><init>()V

    .line 343
    .local v7, transVects:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    iget-object v0, p0, Lcom/googlecode/javacv/GeometricCalibrator;->allImageMarkers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    iput-object v0, v9, Lcom/googlecode/javacv/ProjectiveDevice;->extrParams:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 344
    iget-object v0, v9, Lcom/googlecode/javacv/ProjectiveDevice;->extrParams:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v0, v6, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvGetCols(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 345
    iget-object v0, v9, Lcom/googlecode/javacv/ProjectiveDevice;->extrParams:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v1, 0x3

    const/4 v2, 0x6

    invoke-static {v0, v7, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvGetCols(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 347
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/GeometricCalibrator;->getPoints(Z)[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v13

    .line 348
    .local v13, points:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    const/4 v0, 0x0

    aget-object v0, v13, v0

    const/4 v1, 0x1

    aget-object v1, v13, v1

    const/4 v2, 0x2

    aget-object v2, v13, v2

    iget v3, v9, Lcom/googlecode/javacv/ProjectiveDevice;->imageWidth:I

    iget v4, v9, Lcom/googlecode/javacv/ProjectiveDevice;->imageHeight:I

    invoke-static {v3, v4}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSize(II)Lcom/googlecode/javacv/cpp/opencv_core$CvSize;

    move-result-object v3

    iget-object v4, v9, Lcom/googlecode/javacv/ProjectiveDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v5, v9, Lcom/googlecode/javacv/ProjectiveDevice;->distortionCoeffs:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget v8, v10, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    invoke-static/range {v0 .. v8}, Lcom/googlecode/javacv/cpp/opencv_calib3d;->cvCalibrateCamera2(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;I)D

    .line 353
    iget-object v0, v9, Lcom/googlecode/javacv/ProjectiveDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/googlecode/javacv/cpp/opencv_core;->cvCheckArr(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;IDD)I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v9, Lcom/googlecode/javacv/ProjectiveDevice;->distortionCoeffs:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/googlecode/javacv/cpp/opencv_core;->cvCheckArr(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;IDD)I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v9, Lcom/googlecode/javacv/ProjectiveDevice;->extrParams:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/googlecode/javacv/cpp/opencv_core;->cvCheckArr(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;IDD)I

    move-result v0

    if-eqz v0, :cond_5

    .line 357
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/googlecode/javacv/GeometricCalibrator;->allImageMarkers:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    iput-object v0, v9, Lcom/googlecode/javacv/ProjectiveDevice;->reprojErrs:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 358
    const/4 v0, 0x0

    aget-object v1, v13, v0

    const/4 v0, 0x1

    aget-object v2, v13, v0

    const/4 v0, 0x2

    aget-object v3, v13, v0

    iget-object v4, v9, Lcom/googlecode/javacv/ProjectiveDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v5, v9, Lcom/googlecode/javacv/ProjectiveDevice;->distortionCoeffs:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v8, v9, Lcom/googlecode/javacv/ProjectiveDevice;->reprojErrs:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static/range {v1 .. v8}, Lcom/googlecode/javacv/GeometricCalibrator;->computeReprojectionError(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)[D

    move-result-object v11

    .line 360
    .local v11, err:[D
    const/4 v0, 0x0

    aget-wide v0, v11, v0

    iput-wide v0, v9, Lcom/googlecode/javacv/ProjectiveDevice;->avgReprojErr:D

    .line 361
    const/4 v0, 0x1

    aget-wide v0, v11, v0

    iput-wide v0, v9, Lcom/googlecode/javacv/ProjectiveDevice;->maxReprojErr:D

    .line 368
    .end local v11           #err:[D
    :goto_1
    return-object v11

    .line 332
    .end local v6           #rotVects:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .end local v7           #transVects:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .end local v12           #kn:I
    .end local v13           #points:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    :cond_4
    const/4 v12, 0x5

    goto/16 :goto_0

    .line 365
    .restart local v6       #rotVects:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .restart local v7       #transVects:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .restart local v12       #kn:I
    .restart local v13       #points:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    :cond_5
    const/4 v0, 0x0

    iput-object v0, v9, Lcom/googlecode/javacv/ProjectiveDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 366
    const-wide/high16 v0, -0x4010

    iput-wide v0, v9, Lcom/googlecode/javacv/ProjectiveDevice;->avgReprojErr:D

    .line 367
    const-wide/high16 v0, -0x4010

    iput-wide v0, v9, Lcom/googlecode/javacv/ProjectiveDevice;->maxReprojErr:D

    .line 368
    const/4 v11, 0x0

    goto :goto_1
.end method

.method public calibrateStereo(ZLcom/googlecode/javacv/GeometricCalibrator;)[D
    .locals 52
    .parameter "useCenters"
    .parameter "peer"

    .prologue
    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/GeometricCalibrator;->projectiveDevice:Lcom/googlecode/javacv/ProjectiveDevice;

    move-object/from16 v20, v0

    .line 409
    .local v20, d:Lcom/googlecode/javacv/ProjectiveDevice;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/googlecode/javacv/GeometricCalibrator;->projectiveDevice:Lcom/googlecode/javacv/ProjectiveDevice;

    move-object/from16 v21, v0

    .line 410
    .local v21, dp:Lcom/googlecode/javacv/ProjectiveDevice;
    invoke-virtual/range {v20 .. v20}, Lcom/googlecode/javacv/ProjectiveDevice;->getSettings()Lcom/googlecode/javacv/ProjectiveDevice$Settings;

    move-result-object v23

    check-cast v23, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;

    .line 411
    .local v23, dsettings:Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;
    invoke-virtual/range {v21 .. v21}, Lcom/googlecode/javacv/ProjectiveDevice;->getSettings()Lcom/googlecode/javacv/ProjectiveDevice$Settings;

    move-result-object v22

    check-cast v22, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;

    .line 413
    .local v22, dpsettings:Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;
    invoke-direct/range {p0 .. p1}, Lcom/googlecode/javacv/GeometricCalibrator;->getPoints(Z)[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v40

    .line 414
    .local v40, points1:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    move-object/from16 v0, p2

    move/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/googlecode/javacv/GeometricCalibrator;->getPoints(Z)[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v41

    .line 418
    .local v41, points2:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    const/4 v8, 0x0

    aget-object v8, v40, v8

    invoke-virtual {v8}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v36

    .line 419
    .local v36, objPts1:Ljava/nio/FloatBuffer;
    const/4 v8, 0x1

    aget-object v8, v40, v8

    invoke-virtual {v8}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v32

    .line 420
    .local v32, imgPts1:Ljava/nio/FloatBuffer;
    const/4 v8, 0x2

    aget-object v8, v40, v8

    invoke-virtual {v8}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v30

    .line 421
    .local v30, imgCount1:Ljava/nio/IntBuffer;
    const/4 v8, 0x0

    aget-object v8, v41, v8

    invoke-virtual {v8}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v37

    .line 422
    .local v37, objPts2:Ljava/nio/FloatBuffer;
    const/4 v8, 0x1

    aget-object v8, v41, v8

    invoke-virtual {v8}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v33

    .line 423
    .local v33, imgPts2:Ljava/nio/FloatBuffer;
    const/4 v8, 0x2

    aget-object v8, v41, v8

    invoke-virtual {v8}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v31

    .line 424
    .local v31, imgCount2:Ljava/nio/IntBuffer;
    sget-boolean v8, Lcom/googlecode/javacv/GeometricCalibrator;->$assertionsDisabled:Z

    if-nez v8, :cond_0

    invoke-virtual/range {v30 .. v30}, Ljava/nio/IntBuffer;->capacity()I

    move-result v8

    invoke-virtual/range {v31 .. v31}, Ljava/nio/IntBuffer;->capacity()I

    move-result v9

    if-eq v8, v9, :cond_0

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 426
    :cond_0
    const/4 v8, 0x1

    invoke-virtual/range {v36 .. v36}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v9

    invoke-virtual/range {v37 .. v37}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v10, 0x5

    const/4 v11, 0x3

    invoke-static {v8, v9, v10, v11}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v4

    .line 427
    .local v4, objectPointsMat:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    const/4 v8, 0x1

    invoke-virtual/range {v32 .. v32}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v9

    invoke-virtual/range {v33 .. v33}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v10, 0x5

    const/4 v11, 0x2

    invoke-static {v8, v9, v10, v11}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v5

    .line 428
    .local v5, imagePoints1Mat:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    const/4 v8, 0x1

    invoke-virtual/range {v32 .. v32}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v9

    invoke-virtual/range {v33 .. v33}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v10, 0x5

    const/4 v11, 0x2

    invoke-static {v8, v9, v10, v11}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v6

    .line 429
    .local v6, imagePoints2Mat:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    const/4 v8, 0x1

    invoke-virtual/range {v30 .. v30}, Ljava/nio/IntBuffer;->capacity()I

    move-result v9

    const/4 v10, 0x4

    const/4 v11, 0x1

    invoke-static {v8, v9, v10, v11}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v7

    .line 430
    .local v7, pointCountsMat:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v38

    .line 431
    .local v38, objectPoints:Ljava/nio/FloatBuffer;
    invoke-virtual {v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v28

    .line 432
    .local v28, imagePoints1:Ljava/nio/FloatBuffer;
    invoke-virtual {v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v29

    .line 433
    .local v29, imagePoints2:Ljava/nio/FloatBuffer;
    invoke-virtual {v7}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v39

    .line 435
    .local v39, pointCounts:Ljava/nio/IntBuffer;
    const/16 v24, 0x0

    .local v24, end1:I
    const/16 v25, 0x0

    .line 436
    .local v25, end2:I
    const/16 v27, 0x0

    .local v27, i:I
    :goto_0
    invoke-virtual/range {v30 .. v30}, Ljava/nio/IntBuffer;->capacity()I

    move-result v8

    move/from16 v0, v27

    if-ge v0, v8, :cond_5

    .line 437
    move/from16 v42, v24

    .line 438
    .local v42, start1:I
    move/from16 v43, v25

    .line 439
    .local v43, start2:I
    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v8

    add-int v24, v42, v8

    .line 440
    move-object/from16 v0, v31

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v8

    add-int v25, v43, v8

    .line 442
    const/16 v19, 0x0

    .line 443
    .local v19, count:I
    move/from16 v34, v42

    .local v34, j:I
    :goto_1
    move/from16 v0, v34

    move/from16 v1, v24

    if-ge v0, v1, :cond_3

    .line 444
    mul-int/lit8 v8, v34, 0x3

    move-object/from16 v0, v36

    invoke-virtual {v0, v8}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v44

    .line 445
    .local v44, x1:F
    mul-int/lit8 v8, v34, 0x3

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v8}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v46

    .line 446
    .local v46, y1:F
    mul-int/lit8 v8, v34, 0x3

    add-int/lit8 v8, v8, 0x2

    move-object/from16 v0, v36

    invoke-virtual {v0, v8}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v48

    .line 447
    .local v48, z1:F
    move/from16 v35, v43

    .local v35, k:I
    :goto_2
    move/from16 v0, v35

    move/from16 v1, v25

    if-ge v0, v1, :cond_1

    .line 448
    mul-int/lit8 v8, v35, 0x3

    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v45

    .line 449
    .local v45, x2:F
    mul-int/lit8 v8, v35, 0x3

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v47

    .line 450
    .local v47, y2:F
    mul-int/lit8 v8, v35, 0x3

    add-int/lit8 v8, v8, 0x2

    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v49

    .line 451
    .local v49, z2:F
    cmpl-float v8, v44, v45

    if-nez v8, :cond_2

    cmpl-float v8, v46, v47

    if-nez v8, :cond_2

    cmpl-float v8, v48, v49

    if-nez v8, :cond_2

    .line 452
    move-object/from16 v0, v38

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 453
    move-object/from16 v0, v38

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 454
    move-object/from16 v0, v38

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 456
    mul-int/lit8 v8, v34, 0x2

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v8

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 457
    mul-int/lit8 v8, v34, 0x2

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v8

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 459
    mul-int/lit8 v8, v35, 0x2

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v8

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 460
    mul-int/lit8 v8, v35, 0x2

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v8

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 462
    add-int/lit8 v19, v19, 0x1

    .line 443
    .end local v45           #x2:F
    .end local v47           #y2:F
    .end local v49           #z2:F
    :cond_1
    add-int/lit8 v34, v34, 0x1

    goto/16 :goto_1

    .line 447
    .restart local v45       #x2:F
    .restart local v47       #y2:F
    .restart local v49       #z2:F
    :cond_2
    add-int/lit8 v35, v35, 0x1

    goto/16 :goto_2

    .line 467
    .end local v35           #k:I
    .end local v44           #x1:F
    .end local v45           #x2:F
    .end local v46           #y1:F
    .end local v47           #y2:F
    .end local v48           #z1:F
    .end local v49           #z2:F
    :cond_3
    if-lez v19, :cond_4

    .line 468
    move-object/from16 v0, v39

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 436
    :cond_4
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_0

    .line 471
    .end local v19           #count:I
    .end local v34           #j:I
    .end local v42           #start1:I
    .end local v43           #start2:I
    :cond_5
    invoke-virtual/range {v38 .. v38}, Ljava/nio/FloatBuffer;->position()I

    move-result v8

    div-int/lit8 v8, v8, 0x3

    invoke-virtual {v4, v8}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->cols(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 472
    invoke-virtual/range {v28 .. v28}, Ljava/nio/FloatBuffer;->position()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {v5, v8}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->cols(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 473
    invoke-virtual/range {v29 .. v29}, Ljava/nio/FloatBuffer;->position()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {v6, v8}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->cols(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 474
    invoke-virtual/range {v39 .. v39}, Ljava/nio/IntBuffer;->position()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->cols(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 478
    const/4 v8, 0x3

    const/4 v9, 0x3

    invoke-static {v8, v9}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v8

    move-object/from16 v0, v20

    iput-object v8, v0, Lcom/googlecode/javacv/ProjectiveDevice;->R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/googlecode/javacv/ProjectiveDevice;->R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/16 v9, 0x9

    new-array v9, v9, [D

    fill-array-data v9, :array_0

    invoke-virtual {v8, v9}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put([D)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 479
    const/4 v8, 0x3

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v8

    move-object/from16 v0, v20

    iput-object v8, v0, Lcom/googlecode/javacv/ProjectiveDevice;->T:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/googlecode/javacv/ProjectiveDevice;->T:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v9, 0x3

    new-array v9, v9, [D

    fill-array-data v9, :array_1

    invoke-virtual {v8, v9}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put([D)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 480
    const/4 v8, 0x3

    const/4 v9, 0x3

    invoke-static {v8, v9}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v8

    move-object/from16 v0, v20

    iput-object v8, v0, Lcom/googlecode/javacv/ProjectiveDevice;->E:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/googlecode/javacv/ProjectiveDevice;->E:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v8}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSetZero(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 481
    const/4 v8, 0x3

    const/4 v9, 0x3

    invoke-static {v8, v9}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v8

    move-object/from16 v0, v20

    iput-object v8, v0, Lcom/googlecode/javacv/ProjectiveDevice;->F:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/googlecode/javacv/ProjectiveDevice;->F:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v8}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSetZero(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 483
    const/4 v8, 0x3

    const/4 v9, 0x3

    invoke-static {v8, v9}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v8

    move-object/from16 v0, v21

    iput-object v8, v0, Lcom/googlecode/javacv/ProjectiveDevice;->R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 484
    const/4 v8, 0x3

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v8

    move-object/from16 v0, v21

    iput-object v8, v0, Lcom/googlecode/javacv/ProjectiveDevice;->T:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 485
    const/4 v8, 0x3

    const/4 v9, 0x3

    invoke-static {v8, v9}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v8

    move-object/from16 v0, v21

    iput-object v8, v0, Lcom/googlecode/javacv/ProjectiveDevice;->E:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 486
    const/4 v8, 0x3

    const/4 v9, 0x3

    invoke-static {v8, v9}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v8

    move-object/from16 v0, v21

    iput-object v8, v0, Lcom/googlecode/javacv/ProjectiveDevice;->F:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 488
    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/googlecode/javacv/ProjectiveDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, v20

    iget-object v9, v0, Lcom/googlecode/javacv/ProjectiveDevice;->distortionCoeffs:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, v21

    iget-object v10, v0, Lcom/googlecode/javacv/ProjectiveDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, v21

    iget-object v11, v0, Lcom/googlecode/javacv/ProjectiveDevice;->distortionCoeffs:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, v20

    iget v12, v0, Lcom/googlecode/javacv/ProjectiveDevice;->imageWidth:I

    move-object/from16 v0, v20

    iget v13, v0, Lcom/googlecode/javacv/ProjectiveDevice;->imageHeight:I

    invoke-static {v12, v13}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSize(II)Lcom/googlecode/javacv/cpp/opencv_core$CvSize;

    move-result-object v12

    move-object/from16 v0, v21

    iget-object v13, v0, Lcom/googlecode/javacv/ProjectiveDevice;->R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, v21

    iget-object v14, v0, Lcom/googlecode/javacv/ProjectiveDevice;->T:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, v21

    iget-object v15, v0, Lcom/googlecode/javacv/ProjectiveDevice;->E:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/googlecode/javacv/ProjectiveDevice;->F:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v16, v0

    const/16 v17, 0x3

    const/16 v18, 0x64

    const-wide v50, 0x3eb0c6f7a0b5ed8dL

    move/from16 v0, v17

    move/from16 v1, v18

    move-wide/from16 v2, v50

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core;->cvTermCriteria(IID)Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;

    move-result-object v17

    move-object/from16 v0, v22

    iget v0, v0, Lcom/googlecode/javacv/ProjectiveDevice$CalibrationSettings;->flags:I

    move/from16 v18, v0

    invoke-static/range {v4 .. v18}, Lcom/googlecode/javacv/cpp/opencv_calib3d;->cvStereoCalibrate(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;I)D

    .line 495
    const-wide/16 v8, 0x0

    move-object/from16 v0, v20

    iput-wide v8, v0, Lcom/googlecode/javacv/ProjectiveDevice;->avgEpipolarErr:D

    .line 496
    const-wide/16 v8, 0x0

    move-object/from16 v0, v20

    iput-wide v8, v0, Lcom/googlecode/javacv/ProjectiveDevice;->maxEpipolarErr:D

    .line 497
    move-object/from16 v0, v20

    iget-object v10, v0, Lcom/googlecode/javacv/ProjectiveDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, v20

    iget-object v11, v0, Lcom/googlecode/javacv/ProjectiveDevice;->distortionCoeffs:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, v21

    iget-object v12, v0, Lcom/googlecode/javacv/ProjectiveDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, v21

    iget-object v13, v0, Lcom/googlecode/javacv/ProjectiveDevice;->distortionCoeffs:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, v21

    iget-object v14, v0, Lcom/googlecode/javacv/ProjectiveDevice;->F:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object v8, v5

    move-object v9, v6

    invoke-static/range {v8 .. v14}, Lcom/googlecode/javacv/GeometricCalibrator;->computeStereoError(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)[D

    move-result-object v26

    .line 500
    .local v26, err:[D
    const/4 v8, 0x0

    aget-wide v8, v26, v8

    move-object/from16 v0, v21

    iput-wide v8, v0, Lcom/googlecode/javacv/ProjectiveDevice;->avgEpipolarErr:D

    .line 501
    const/4 v8, 0x1

    aget-wide v8, v26, v8

    move-object/from16 v0, v21

    iput-wide v8, v0, Lcom/googlecode/javacv/ProjectiveDevice;->maxEpipolarErr:D

    .line 503
    return-object v26

    .line 478
    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xf0t 0x3ft
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xf0t 0x3ft
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xf0t 0x3ft
    .end array-data

    .line 479
    :array_1
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public drawMarkers(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V
    .locals 2
    .parameter "image"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/googlecode/javacv/GeometricCalibrator;->markerDetector:Lcom/googlecode/javacv/MarkerDetector;

    iget-object v1, p0, Lcom/googlecode/javacv/GeometricCalibrator;->lastDetectedMarkers:[Lcom/googlecode/javacv/Marker;

    invoke-virtual {v0, p1, v1}, Lcom/googlecode/javacv/MarkerDetector;->draw(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;[Lcom/googlecode/javacv/Marker;)V

    .line 170
    return-void
.end method

.method public getAllImageMarkers()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<[",
            "Lcom/googlecode/javacv/Marker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/googlecode/javacv/GeometricCalibrator;->allImageMarkers:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getAllObjectMarkers()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<[",
            "Lcom/googlecode/javacv/Marker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/googlecode/javacv/GeometricCalibrator;->allObjectMarkers:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getImageCount()I
    .locals 2

    .prologue
    .line 206
    sget-boolean v0, Lcom/googlecode/javacv/GeometricCalibrator;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/googlecode/javacv/GeometricCalibrator;->allObjectMarkers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/googlecode/javacv/GeometricCalibrator;->allImageMarkers:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/GeometricCalibrator;->allObjectMarkers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public getMarkedPlane()Lcom/googlecode/javacv/MarkedPlane;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/googlecode/javacv/GeometricCalibrator;->markedPlane:Lcom/googlecode/javacv/MarkedPlane;

    return-object v0
.end method

.method public getMarkerDetector()Lcom/googlecode/javacv/MarkerDetector;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/googlecode/javacv/GeometricCalibrator;->markerDetector:Lcom/googlecode/javacv/MarkerDetector;

    return-object v0
.end method

.method public getProjectiveDevice()Lcom/googlecode/javacv/ProjectiveDevice;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/googlecode/javacv/GeometricCalibrator;->projectiveDevice:Lcom/googlecode/javacv/ProjectiveDevice;

    return-object v0
.end method

.method public processImage(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)[Lcom/googlecode/javacv/Marker;
    .locals 13
    .parameter "image"

    .prologue
    const/4 v12, 0x0

    const/16 v5, 0x8

    const/4 v0, 0x1

    .line 124
    iget-object v1, p0, Lcom/googlecode/javacv/GeometricCalibrator;->projectiveDevice:Lcom/googlecode/javacv/ProjectiveDevice;

    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v2

    iput v2, v1, Lcom/googlecode/javacv/ProjectiveDevice;->imageWidth:I

    .line 125
    iget-object v1, p0, Lcom/googlecode/javacv/GeometricCalibrator;->projectiveDevice:Lcom/googlecode/javacv/ProjectiveDevice;

    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v2

    iput v2, v1, Lcom/googlecode/javacv/ProjectiveDevice;->imageHeight:I

    .line 127
    iget-object v1, p0, Lcom/googlecode/javacv/GeometricCalibrator;->markedPlane:Lcom/googlecode/javacv/MarkedPlane;

    invoke-virtual {v1}, Lcom/googlecode/javacv/MarkedPlane;->getForegroundColor()Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;->magnitude()D

    move-result-wide v1

    iget-object v3, p0, Lcom/googlecode/javacv/GeometricCalibrator;->markedPlane:Lcom/googlecode/javacv/MarkedPlane;

    invoke-virtual {v3}, Lcom/googlecode/javacv/MarkedPlane;->getBackgroundColor()Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;->magnitude()D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-lez v1, :cond_2

    move v11, v0

    .line 129
    .local v11, whiteMarkers:Z
    :goto_0
    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v1

    if-le v1, v5, :cond_3

    .line 130
    iget-object v1, p0, Lcom/googlecode/javacv/GeometricCalibrator;->tempImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/googlecode/javacv/GeometricCalibrator;->tempImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v1

    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/googlecode/javacv/GeometricCalibrator;->tempImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v1

    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 133
    :cond_0
    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v1

    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v2

    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->origin()I

    move-result v3

    invoke-static {v1, v2, v5, v0, v3}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacv/GeometricCalibrator;->tempImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 136
    :cond_1
    iget-object v1, p0, Lcom/googlecode/javacv/GeometricCalibrator;->tempImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    const-wide/high16 v2, 0x3f70

    const-wide/16 v4, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/googlecode/javacv/cpp/opencv_core;->cvConvertScale(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;DD)V

    .line 137
    iget-object v0, p0, Lcom/googlecode/javacv/GeometricCalibrator;->markerDetector:Lcom/googlecode/javacv/MarkerDetector;

    iget-object v1, p0, Lcom/googlecode/javacv/GeometricCalibrator;->tempImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v0, v1, v11}, Lcom/googlecode/javacv/MarkerDetector;->detect(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Z)[Lcom/googlecode/javacv/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacv/GeometricCalibrator;->lastDetectedMarkers:[Lcom/googlecode/javacv/Marker;

    .line 143
    :goto_1
    iget-object v0, p0, Lcom/googlecode/javacv/GeometricCalibrator;->lastDetectedMarkers:[Lcom/googlecode/javacv/Marker;

    array-length v0, v0

    int-to-double v0, v0

    iget-object v2, p0, Lcom/googlecode/javacv/GeometricCalibrator;->markedPlane:Lcom/googlecode/javacv/MarkedPlane;

    invoke-virtual {v2}, Lcom/googlecode/javacv/MarkedPlane;->getMarkers()[Lcom/googlecode/javacv/Marker;

    move-result-object v2

    array-length v2, v2

    int-to-double v2, v2

    iget-object v4, p0, Lcom/googlecode/javacv/GeometricCalibrator;->settings:Lcom/googlecode/javacv/GeometricCalibrator$Settings;

    iget-wide v4, v4, Lcom/googlecode/javacv/GeometricCalibrator$Settings;->detectedBoardMin:D

    mul-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_4

    move-object v0, v12

    .line 164
    :goto_2
    return-object v0

    .line 127
    .end local v11           #whiteMarkers:Z
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 139
    .restart local v11       #whiteMarkers:Z
    :cond_3
    iget-object v0, p0, Lcom/googlecode/javacv/GeometricCalibrator;->markerDetector:Lcom/googlecode/javacv/MarkerDetector;

    invoke-virtual {v0, p1, v11}, Lcom/googlecode/javacv/MarkerDetector;->detect(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Z)[Lcom/googlecode/javacv/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacv/GeometricCalibrator;->lastDetectedMarkers:[Lcom/googlecode/javacv/Marker;

    goto :goto_1

    .line 148
    :cond_4
    iget-object v0, p0, Lcom/googlecode/javacv/GeometricCalibrator;->markedPlane:Lcom/googlecode/javacv/MarkedPlane;

    iget-object v1, p0, Lcom/googlecode/javacv/GeometricCalibrator;->lastDetectedMarkers:[Lcom/googlecode/javacv/Marker;

    iget-object v2, p0, Lcom/googlecode/javacv/GeometricCalibrator;->warp:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacv/MarkedPlane;->getTotalWarp([Lcom/googlecode/javacv/Marker;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)D

    .line 149
    iget-object v0, p0, Lcom/googlecode/javacv/GeometricCalibrator;->warpSrcPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v1, p0, Lcom/googlecode/javacv/GeometricCalibrator;->warpDstPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v2, p0, Lcom/googlecode/javacv/GeometricCalibrator;->warp:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v0, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvPerspectiveTransform(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V

    .line 150
    iget-object v0, p0, Lcom/googlecode/javacv/GeometricCalibrator;->warpSrcPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v1, p0, Lcom/googlecode/javacv/GeometricCalibrator;->tempPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v2, p0, Lcom/googlecode/javacv/GeometricCalibrator;->prevWarp:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v0, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvPerspectiveTransform(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V

    .line 151
    iget-object v0, p0, Lcom/googlecode/javacv/GeometricCalibrator;->warpDstPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v1, p0, Lcom/googlecode/javacv/GeometricCalibrator;->tempPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core;->cvNorm(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)D

    move-result-wide v9

    .line 152
    .local v9, rmsePrev:D
    iget-object v0, p0, Lcom/googlecode/javacv/GeometricCalibrator;->warpSrcPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v1, p0, Lcom/googlecode/javacv/GeometricCalibrator;->tempPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v2, p0, Lcom/googlecode/javacv/GeometricCalibrator;->lastWarp:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v0, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvPerspectiveTransform(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V

    .line 153
    iget-object v0, p0, Lcom/googlecode/javacv/GeometricCalibrator;->warpDstPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v1, p0, Lcom/googlecode/javacv/GeometricCalibrator;->tempPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core;->cvNorm(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)D

    move-result-wide v7

    .line 156
    .local v7, rmseLast:D
    iget-object v0, p0, Lcom/googlecode/javacv/GeometricCalibrator;->warp:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v1, p0, Lcom/googlecode/javacv/GeometricCalibrator;->prevWarp:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core;->cvCopy(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 159
    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v0

    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v6, v0, 0x2

    .line 160
    .local v6, imageSize:I
    iget-object v0, p0, Lcom/googlecode/javacv/GeometricCalibrator;->settings:Lcom/googlecode/javacv/GeometricCalibrator$Settings;

    iget-wide v0, v0, Lcom/googlecode/javacv/GeometricCalibrator$Settings;->patternSteadySize:D

    int-to-double v2, v6

    mul-double/2addr v0, v2

    cmpg-double v0, v9, v0

    if-gez v0, :cond_5

    iget-object v0, p0, Lcom/googlecode/javacv/GeometricCalibrator;->settings:Lcom/googlecode/javacv/GeometricCalibrator$Settings;

    iget-wide v0, v0, Lcom/googlecode/javacv/GeometricCalibrator$Settings;->patternMovedSize:D

    int-to-double v2, v6

    mul-double/2addr v0, v2

    cmpl-double v0, v7, v0

    if-lez v0, :cond_5

    .line 162
    iget-object v0, p0, Lcom/googlecode/javacv/GeometricCalibrator;->lastDetectedMarkers:[Lcom/googlecode/javacv/Marker;

    goto :goto_2

    :cond_5
    move-object v0, v12

    .line 164
    goto :goto_2
.end method

.method public setAllImageMarkers(Ljava/util/LinkedList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<[",
            "Lcom/googlecode/javacv/Marker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, allImageMarkers:Ljava/util/LinkedList;,"Ljava/util/LinkedList<[Lcom/googlecode/javacv/Marker;>;"
    iput-object p1, p0, Lcom/googlecode/javacv/GeometricCalibrator;->allImageMarkers:Ljava/util/LinkedList;

    .line 121
    return-void
.end method

.method public setAllObjectMarkers(Ljava/util/LinkedList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<[",
            "Lcom/googlecode/javacv/Marker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, allObjectMarkers:Ljava/util/LinkedList;,"Ljava/util/LinkedList<[Lcom/googlecode/javacv/Marker;>;"
    iput-object p1, p0, Lcom/googlecode/javacv/GeometricCalibrator;->allObjectMarkers:Ljava/util/LinkedList;

    .line 114
    return-void
.end method
