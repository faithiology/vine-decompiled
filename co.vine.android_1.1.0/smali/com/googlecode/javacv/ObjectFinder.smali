.class public Lcom/googlecode/javacv/ObjectFinder;
.super Ljava/lang/Object;
.source "ObjectFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/ObjectFinder$Settings;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field private distsMat:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field private flannIndex:Lcom/googlecode/javacv/cpp/opencv_flann$Index;

.field private imageDescriptors:[Ljava/nio/FloatBuffer;

.field private imageKeypoints:[Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;

.field private imageMat:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field private indexParams:Lcom/googlecode/javacv/cpp/opencv_flann$IndexParams;

.field private indicesMat:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field private mask:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field private objectDescriptors:[Ljava/nio/FloatBuffer;

.field private objectKeypoints:[Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;

.field private objectMat:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field private pt1:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field private pt2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field private ptpairs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private searchParams:Lcom/googlecode/javacv/cpp/opencv_flann$SearchParams;

.field private settings:Lcom/googlecode/javacv/ObjectFinder$Settings;

.field private storage:Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;

.field private tempStorage:Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/googlecode/javacv/ObjectFinder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/googlecode/javacv/ObjectFinder;->$assertionsDisabled:Z

    .line 182
    const-class v0, Lcom/googlecode/javacv/ObjectFinder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacv/ObjectFinder;->logger:Ljava/util/logging/Logger;

    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/googlecode/javacv/ObjectFinder$Settings;)V
    .locals 2
    .parameter "settings"

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    invoke-static {}, Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;->create()Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacv/ObjectFinder;->storage:Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;

    .line 185
    invoke-static {}, Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;->create()Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacv/ObjectFinder;->tempStorage:Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;

    .line 186
    iput-object v1, p0, Lcom/googlecode/javacv/ObjectFinder;->objectKeypoints:[Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;

    iput-object v1, p0, Lcom/googlecode/javacv/ObjectFinder;->imageKeypoints:[Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;

    .line 187
    iput-object v1, p0, Lcom/googlecode/javacv/ObjectFinder;->objectDescriptors:[Ljava/nio/FloatBuffer;

    iput-object v1, p0, Lcom/googlecode/javacv/ObjectFinder;->imageDescriptors:[Ljava/nio/FloatBuffer;

    .line 189
    iput-object v1, p0, Lcom/googlecode/javacv/ObjectFinder;->flannIndex:Lcom/googlecode/javacv/cpp/opencv_flann$Index;

    .line 190
    iput-object v1, p0, Lcom/googlecode/javacv/ObjectFinder;->indexParams:Lcom/googlecode/javacv/cpp/opencv_flann$IndexParams;

    .line 191
    iput-object v1, p0, Lcom/googlecode/javacv/ObjectFinder;->searchParams:Lcom/googlecode/javacv/cpp/opencv_flann$SearchParams;

    .line 192
    iput-object v1, p0, Lcom/googlecode/javacv/ObjectFinder;->pt1:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iput-object v1, p0, Lcom/googlecode/javacv/ObjectFinder;->pt2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iput-object v1, p0, Lcom/googlecode/javacv/ObjectFinder;->mask:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iput-object v1, p0, Lcom/googlecode/javacv/ObjectFinder;->H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 193
    iput-object v1, p0, Lcom/googlecode/javacv/ObjectFinder;->ptpairs:Ljava/util/ArrayList;

    .line 62
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/ObjectFinder;->setSettings(Lcom/googlecode/javacv/ObjectFinder$Settings;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V
    .locals 2
    .parameter "objectImage"

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    invoke-static {}, Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;->create()Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacv/ObjectFinder;->storage:Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;

    .line 185
    invoke-static {}, Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;->create()Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacv/ObjectFinder;->tempStorage:Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;

    .line 186
    iput-object v1, p0, Lcom/googlecode/javacv/ObjectFinder;->objectKeypoints:[Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;

    iput-object v1, p0, Lcom/googlecode/javacv/ObjectFinder;->imageKeypoints:[Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;

    .line 187
    iput-object v1, p0, Lcom/googlecode/javacv/ObjectFinder;->objectDescriptors:[Ljava/nio/FloatBuffer;

    iput-object v1, p0, Lcom/googlecode/javacv/ObjectFinder;->imageDescriptors:[Ljava/nio/FloatBuffer;

    .line 189
    iput-object v1, p0, Lcom/googlecode/javacv/ObjectFinder;->flannIndex:Lcom/googlecode/javacv/cpp/opencv_flann$Index;

    .line 190
    iput-object v1, p0, Lcom/googlecode/javacv/ObjectFinder;->indexParams:Lcom/googlecode/javacv/cpp/opencv_flann$IndexParams;

    .line 191
    iput-object v1, p0, Lcom/googlecode/javacv/ObjectFinder;->searchParams:Lcom/googlecode/javacv/cpp/opencv_flann$SearchParams;

    .line 192
    iput-object v1, p0, Lcom/googlecode/javacv/ObjectFinder;->pt1:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iput-object v1, p0, Lcom/googlecode/javacv/ObjectFinder;->pt2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iput-object v1, p0, Lcom/googlecode/javacv/ObjectFinder;->mask:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iput-object v1, p0, Lcom/googlecode/javacv/ObjectFinder;->H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 193
    iput-object v1, p0, Lcom/googlecode/javacv/ObjectFinder;->ptpairs:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Lcom/googlecode/javacv/ObjectFinder$Settings;

    invoke-direct {v0}, Lcom/googlecode/javacv/ObjectFinder$Settings;-><init>()V

    iput-object v0, p0, Lcom/googlecode/javacv/ObjectFinder;->settings:Lcom/googlecode/javacv/ObjectFinder$Settings;

    .line 58
    iget-object v0, p0, Lcom/googlecode/javacv/ObjectFinder;->settings:Lcom/googlecode/javacv/ObjectFinder$Settings;

    iput-object p1, v0, Lcom/googlecode/javacv/ObjectFinder$Settings;->objectImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 59
    iget-object v0, p0, Lcom/googlecode/javacv/ObjectFinder;->settings:Lcom/googlecode/javacv/ObjectFinder$Settings;

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/ObjectFinder;->setSettings(Lcom/googlecode/javacv/ObjectFinder$Settings;)V

    .line 60
    return-void
.end method

.method private compareSURFDescriptors(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;D)D
    .locals 16
    .parameter "d1"
    .parameter "d2"
    .parameter "best"

    .prologue
    .line 219
    const-wide/16 v10, 0x0

    .line 220
    .local v10, totalCost:D
    sget-boolean v12, Lcom/googlecode/javacv/ObjectFinder;->$assertionsDisabled:Z

    if-nez v12, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v13

    if-ne v12, v13, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v12

    rem-int/lit8 v12, v12, 0x4

    if-eqz v12, :cond_1

    :cond_0
    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 221
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v12

    if-ge v1, v12, :cond_2

    .line 222
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v13

    sub-float/2addr v12, v13

    float-to-double v2, v12

    .line 223
    .local v2, t0:D
    add-int/lit8 v12, v1, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v12

    add-int/lit8 v13, v1, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v13

    sub-float/2addr v12, v13

    float-to-double v4, v12

    .line 224
    .local v4, t1:D
    add-int/lit8 v12, v1, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v12

    add-int/lit8 v13, v1, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v13

    sub-float/2addr v12, v13

    float-to-double v6, v12

    .line 225
    .local v6, t2:D
    add-int/lit8 v12, v1, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v12

    add-int/lit8 v13, v1, 0x3

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v13

    sub-float/2addr v12, v13

    float-to-double v8, v12

    .line 226
    .local v8, t3:D
    mul-double v12, v2, v2

    mul-double v14, v4, v4

    add-double/2addr v12, v14

    mul-double v14, v6, v6

    add-double/2addr v12, v14

    mul-double v14, v8, v8

    add-double/2addr v12, v14

    add-double/2addr v10, v12

    .line 227
    cmpl-double v12, v10, p3

    if-lez v12, :cond_3

    .line 230
    .end local v2           #t0:D
    .end local v4           #t1:D
    .end local v6           #t2:D
    .end local v8           #t3:D
    :cond_2
    return-wide v10

    .line 221
    .restart local v2       #t0:D
    .restart local v4       #t1:D
    .restart local v6       #t2:D
    .restart local v8       #t3:D
    :cond_3
    add-int/lit8 v1, v1, 0x4

    goto :goto_0
.end method

.method private findPairs([Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;[Ljava/nio/FloatBuffer;[Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;[Ljava/nio/FloatBuffer;)V
    .locals 6
    .parameter "objectKeypoints"
    .parameter "objectDescriptors"
    .parameter "imageKeypoints"
    .parameter "imageDescriptors"

    .prologue
    .line 259
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, p2

    if-ge v1, v4, :cond_1

    .line 260
    aget-object v2, p1, v1

    .line 261
    .local v2, kp:Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;
    aget-object v0, p2, v1

    .line 262
    .local v0, descriptor:Ljava/nio/FloatBuffer;
    invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;->laplacian()I

    move-result v4

    invoke-direct {p0, v0, v4, p3, p4}, Lcom/googlecode/javacv/ObjectFinder;->naiveNearestNeighbor(Ljava/nio/FloatBuffer;I[Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;[Ljava/nio/FloatBuffer;)I

    move-result v3

    .line 263
    .local v3, nearestNeighbor:I
    if-ltz v3, :cond_0

    .line 264
    iget-object v4, p0, Lcom/googlecode/javacv/ObjectFinder;->ptpairs:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    iget-object v4, p0, Lcom/googlecode/javacv/ObjectFinder;->ptpairs:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 268
    .end local v0           #descriptor:Ljava/nio/FloatBuffer;
    .end local v2           #kp:Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;
    .end local v3           #nearestNeighbor:I
    :cond_1
    return-void
.end method

.method private flannFindPairs([Ljava/nio/FloatBuffer;[Ljava/nio/FloatBuffer;)V
    .locals 13
    .parameter "objectDescriptors"
    .parameter "imageDescriptors"

    .prologue
    const/4 v3, 0x1

    .line 271
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v11

    .line 273
    .local v11, length:I
    iget-object v0, p0, Lcom/googlecode/javacv/ObjectFinder;->imageMat:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->rows()I

    move-result v0

    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 274
    array-length v0, p2

    const/4 v1, 0x5

    invoke-static {v0, v11, v1, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacv/ObjectFinder;->imageMat:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/ObjectFinder;->imageMat:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->rows()I

    move-result v9

    .line 277
    .local v9, imageRows:I
    iget-object v0, p0, Lcom/googlecode/javacv/ObjectFinder;->imageMat:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    array-length v1, p2

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->rows(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 280
    iget-object v0, p0, Lcom/googlecode/javacv/ObjectFinder;->objectMat:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v12

    .line 281
    .local v12, objectBuf:Ljava/nio/FloatBuffer;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v0, p1

    if-ge v7, v0, :cond_1

    .line 282
    aget-object v0, p1, v7

    invoke-virtual {v12, v0}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 281
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/googlecode/javacv/ObjectFinder;->imageMat:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v8

    .line 286
    .local v8, imageBuf:Ljava/nio/FloatBuffer;
    const/4 v7, 0x0

    :goto_1
    array-length v0, p2

    if-ge v7, v0, :cond_2

    .line 287
    aget-object v0, p2, v7

    invoke-virtual {v8, v0}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 286
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 291
    :cond_2
    iget-object v0, p0, Lcom/googlecode/javacv/ObjectFinder;->flannIndex:Lcom/googlecode/javacv/cpp/opencv_flann$Index;

    iget-object v1, p0, Lcom/googlecode/javacv/ObjectFinder;->imageMat:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v2, p0, Lcom/googlecode/javacv/ObjectFinder;->indexParams:Lcom/googlecode/javacv/cpp/opencv_flann$IndexParams;

    invoke-virtual {v0, v1, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_flann$Index;->build(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_flann$IndexParams;I)V

    .line 292
    iget-object v0, p0, Lcom/googlecode/javacv/ObjectFinder;->flannIndex:Lcom/googlecode/javacv/cpp/opencv_flann$Index;

    iget-object v1, p0, Lcom/googlecode/javacv/ObjectFinder;->objectMat:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v2, p0, Lcom/googlecode/javacv/ObjectFinder;->indicesMat:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v3, p0, Lcom/googlecode/javacv/ObjectFinder;->distsMat:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/googlecode/javacv/ObjectFinder;->searchParams:Lcom/googlecode/javacv/cpp/opencv_flann$SearchParams;

    invoke-virtual/range {v0 .. v5}, Lcom/googlecode/javacv/cpp/opencv_flann$Index;->knnSearch(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;ILcom/googlecode/javacv/cpp/opencv_flann$SearchParams;)V

    .line 294
    iget-object v0, p0, Lcom/googlecode/javacv/ObjectFinder;->indicesMat:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v10

    .line 295
    .local v10, indicesBuf:Ljava/nio/IntBuffer;
    iget-object v0, p0, Lcom/googlecode/javacv/ObjectFinder;->distsMat:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    .line 296
    .local v6, distsBuf:Ljava/nio/FloatBuffer;
    const/4 v7, 0x0

    :goto_2
    array-length v0, p1

    if-ge v7, v0, :cond_4

    .line 297
    mul-int/lit8 v0, v7, 0x2

    invoke-virtual {v6, v0}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Lcom/googlecode/javacv/ObjectFinder;->settings:Lcom/googlecode/javacv/ObjectFinder$Settings;

    iget-wide v2, v2, Lcom/googlecode/javacv/ObjectFinder$Settings;->distanceThreshold:D

    mul-int/lit8 v4, v7, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v6, v4}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v4

    float-to-double v4, v4

    mul-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_3

    .line 298
    iget-object v0, p0, Lcom/googlecode/javacv/ObjectFinder;->ptpairs:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    iget-object v0, p0, Lcom/googlecode/javacv/ObjectFinder;->ptpairs:Ljava/util/ArrayList;

    mul-int/lit8 v1, v7, 0x2

    invoke-virtual {v10, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 302
    :cond_4
    iget-object v0, p0, Lcom/googlecode/javacv/ObjectFinder;->imageMat:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {v0, v9}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->rows(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 303
    return-void
.end method

.method private locatePlanarObject([Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;[Ljava/nio/FloatBuffer;[Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;[Ljava/nio/FloatBuffer;[D)[D
    .locals 26
    .parameter "objectKeypoints"
    .parameter "objectDescriptors"
    .parameter "imageKeypoints"
    .parameter "imageDescriptors"
    .parameter "srcCorners"

    .prologue
    .line 308
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/ObjectFinder;->ptpairs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 309
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/ObjectFinder;->settings:Lcom/googlecode/javacv/ObjectFinder$Settings;

    iget-boolean v3, v3, Lcom/googlecode/javacv/ObjectFinder$Settings;->useFLANN:Z

    if-eqz v3, :cond_0

    .line 310
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/googlecode/javacv/ObjectFinder;->flannFindPairs([Ljava/nio/FloatBuffer;[Ljava/nio/FloatBuffer;)V

    .line 314
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/ObjectFinder;->ptpairs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    div-int/lit8 v19, v3, 0x2

    .line 315
    .local v19, n:I
    sget-object v3, Lcom/googlecode/javacv/ObjectFinder;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " matching pairs found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 316
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/ObjectFinder;->settings:Lcom/googlecode/javacv/ObjectFinder$Settings;

    iget v3, v3, Lcom/googlecode/javacv/ObjectFinder$Settings;->matchesMin:I

    move/from16 v0, v19

    if-ge v0, v3, :cond_1

    .line 317
    const/16 v16, 0x0

    .line 351
    :goto_1
    return-object v16

    .line 312
    .end local v19           #n:I
    :cond_0
    invoke-direct/range {p0 .. p4}, Lcom/googlecode/javacv/ObjectFinder;->findPairs([Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;[Ljava/nio/FloatBuffer;[Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;[Ljava/nio/FloatBuffer;)V

    goto :goto_0

    .line 320
    .restart local v19       #n:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/ObjectFinder;->pt1:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->cols(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 321
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/ObjectFinder;->pt2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->cols(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 322
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/ObjectFinder;->mask:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->cols(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 323
    const/16 v18, 0x0

    .local v18, i:I
    :goto_2
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    .line 324
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/ObjectFinder;->ptpairs:Ljava/util/ArrayList;

    mul-int/lit8 v4, v18, 0x2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v3, p1, v3

    invoke-virtual {v3}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;->pt()Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;

    move-result-object v20

    .line 325
    .local v20, p1:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/ObjectFinder;->pt1:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    mul-int/lit8 v4, v18, 0x2

    invoke-virtual/range {v20 .. v20}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->x()F

    move-result v5

    float-to-double v5, v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/ObjectFinder;->pt1:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    mul-int/lit8 v4, v18, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual/range {v20 .. v20}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->y()F

    move-result v5

    float-to-double v5, v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 326
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/ObjectFinder;->ptpairs:Ljava/util/ArrayList;

    mul-int/lit8 v4, v18, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v3, p3, v3

    invoke-virtual {v3}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;->pt()Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;

    move-result-object v21

    .line 327
    .local v21, p2:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/ObjectFinder;->pt2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    mul-int/lit8 v4, v18, 0x2

    invoke-virtual/range {v21 .. v21}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->x()F

    move-result v5

    float-to-double v5, v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/ObjectFinder;->pt2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    mul-int/lit8 v4, v18, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual/range {v21 .. v21}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->y()F

    move-result v5

    float-to-double v5, v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 323
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 330
    .end local v20           #p1:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;
    .end local v21           #p2:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/ObjectFinder;->pt1:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/ObjectFinder;->pt2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/ObjectFinder;->H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/16 v6, 0x8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/googlecode/javacv/ObjectFinder;->settings:Lcom/googlecode/javacv/ObjectFinder$Settings;

    iget-wide v7, v7, Lcom/googlecode/javacv/ObjectFinder$Settings;->ransacReprojThreshold:D

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/googlecode/javacv/ObjectFinder;->mask:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static/range {v3 .. v9}, Lcom/googlecode/javacv/cpp/opencv_calib3d;->cvFindHomography(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;IDLcom/googlecode/javacv/cpp/opencv_core$CvMat;)I

    move-result v3

    if-nez v3, :cond_3

    .line 331
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 333
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/ObjectFinder;->mask:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v3}, Lcom/googlecode/javacv/cpp/opencv_core;->cvCountNonZero(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/ObjectFinder;->settings:Lcom/googlecode/javacv/ObjectFinder$Settings;

    iget v4, v4, Lcom/googlecode/javacv/ObjectFinder$Settings;->matchesMin:I

    if-ge v3, v4, :cond_4

    .line 334
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 337
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/ObjectFinder;->H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get()[D

    move-result-object v17

    .line 338
    .local v17, h:[D
    move-object/from16 v0, p5

    array-length v3, v0

    new-array v0, v3, [D

    move-object/from16 v16, v0

    .line 339
    .local v16, dstCorners:[D
    const/16 v18, 0x0

    :goto_3
    move-object/from16 v0, p5

    array-length v3, v0

    div-int/lit8 v3, v3, 0x2

    move/from16 v0, v18

    if-ge v0, v3, :cond_5

    .line 340
    mul-int/lit8 v3, v18, 0x2

    aget-wide v22, p5, v3

    .local v22, x:D
    mul-int/lit8 v3, v18, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-wide v24, p5, v3

    .line 341
    .local v24, y:D
    const-wide/high16 v3, 0x3ff0

    const/4 v5, 0x6

    aget-wide v5, v17, v5

    mul-double v5, v5, v22

    const/4 v7, 0x7

    aget-wide v7, v17, v7

    mul-double v7, v7, v24

    add-double/2addr v5, v7

    const/16 v7, 0x8

    aget-wide v7, v17, v7

    add-double/2addr v5, v7

    div-double v14, v3, v5

    .line 342
    .local v14, Z:D
    const/4 v3, 0x0

    aget-wide v3, v17, v3

    mul-double v3, v3, v22

    const/4 v5, 0x1

    aget-wide v5, v17, v5

    mul-double v5, v5, v24

    add-double/2addr v3, v5

    const/4 v5, 0x2

    aget-wide v5, v17, v5

    add-double/2addr v3, v5

    mul-double v10, v3, v14

    .line 343
    .local v10, X:D
    const/4 v3, 0x3

    aget-wide v3, v17, v3

    mul-double v3, v3, v22

    const/4 v5, 0x4

    aget-wide v5, v17, v5

    mul-double v5, v5, v24

    add-double/2addr v3, v5

    const/4 v5, 0x5

    aget-wide v5, v17, v5

    add-double/2addr v3, v5

    mul-double v12, v3, v14

    .line 344
    .local v12, Y:D
    mul-int/lit8 v3, v18, 0x2

    aput-wide v10, v16, v3

    .line 345
    mul-int/lit8 v3, v18, 0x2

    add-int/lit8 v3, v3, 0x1

    aput-wide v12, v16, v3

    .line 339
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 348
    .end local v10           #X:D
    .end local v12           #Y:D
    .end local v14           #Z:D
    .end local v22           #x:D
    .end local v24           #y:D
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/ObjectFinder;->pt1:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, p2

    array-length v4, v0

    invoke-virtual {v3, v4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->cols(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 349
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/ObjectFinder;->pt2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, p2

    array-length v4, v0

    invoke-virtual {v3, v4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->cols(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 350
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/ObjectFinder;->mask:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, p2

    array-length v4, v0

    invoke-virtual {v3, v4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->cols(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    goto/16 :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 31
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 357
    move-object/from16 v0, p0

    array-length v3, v0

    const/4 v6, 0x2

    if-ne v3, v6, :cond_2

    const/4 v3, 0x0

    aget-object v18, p0, v3

    .line 358
    .local v18, objectFilename:Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    array-length v3, v0

    const/4 v6, 0x2

    if-ne v3, v6, :cond_3

    const/4 v3, 0x1

    aget-object v23, p0, v3

    .line 360
    .local v23, sceneFilename:Ljava/lang/String;
    :goto_1
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Lcom/googlecode/javacv/cpp/opencv_highgui;->cvLoadImage(Ljava/lang/String;I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v16

    .line 361
    .local v16, object:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-static {v0, v3}, Lcom/googlecode/javacv/cpp/opencv_highgui;->cvLoadImage(Ljava/lang/String;I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v14

    .line 362
    .local v14, image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    if-eqz v16, :cond_0

    if-nez v14, :cond_1

    .line 363
    :cond_0
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can not load "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and/or "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 364
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 367
    :cond_1
    invoke-virtual/range {v16 .. v16}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v6

    const/16 v7, 0x8

    const/4 v8, 0x3

    invoke-static {v3, v6, v7, v8}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v17

    .line 368
    .local v17, objectColor:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    const/16 v3, 0x8

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v3}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvCvtColor(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V

    .line 370
    invoke-virtual {v14}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v6

    invoke-virtual {v14}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v7

    add-int/2addr v6, v7

    const/16 v7, 0x8

    const/4 v8, 0x1

    invoke-static {v3, v6, v7, v8}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v2

    .line 371
    .local v2, correspond:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v16 .. v16}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v7

    invoke-virtual/range {v16 .. v16}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v8

    invoke-static {v3, v6, v7, v8}, Lcom/googlecode/javacv/cpp/opencv_core;->cvRect(IIII)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSetImageROI(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;)V

    .line 372
    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvCopy(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 373
    const/4 v3, 0x0

    invoke-virtual/range {v16 .. v16}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v6

    invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v7

    invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v8

    invoke-static {v3, v6, v7, v8}, Lcom/googlecode/javacv/cpp/opencv_core;->cvRect(IIII)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSetImageROI(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;)V

    .line 374
    invoke-static {v14, v2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvCopy(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 375
    invoke-static {v2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvResetImageROI(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    .line 377
    new-instance v24, Lcom/googlecode/javacv/ObjectFinder$Settings;

    invoke-direct/range {v24 .. v24}, Lcom/googlecode/javacv/ObjectFinder$Settings;-><init>()V

    .line 378
    .local v24, settings:Lcom/googlecode/javacv/ObjectFinder$Settings;
    move-object/from16 v0, v16

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/googlecode/javacv/ObjectFinder$Settings;->objectImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 379
    const/4 v3, 0x1

    move-object/from16 v0, v24

    iput-boolean v3, v0, Lcom/googlecode/javacv/ObjectFinder$Settings;->useFLANN:Z

    .line 380
    const-wide/high16 v6, 0x4014

    move-object/from16 v0, v24

    iput-wide v6, v0, Lcom/googlecode/javacv/ObjectFinder$Settings;->ransacReprojThreshold:D

    .line 381
    new-instance v12, Lcom/googlecode/javacv/ObjectFinder;

    move-object/from16 v0, v24

    invoke-direct {v12, v0}, Lcom/googlecode/javacv/ObjectFinder;-><init>(Lcom/googlecode/javacv/ObjectFinder$Settings;)V

    .line 383
    .local v12, finder:Lcom/googlecode/javacv/ObjectFinder;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    .line 384
    .local v25, start:J
    invoke-virtual {v12, v14}, Lcom/googlecode/javacv/ObjectFinder;->find(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)[D

    move-result-object v11

    .line 385
    .local v11, dst_corners:[D
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Finding time = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v7, v7, v25

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 387
    if-eqz v11, :cond_4

    .line 388
    const/4 v13, 0x0

    .local v13, i:I
    :goto_2
    const/4 v3, 0x4

    if-ge v13, v3, :cond_4

    .line 389
    add-int/lit8 v3, v13, 0x1

    rem-int/lit8 v15, v3, 0x4

    .line 390
    .local v15, j:I
    mul-int/lit8 v3, v13, 0x2

    aget-wide v6, v11, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v0, v6

    move/from16 v27, v0

    .line 391
    .local v27, x1:I
    mul-int/lit8 v3, v13, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-wide v6, v11, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v0, v6

    move/from16 v29, v0

    .line 392
    .local v29, y1:I
    mul-int/lit8 v3, v15, 0x2

    aget-wide v6, v11, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v0, v6

    move/from16 v28, v0

    .line 393
    .local v28, x2:I
    mul-int/lit8 v3, v15, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-wide v6, v11, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v0, v6

    move/from16 v30, v0

    .line 394
    .local v30, y2:I
    invoke-virtual/range {v16 .. v16}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v3

    add-int v3, v3, v29

    move/from16 v0, v27

    invoke-static {v0, v3}, Lcom/googlecode/javacv/cpp/opencv_core;->cvPoint(II)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v6

    add-int v6, v6, v30

    move/from16 v0, v28

    invoke-static {v0, v6}, Lcom/googlecode/javacv/cpp/opencv_core;->cvPoint(II)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    move-result-object v4

    sget-object v5, Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;->WHITE:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    const/4 v6, 0x1

    const/16 v7, 0x8

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/googlecode/javacv/cpp/opencv_core;->cvLine(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;III)V

    .line 388
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 357
    .end local v2           #correspond:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .end local v11           #dst_corners:[D
    .end local v12           #finder:Lcom/googlecode/javacv/ObjectFinder;
    .end local v13           #i:I
    .end local v14           #image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .end local v15           #j:I
    .end local v16           #object:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .end local v17           #objectColor:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .end local v18           #objectFilename:Ljava/lang/String;
    .end local v23           #sceneFilename:Ljava/lang/String;
    .end local v24           #settings:Lcom/googlecode/javacv/ObjectFinder$Settings;
    .end local v25           #start:J
    .end local v27           #x1:I
    .end local v28           #x2:I
    .end local v29           #y1:I
    .end local v30           #y2:I
    :cond_2
    const-string v18, "/usr/share/opencv/samples/c/box.png"

    goto/16 :goto_0

    .line 358
    .restart local v18       #objectFilename:Ljava/lang/String;
    :cond_3
    const-string v23, "/usr/share/opencv/samples/c/box_in_scene.png"

    goto/16 :goto_1

    .line 400
    .restart local v2       #correspond:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .restart local v11       #dst_corners:[D
    .restart local v12       #finder:Lcom/googlecode/javacv/ObjectFinder;
    .restart local v14       #image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .restart local v16       #object:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .restart local v17       #objectColor:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .restart local v23       #sceneFilename:Ljava/lang/String;
    .restart local v24       #settings:Lcom/googlecode/javacv/ObjectFinder$Settings;
    .restart local v25       #start:J
    :cond_4
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_3
    iget-object v3, v12, Lcom/googlecode/javacv/ObjectFinder;->ptpairs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v13, v3, :cond_5

    .line 401
    iget-object v6, v12, Lcom/googlecode/javacv/ObjectFinder;->objectKeypoints:[Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;

    iget-object v3, v12, Lcom/googlecode/javacv/ObjectFinder;->ptpairs:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v3, v6, v3

    invoke-virtual {v3}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;->pt()Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;

    move-result-object v20

    .line 402
    .local v20, pt1:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;
    iget-object v6, v12, Lcom/googlecode/javacv/ObjectFinder;->imageKeypoints:[Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;

    iget-object v3, v12, Lcom/googlecode/javacv/ObjectFinder;->ptpairs:Ljava/util/ArrayList;

    add-int/lit8 v7, v13, 0x1

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v3, v6, v3

    invoke-virtual {v3}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;->pt()Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;

    move-result-object v21

    .line 403
    .local v21, pt2:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;
    invoke-static/range {v20 .. v20}, Lcom/googlecode/javacv/cpp/opencv_core;->cvPointFrom32f(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    move-result-object v3

    invoke-virtual/range {v21 .. v21}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->x()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual/range {v21 .. v21}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->y()F

    move-result v7

    invoke-virtual/range {v16 .. v16}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-static {v6, v7}, Lcom/googlecode/javacv/cpp/opencv_core;->cvPoint(II)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    move-result-object v4

    sget-object v5, Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;->WHITE:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    const/4 v6, 0x1

    const/16 v7, 0x8

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/googlecode/javacv/cpp/opencv_core;->cvLine(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;III)V

    .line 400
    add-int/lit8 v13, v13, 0x2

    goto :goto_3

    .line 408
    .end local v20           #pt1:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;
    .end local v21           #pt2:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;
    :cond_5
    new-instance v19, Lcom/googlecode/javacv/CanvasFrame;

    const-string v3, "Object"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Lcom/googlecode/javacv/CanvasFrame;-><init>(Ljava/lang/String;)V

    .line 409
    .local v19, objectFrame:Lcom/googlecode/javacv/CanvasFrame;
    new-instance v10, Lcom/googlecode/javacv/CanvasFrame;

    const-string v3, "Object Correspond"

    invoke-direct {v10, v3}, Lcom/googlecode/javacv/CanvasFrame;-><init>(Ljava/lang/String;)V

    .line 411
    .local v10, correspondFrame:Lcom/googlecode/javacv/CanvasFrame;
    invoke-virtual {v10, v2}, Lcom/googlecode/javacv/CanvasFrame;->showImage(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    .line 412
    const/4 v13, 0x0

    :goto_4
    iget-object v3, v12, Lcom/googlecode/javacv/ObjectFinder;->objectKeypoints:[Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;

    array-length v3, v3

    if-ge v13, v3, :cond_6

    .line 413
    iget-object v3, v12, Lcom/googlecode/javacv/ObjectFinder;->objectKeypoints:[Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;

    aget-object v22, v3, v13

    .line 414
    .local v22, r:Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;
    invoke-virtual/range {v22 .. v22}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;->pt()Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;

    move-result-object v3

    invoke-static {v3}, Lcom/googlecode/javacv/cpp/opencv_core;->cvPointFrom32f(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    move-result-object v4

    .line 415
    .local v4, center:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
    invoke-virtual/range {v22 .. v22}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;->size()I

    move-result v3

    int-to-float v3, v3

    const v6, 0x3f99999a

    mul-float/2addr v3, v6

    const/high16 v6, 0x4110

    div-float/2addr v3, v6

    const/high16 v6, 0x4000

    mul-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 416
    .local v5, radius:I
    sget-object v6, Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;->RED:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    const/4 v7, 0x1

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object/from16 v3, v17

    invoke-static/range {v3 .. v9}, Lcom/googlecode/javacv/cpp/opencv_core;->cvCircle(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;ILcom/googlecode/javacv/cpp/opencv_core$CvScalar;III)V

    .line 412
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 418
    .end local v4           #center:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
    .end local v5           #radius:I
    .end local v22           #r:Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;
    :cond_6
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/CanvasFrame;->showImage(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    .line 420
    invoke-virtual/range {v19 .. v19}, Lcom/googlecode/javacv/CanvasFrame;->waitKey()Ljava/awt/event/KeyEvent;

    .line 422
    invoke-virtual/range {v19 .. v19}, Lcom/googlecode/javacv/CanvasFrame;->dispose()V

    .line 423
    invoke-virtual {v10}, Lcom/googlecode/javacv/CanvasFrame;->dispose()V

    .line 424
    return-void
.end method

.method private naiveNearestNeighbor(Ljava/nio/FloatBuffer;I[Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;[Ljava/nio/FloatBuffer;)I
    .locals 13
    .parameter "vec"
    .parameter "laplacian"
    .parameter "modelKeypoints"
    .parameter "modelDescriptors"

    .prologue
    .line 235
    const/4 v10, -0x1

    .line 236
    .local v10, neighbor:I
    const-wide v3, 0x412e848000000000L

    .local v3, dist1:D
    const-wide v5, 0x412e848000000000L

    .line 238
    .local v5, dist2:D
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    move-object/from16 v0, p4

    array-length v11, v0

    if-ge v7, v11, :cond_3

    .line 239
    aget-object v8, p3, v7

    .line 240
    .local v8, kp:Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;
    aget-object v9, p4, v7

    .line 241
    .local v9, mvec:Ljava/nio/FloatBuffer;
    invoke-virtual {v8}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;->laplacian()I

    move-result v11

    if-eq p2, v11, :cond_1

    .line 238
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 243
    :cond_1
    invoke-direct {p0, p1, v9, v5, v6}, Lcom/googlecode/javacv/ObjectFinder;->compareSURFDescriptors(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;D)D

    move-result-wide v1

    .line 244
    .local v1, d:D
    cmpg-double v11, v1, v3

    if-gez v11, :cond_2

    .line 245
    move-wide v5, v3

    .line 246
    move-wide v3, v1

    .line 247
    move v10, v7

    goto :goto_1

    .line 248
    :cond_2
    cmpg-double v11, v1, v5

    if-gez v11, :cond_0

    .line 249
    move-wide v5, v1

    goto :goto_1

    .line 252
    .end local v1           #d:D
    .end local v8           #kp:Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;
    .end local v9           #mvec:Ljava/nio/FloatBuffer;
    :cond_3
    iget-object v11, p0, Lcom/googlecode/javacv/ObjectFinder;->settings:Lcom/googlecode/javacv/ObjectFinder$Settings;

    iget-wide v11, v11, Lcom/googlecode/javacv/ObjectFinder$Settings;->distanceThreshold:D

    mul-double/2addr v11, v5

    cmpg-double v11, v3, v11

    if-gez v11, :cond_4

    .line 254
    .end local v10           #neighbor:I
    :goto_2
    return v10

    .restart local v10       #neighbor:I
    :cond_4
    const/4 v10, -0x1

    goto :goto_2
.end method


# virtual methods
.method public find(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)[D
    .locals 17
    .parameter "image"

    .prologue
    .line 196
    new-instance v3, Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;

    const/4 v1, 0x0

    invoke-direct {v3, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    .local v3, keypoints:Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
    new-instance v4, Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;

    const/4 v1, 0x0

    invoke-direct {v4, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    .line 197
    .local v4, descriptors:Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/ObjectFinder;->tempStorage:Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;

    invoke-static {v1}, Lcom/googlecode/javacv/cpp/opencv_core;->cvClearMemStorage(Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;)V

    .line 198
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/ObjectFinder;->tempStorage:Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/ObjectFinder;->settings:Lcom/googlecode/javacv/ObjectFinder$Settings;

    iget-object v6, v1, Lcom/googlecode/javacv/ObjectFinder$Settings;->parameters:Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFParams;

    const/4 v7, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Lcom/googlecode/javacv/cpp/opencv_legacy;->cvExtractSURF(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFParams;I)V

    .line 200
    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;->total()I

    move-result v15

    .line 201
    .local v15, total:I
    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;->elem_size()I

    move-result v14

    .line 202
    .local v14, size:I
    new-array v1, v15, [Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/googlecode/javacv/ObjectFinder;->imageKeypoints:[Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;

    .line 203
    new-array v1, v15, [Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/googlecode/javacv/ObjectFinder;->imageDescriptors:[Ljava/nio/FloatBuffer;

    .line 204
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    if-ge v13, v15, :cond_0

    .line 205
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/ObjectFinder;->imageKeypoints:[Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;

    new-instance v2, Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;

    invoke-static {v3, v13}, Lcom/googlecode/javacv/cpp/opencv_core;->cvGetSeqElem(Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    aput-object v2, v1, v13

    .line 206
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/ObjectFinder;->imageDescriptors:[Ljava/nio/FloatBuffer;

    invoke-static {v4, v13}, Lcom/googlecode/javacv/cpp/opencv_core;->cvGetSeqElem(Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/googlecode/javacpp/Pointer;->capacity(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/googlecode/javacpp/Pointer;->asByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    aput-object v2, v1, v13

    .line 204
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 208
    :cond_0
    sget-object v1, Lcom/googlecode/javacv/ObjectFinder;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " image descriptors"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 210
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/ObjectFinder;->settings:Lcom/googlecode/javacv/ObjectFinder$Settings;

    iget-object v1, v1, Lcom/googlecode/javacv/ObjectFinder$Settings;->objectImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v16

    .line 211
    .local v16, w:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/ObjectFinder;->settings:Lcom/googlecode/javacv/ObjectFinder$Settings;

    iget-object v1, v1, Lcom/googlecode/javacv/ObjectFinder$Settings;->objectImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v12

    .line 212
    .local v12, h:I
    const/16 v1, 0x8

    new-array v10, v1, [D

    const/4 v1, 0x0

    const-wide/16 v5, 0x0

    aput-wide v5, v10, v1

    const/4 v1, 0x1

    const-wide/16 v5, 0x0

    aput-wide v5, v10, v1

    const/4 v1, 0x2

    move/from16 v0, v16

    int-to-double v5, v0

    aput-wide v5, v10, v1

    const/4 v1, 0x3

    const-wide/16 v5, 0x0

    aput-wide v5, v10, v1

    const/4 v1, 0x4

    move/from16 v0, v16

    int-to-double v5, v0

    aput-wide v5, v10, v1

    const/4 v1, 0x5

    int-to-double v5, v12

    aput-wide v5, v10, v1

    const/4 v1, 0x6

    const-wide/16 v5, 0x0

    aput-wide v5, v10, v1

    const/4 v1, 0x7

    int-to-double v5, v12

    aput-wide v5, v10, v1

    .line 213
    .local v10, srcCorners:[D
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/googlecode/javacv/ObjectFinder;->objectKeypoints:[Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/googlecode/javacv/ObjectFinder;->objectDescriptors:[Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/googlecode/javacv/ObjectFinder;->imageKeypoints:[Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/googlecode/javacv/ObjectFinder;->imageDescriptors:[Ljava/nio/FloatBuffer;

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/googlecode/javacv/ObjectFinder;->locatePlanarObject([Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;[Ljava/nio/FloatBuffer;[Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;[Ljava/nio/FloatBuffer;[D)[D

    move-result-object v11

    .line 215
    .local v11, dstCorners:[D
    return-object v11
.end method

.method public getSettings()Lcom/googlecode/javacv/ObjectFinder$Settings;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/googlecode/javacv/ObjectFinder;->settings:Lcom/googlecode/javacv/ObjectFinder$Settings;

    return-object v0
.end method

.method public setSettings(Lcom/googlecode/javacv/ObjectFinder$Settings;)V
    .locals 14
    .parameter "settings"

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v13, 0x2

    const/4 v12, 0x5

    const/4 v11, 0x1

    .line 149
    iput-object p1, p0, Lcom/googlecode/javacv/ObjectFinder;->settings:Lcom/googlecode/javacv/ObjectFinder$Settings;

    .line 151
    new-instance v2, Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;

    invoke-direct {v2, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    .local v2, keypoints:Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
    new-instance v3, Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;

    invoke-direct {v3, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    .line 152
    .local v3, descriptors:Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
    iget-object v0, p0, Lcom/googlecode/javacv/ObjectFinder;->storage:Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;

    invoke-static {v0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvClearMemStorage(Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;)V

    .line 153
    iget-object v0, p1, Lcom/googlecode/javacv/ObjectFinder$Settings;->objectImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget-object v4, p0, Lcom/googlecode/javacv/ObjectFinder;->storage:Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;

    iget-object v5, p1, Lcom/googlecode/javacv/ObjectFinder$Settings;->parameters:Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFParams;

    invoke-static/range {v0 .. v6}, Lcom/googlecode/javacv/cpp/opencv_legacy;->cvExtractSURF(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFParams;I)V

    .line 155
    invoke-virtual {v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;->total()I

    move-result v10

    .line 156
    .local v10, total:I
    invoke-virtual {v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;->elem_size()I

    move-result v9

    .line 157
    .local v9, size:I
    new-array v0, v10, [Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;

    iput-object v0, p0, Lcom/googlecode/javacv/ObjectFinder;->objectKeypoints:[Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;

    .line 158
    new-array v0, v10, [Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lcom/googlecode/javacv/ObjectFinder;->objectDescriptors:[Ljava/nio/FloatBuffer;

    .line 159
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v10, :cond_0

    .line 160
    iget-object v0, p0, Lcom/googlecode/javacv/ObjectFinder;->objectKeypoints:[Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;

    new-instance v1, Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;

    invoke-static {v2, v7}, Lcom/googlecode/javacv/cpp/opencv_core;->cvGetSeqElem(Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    aput-object v1, v0, v7

    .line 161
    iget-object v0, p0, Lcom/googlecode/javacv/ObjectFinder;->objectDescriptors:[Ljava/nio/FloatBuffer;

    invoke-static {v3, v7}, Lcom/googlecode/javacv/cpp/opencv_core;->cvGetSeqElem(Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/googlecode/javacpp/Pointer;->capacity(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/googlecode/javacpp/Pointer;->asByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    aput-object v1, v0, v7

    .line 159
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 163
    :cond_0
    iget-boolean v0, p1, Lcom/googlecode/javacv/ObjectFinder$Settings;->useFLANN:Z

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/googlecode/javacv/ObjectFinder;->objectDescriptors:[Ljava/nio/FloatBuffer;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v8

    .line 165
    .local v8, length:I
    invoke-static {v10, v8, v12, v11}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacv/ObjectFinder;->objectMat:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 166
    invoke-static {v10, v8, v12, v11}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacv/ObjectFinder;->imageMat:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 167
    const/4 v0, 0x4

    invoke-static {v10, v13, v0, v11}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacv/ObjectFinder;->indicesMat:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 168
    invoke-static {v10, v13, v12, v11}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacv/ObjectFinder;->distsMat:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 170
    new-instance v0, Lcom/googlecode/javacv/cpp/opencv_flann$Index;

    invoke-direct {v0}, Lcom/googlecode/javacv/cpp/opencv_flann$Index;-><init>()V

    iput-object v0, p0, Lcom/googlecode/javacv/ObjectFinder;->flannIndex:Lcom/googlecode/javacv/cpp/opencv_flann$Index;

    .line 171
    new-instance v0, Lcom/googlecode/javacv/cpp/opencv_flann$KDTreeIndexParams;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_flann$KDTreeIndexParams;-><init>(I)V

    iput-object v0, p0, Lcom/googlecode/javacv/ObjectFinder;->indexParams:Lcom/googlecode/javacv/cpp/opencv_flann$IndexParams;

    .line 172
    new-instance v0, Lcom/googlecode/javacv/cpp/opencv_flann$SearchParams;

    const/16 v1, 0x40

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v11}, Lcom/googlecode/javacv/cpp/opencv_flann$SearchParams;-><init>(IFZ)V

    iput-object v0, p0, Lcom/googlecode/javacv/ObjectFinder;->searchParams:Lcom/googlecode/javacv/cpp/opencv_flann$SearchParams;

    .line 174
    .end local v8           #length:I
    :cond_1
    invoke-static {v11, v10, v12, v13}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacv/ObjectFinder;->pt1:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 175
    invoke-static {v11, v10, v12, v13}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacv/ObjectFinder;->pt2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 176
    invoke-static {v11, v10, v6, v11}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacv/ObjectFinder;->mask:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 177
    const/4 v0, 0x3

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacv/ObjectFinder;->H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/googlecode/javacv/ObjectFinder;->objectDescriptors:[Ljava/nio/FloatBuffer;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/googlecode/javacv/ObjectFinder;->ptpairs:Ljava/util/ArrayList;

    .line 179
    sget-object v0, Lcom/googlecode/javacv/ObjectFinder;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " object descriptors"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 180
    return-void
.end method
