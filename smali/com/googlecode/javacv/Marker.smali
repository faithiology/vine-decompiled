.class public Lcom/googlecode/javacv/Marker;
.super Ljava/lang/Object;
.source "Marker.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/Marker$ArraySettings;
    }
.end annotation


# static fields
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

.field private static dstPts4x1:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/googlecode/javacv/cpp/opencv_core$CvMat;",
            ">;"
        }
    .end annotation
.end field

.field private static imageCache:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

.field private static final src:[D

.field private static srcPts4x1:Ljava/lang/ThreadLocal;
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
.field public confidence:D

.field public corners:[D

.field public id:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 94
    const/16 v0, 0x1000

    new-array v0, v0, [Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    sput-object v0, Lcom/googlecode/javacv/Marker;->imageCache:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 103
    const/16 v0, 0x8

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/googlecode/javacv/Marker;->src:[D

    .line 111
    invoke-static {v3, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->createThreadLocal(II)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacv/Marker;->H3x3:Ljava/lang/ThreadLocal;

    .line 112
    invoke-static {v4, v1, v5, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->createThreadLocal(IIII)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacv/Marker;->srcPts4x1:Ljava/lang/ThreadLocal;

    .line 113
    invoke-static {v4, v1, v5, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->createThreadLocal(IIII)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacv/Marker;->dstPts4x1:Ljava/lang/ThreadLocal;

    return-void

    .line 103
    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x20t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x20t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x20t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x20t 0x40t
    .end array-data
.end method

.method public varargs constructor <init>(I[D)V
    .locals 2
    .parameter "id"
    .parameter "corners"

    .prologue
    .line 40
    const-wide/high16 v0, 0x3ff0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/googlecode/javacv/Marker;-><init>(I[DD)V

    .line 41
    return-void
.end method

.method public constructor <init>(I[DD)V
    .locals 0
    .parameter "id"
    .parameter "corners"
    .parameter "confidence"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/googlecode/javacv/Marker;->id:I

    .line 36
    iput-object p2, p0, Lcom/googlecode/javacv/Marker;->corners:[D

    .line 37
    iput-wide p3, p0, Lcom/googlecode/javacv/Marker;->confidence:D

    .line 38
    return-void
.end method

.method public static applyWarp([Lcom/googlecode/javacv/Marker;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V
    .locals 6
    .parameter "markers"
    .parameter "warp"

    .prologue
    .line 256
    sget-object v5, Lcom/googlecode/javacv/Marker;->srcPts4x1:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 258
    .local v4, pts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    move-object v0, p0

    .local v0, arr$:[Lcom/googlecode/javacv/Marker;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 259
    .local v3, m:Lcom/googlecode/javacv/Marker;
    iget-object v5, v3, Lcom/googlecode/javacv/Marker;->corners:[D

    invoke-virtual {v4, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put([D)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v5

    invoke-static {v5, v4, p1}, Lcom/googlecode/javacv/cpp/opencv_core;->cvPerspectiveTransform(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V

    .line 260
    iget-object v5, v3, Lcom/googlecode/javacv/Marker;->corners:[D

    invoke-virtual {v4, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get([D)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 258
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 262
    .end local v3           #m:Lcom/googlecode/javacv/Marker;
    :cond_0
    return-void
.end method

.method public static createArray(IIDDDDZDD)[[Lcom/googlecode/javacv/Marker;
    .locals 6
    .parameter "rows"
    .parameter "columns"
    .parameter "sizeX"
    .parameter "sizeY"
    .parameter "spacingX"
    .parameter "spacingY"
    .parameter "checkered"
    .parameter "marginx"
    .parameter "marginy"

    .prologue
    .line 247
    new-instance v4, Lcom/googlecode/javacv/Marker$ArraySettings;

    invoke-direct {v4}, Lcom/googlecode/javacv/Marker$ArraySettings;-><init>()V

    .line 248
    .local v4, s:Lcom/googlecode/javacv/Marker$ArraySettings;
    iput p0, v4, Lcom/googlecode/javacv/Marker$ArraySettings;->rows:I

    iput p1, v4, Lcom/googlecode/javacv/Marker$ArraySettings;->columns:I

    .line 249
    iput-wide p2, v4, Lcom/googlecode/javacv/Marker$ArraySettings;->sizeX:D

    iput-wide p4, v4, Lcom/googlecode/javacv/Marker$ArraySettings;->sizeY:D

    .line 250
    iput-wide p6, v4, Lcom/googlecode/javacv/Marker$ArraySettings;->spacingX:D

    iput-wide p8, v4, Lcom/googlecode/javacv/Marker$ArraySettings;->spacingY:D

    .line 251
    move/from16 v0, p10

    iput-boolean v0, v4, Lcom/googlecode/javacv/Marker$ArraySettings;->checkered:Z

    .line 252
    move-wide/from16 v0, p11

    move-wide/from16 v2, p13

    invoke-static {v4, v0, v1, v2, v3}, Lcom/googlecode/javacv/Marker;->createArray(Lcom/googlecode/javacv/Marker$ArraySettings;DD)[[Lcom/googlecode/javacv/Marker;

    move-result-object v5

    return-object v5
.end method

.method public static createArray(Lcom/googlecode/javacv/Marker$ArraySettings;)[[Lcom/googlecode/javacv/Marker;
    .locals 2
    .parameter "settings"

    .prologue
    const-wide/16 v0, 0x0

    .line 212
    invoke-static {p0, v0, v1, v0, v1}, Lcom/googlecode/javacv/Marker;->createArray(Lcom/googlecode/javacv/Marker$ArraySettings;DD)[[Lcom/googlecode/javacv/Marker;

    move-result-object v0

    return-object v0
.end method

.method public static createArray(Lcom/googlecode/javacv/Marker$ArraySettings;DD)[[Lcom/googlecode/javacv/Marker;
    .locals 24
    .parameter "settings"
    .parameter "marginx"
    .parameter "marginy"

    .prologue
    .line 215
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Marker$ArraySettings;->rows:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Marker$ArraySettings;->columns:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    move/from16 v0, v19

    new-array v10, v0, [Lcom/googlecode/javacv/Marker;

    .line 216
    .local v10, markers:[Lcom/googlecode/javacv/Marker;
    const/4 v9, 0x0

    .line 217
    .local v9, id:I
    const/16 v18, 0x0

    .local v18, y:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Marker$ArraySettings;->rows:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    .line 218
    const/16 v17, 0x0

    .local v17, x:I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Marker$ArraySettings;->columns:I

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 219
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/googlecode/javacv/Marker$ArraySettings;->sizeX:D

    move-wide/from16 v19, v0

    const-wide/high16 v21, 0x4000

    div-double v13, v19, v21

    .line 220
    .local v13, sx:D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/googlecode/javacv/Marker$ArraySettings;->sizeY:D

    move-wide/from16 v19, v0

    const-wide/high16 v21, 0x4000

    div-double v15, v19, v21

    .line 221
    .local v15, sy:D
    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/googlecode/javacv/Marker$ArraySettings;->spacingX:D

    move-wide/from16 v21, v0

    mul-double v19, v19, v21

    add-double v19, v19, v13

    add-double v4, v19, p1

    .line 222
    .local v4, cx:D
    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/googlecode/javacv/Marker$ArraySettings;->spacingY:D

    move-wide/from16 v21, v0

    mul-double v19, v19, v21

    add-double v19, v19, v15

    add-double v6, v19, p3

    .line 223
    .local v6, cy:D
    new-instance v19, Lcom/googlecode/javacv/Marker;

    const/16 v20, 0x8

    move/from16 v0, v20

    new-array v0, v0, [D

    move-object/from16 v20, v0

    const/16 v21, 0x0

    sub-double v22, v4, v13

    aput-wide v22, v20, v21

    const/16 v21, 0x1

    sub-double v22, v6, v15

    aput-wide v22, v20, v21

    const/16 v21, 0x2

    add-double v22, v4, v13

    aput-wide v22, v20, v21

    const/16 v21, 0x3

    sub-double v22, v6, v15

    aput-wide v22, v20, v21

    const/16 v21, 0x4

    add-double v22, v4, v13

    aput-wide v22, v20, v21

    const/16 v21, 0x5

    add-double v22, v6, v15

    aput-wide v22, v20, v21

    const/16 v21, 0x6

    sub-double v22, v4, v13

    aput-wide v22, v20, v21

    const/16 v21, 0x7

    add-double v22, v6, v15

    aput-wide v22, v20, v21

    const-wide/high16 v21, 0x3ff0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-wide/from16 v2, v21

    invoke-direct {v0, v9, v1, v2, v3}, Lcom/googlecode/javacv/Marker;-><init>(I[DD)V

    aput-object v19, v10, v9

    .line 225
    add-int/lit8 v9, v9, 0x1

    .line 218
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 217
    .end local v4           #cx:D
    .end local v6           #cy:D
    .end local v13           #sx:D
    .end local v15           #sy:D
    :cond_0
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 228
    .end local v17           #x:I
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/googlecode/javacv/Marker$ArraySettings;->checkered:Z

    move/from16 v19, v0

    if-nez v19, :cond_2

    .line 229
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [[Lcom/googlecode/javacv/Marker;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v10, v19, v20

    .line 242
    :goto_2
    return-object v19

    .line 231
    :cond_2
    array-length v0, v10

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    new-array v11, v0, [Lcom/googlecode/javacv/Marker;

    .line 232
    .local v11, markers1:[Lcom/googlecode/javacv/Marker;
    array-length v0, v10

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    new-array v12, v0, [Lcom/googlecode/javacv/Marker;

    .line 233
    .local v12, markers2:[Lcom/googlecode/javacv/Marker;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_3
    array-length v0, v10

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v8, v0, :cond_6

    .line 234
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Marker$ArraySettings;->columns:I

    move/from16 v19, v0

    rem-int v17, v8, v19

    .line 235
    .restart local v17       #x:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Marker$ArraySettings;->columns:I

    move/from16 v19, v0

    div-int v18, v8, v19

    .line 236
    rem-int/lit8 v19, v17, 0x2

    if-nez v19, :cond_3

    const/16 v19, 0x1

    :goto_4
    rem-int/lit8 v20, v18, 0x2

    if-nez v20, :cond_4

    const/16 v20, 0x1

    :goto_5
    xor-int v19, v19, v20

    if-eqz v19, :cond_5

    .line 237
    div-int/lit8 v19, v8, 0x2

    aget-object v20, v10, v8

    aput-object v20, v12, v19

    .line 233
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 236
    :cond_3
    const/16 v19, 0x0

    goto :goto_4

    :cond_4
    const/16 v20, 0x0

    goto :goto_5

    .line 239
    :cond_5
    div-int/lit8 v19, v8, 0x2

    aget-object v20, v10, v8

    aput-object v20, v11, v19

    goto :goto_6

    .line 242
    .end local v17           #x:I
    :cond_6
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [[Lcom/googlecode/javacv/Marker;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v12, v19, v20

    const/16 v20, 0x1

    aput-object v11, v19, v20

    goto :goto_2
.end method

.method public static getImage(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 3
    .parameter "id"

    .prologue
    const/16 v2, 0x8

    .line 96
    sget-object v0, Lcom/googlecode/javacv/Marker;->imageCache:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v0, v0, p0

    if-nez v0, :cond_0

    .line 97
    sget-object v0, Lcom/googlecode/javacv/Marker;->imageCache:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    const/4 v1, 0x1

    invoke-static {v2, v2, v2, v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v1

    aput-object v1, v0, p0

    .line 98
    sget-object v0, Lcom/googlecode/javacv/Marker;->imageCache:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/googlecode/javacv/cpp/ARToolKitPlus;->createImagePatternBCH(ILjava/nio/ByteBuffer;)V

    .line 100
    :cond_0
    sget-object v0, Lcom/googlecode/javacv/Marker;->imageCache:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v0, v0, p0

    return-object v0
.end method


# virtual methods
.method public clone()Lcom/googlecode/javacv/Marker;
    .locals 5

    .prologue
    .line 43
    new-instance v1, Lcom/googlecode/javacv/Marker;

    iget v2, p0, Lcom/googlecode/javacv/Marker;->id:I

    iget-object v0, p0, Lcom/googlecode/javacv/Marker;->corners:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iget-wide v3, p0, Lcom/googlecode/javacv/Marker;->confidence:D

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/googlecode/javacv/Marker;-><init>(I[DD)V

    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/googlecode/javacv/Marker;->clone()Lcom/googlecode/javacv/Marker;

    move-result-object v0

    return-object v0
.end method

.method public draw(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V
    .locals 6
    .parameter "image"

    .prologue
    .line 105
    sget-object v2, Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;->BLACK:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    const-wide/high16 v3, 0x3ff0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/googlecode/javacv/Marker;->draw(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;DLcom/googlecode/javacv/cpp/opencv_core$CvMat;)V

    .line 106
    return-void
.end method

.method public draw(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;DDLcom/googlecode/javacv/cpp/opencv_core$CvMat;)V
    .locals 33
    .parameter "image"
    .parameter "color"
    .parameter "scaleX"
    .parameter "scaleY"
    .parameter "prewarp"

    .prologue
    .line 115
    sget-object v2, Lcom/googlecode/javacv/Marker;->H3x3:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 116
    .local v3, H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    sget-object v2, Lcom/googlecode/javacv/Marker;->src:[D

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/Marker;->corners:[D

    invoke-static {v2, v4, v3}, Lcom/googlecode/javacv/JavaCV;->getPerspectiveTransform([D[DLcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 117
    if-eqz p7, :cond_0

    .line 118
    const-wide/high16 v4, 0x3ff0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p7

    move-object v9, v3

    invoke-static/range {v2 .. v10}, Lcom/googlecode/javacv/cpp/opencv_core;->cvGEMM(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;DLcom/googlecode/javacv/cpp/opencv_core$CvArr;DLcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V

    .line 120
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/Marker;->getImage()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v26

    .line 121
    .local v26, marker:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    invoke-virtual/range {v26 .. v26}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v27

    .line 122
    .local v27, mbuf:Ljava/nio/ByteBuffer;
    sget-object v2, Lcom/googlecode/javacv/Marker;->srcPts4x1:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 123
    .local v28, srcPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    sget-object v2, Lcom/googlecode/javacv/Marker;->dstPts4x1:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 124
    .local v19, dstPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    new-instance v29, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    const/4 v2, 0x4

    move-object/from16 v0, v29

    invoke-direct {v0, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;-><init>(I)V

    .line 126
    .local v29, tempPts:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
    invoke-virtual/range {v26 .. v26}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v24

    .line 127
    .local v24, h:I
    invoke-virtual/range {v26 .. v26}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v30

    .line 128
    .local v30, w:I
    const/16 v32, 0x0

    .local v32, y:I
    :goto_0
    move/from16 v0, v32

    move/from16 v1, v24

    if-ge v0, v1, :cond_7

    .line 129
    const/16 v31, 0x0

    .local v31, x:I
    :goto_1
    move/from16 v0, v31

    move/from16 v1, v30

    if-ge v0, v1, :cond_6

    .line 130
    mul-int v2, v32, v30

    add-int v2, v2, v31

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    if-nez v2, :cond_5

    .line 131
    const/16 v2, 0x8

    new-array v2, v2, [D

    const/4 v4, 0x0

    move/from16 v0, v31

    int-to-double v5, v0

    aput-wide v5, v2, v4

    const/4 v4, 0x1

    move/from16 v0, v32

    int-to-double v5, v0

    aput-wide v5, v2, v4

    const/4 v4, 0x2

    add-int/lit8 v5, v31, 0x1

    int-to-double v5, v5

    aput-wide v5, v2, v4

    const/4 v4, 0x3

    move/from16 v0, v32

    int-to-double v5, v0

    aput-wide v5, v2, v4

    const/4 v4, 0x4

    add-int/lit8 v5, v31, 0x1

    int-to-double v5, v5

    aput-wide v5, v2, v4

    const/4 v4, 0x5

    add-int/lit8 v5, v32, 0x1

    int-to-double v5, v5

    aput-wide v5, v2, v4

    const/4 v4, 0x6

    move/from16 v0, v31

    int-to-double v5, v0

    aput-wide v5, v2, v4

    const/4 v4, 0x7

    add-int/lit8 v5, v32, 0x1

    int-to-double v5, v5

    aput-wide v5, v2, v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put([D)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 133
    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-static {v0, v1, v3}, Lcom/googlecode/javacv/cpp/opencv_core;->cvPerspectiveTransform(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V

    .line 136
    const-wide/16 v15, 0x0

    .local v15, centerx:D
    const-wide/16 v17, 0x0

    .line 137
    .local v17, centery:D
    const/16 v25, 0x0

    .local v25, i:I
    :goto_2
    const/4 v2, 0x4

    move/from16 v0, v25

    if-ge v0, v2, :cond_1

    .line 138
    mul-int/lit8 v2, v25, 0x2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v4

    add-double/2addr v15, v4

    .line 139
    mul-int/lit8 v2, v25, 0x2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v4

    add-double v17, v17, v4

    .line 137
    add-int/lit8 v25, v25, 0x1

    goto :goto_2

    .line 141
    :cond_1
    const-wide/high16 v4, 0x4010

    div-double/2addr v15, v4

    .line 142
    const-wide/high16 v4, 0x4010

    div-double v17, v17, v4

    .line 143
    const/16 v25, 0x0

    :goto_3
    const/4 v2, 0x4

    move/from16 v0, v25

    if-ge v0, v2, :cond_4

    .line 144
    mul-int/lit8 v2, v25, 0x2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v11

    .line 145
    .local v11, a:D
    mul-int/lit8 v2, v25, 0x2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v13

    .line 146
    .local v13, b:D
    sub-double v20, v15, v11

    .line 147
    .local v20, dx:D
    sub-double v22, v17, v13

    .line 148
    .local v22, dy:D
    const-wide/16 v4, 0x0

    cmpg-double v2, v20, v4

    if-gez v2, :cond_2

    const-wide/high16 v20, -0x4010

    .line 149
    :goto_4
    const-wide/16 v4, 0x0

    cmpg-double v2, v22, v4

    if-gez v2, :cond_3

    const-wide/high16 v22, -0x4010

    .line 150
    :goto_5
    move-object/from16 v0, v29

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    move-result-object v2

    mul-double v4, v11, p3

    add-double v4, v4, v20

    const-wide/high16 v6, 0x40f0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v2, v4}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->x(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    .line 151
    move-object/from16 v0, v29

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    move-result-object v2

    mul-double v4, v13, p5

    add-double v4, v4, v22

    const-wide/high16 v6, 0x40f0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v2, v4}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->y(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    .line 143
    add-int/lit8 v25, v25, 0x1

    goto :goto_3

    .line 148
    :cond_2
    const-wide/16 v20, 0x0

    goto :goto_4

    .line 149
    :cond_3
    const-wide/16 v22, 0x0

    goto :goto_5

    .line 153
    .end local v11           #a:D
    .end local v13           #b:D
    .end local v20           #dx:D
    .end local v22           #dy:D
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    move-result-object v5

    const/4 v6, 0x4

    const/16 v8, 0x8

    const/16 v9, 0x10

    move-object/from16 v4, p1

    move-object/from16 v7, p2

    invoke-static/range {v4 .. v9}, Lcom/googlecode/javacv/cpp/opencv_core;->cvFillConvexPoly(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;ILcom/googlecode/javacv/cpp/opencv_core$CvScalar;II)V

    .line 129
    .end local v15           #centerx:D
    .end local v17           #centery:D
    .end local v25           #i:I
    :cond_5
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_1

    .line 128
    :cond_6
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_0

    .line 157
    .end local v31           #x:I
    :cond_7
    return-void
.end method

.method public draw(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;DLcom/googlecode/javacv/cpp/opencv_core$CvMat;)V
    .locals 8
    .parameter "image"
    .parameter "color"
    .parameter "scale"
    .parameter "prewarp"

    .prologue
    .line 108
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p3

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/googlecode/javacv/Marker;->draw(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;DDLcom/googlecode/javacv/cpp/opencv_core$CvMat;)V

    .line 109
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 56
    instance-of v2, p1, Lcom/googlecode/javacv/Marker;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 57
    check-cast v0, Lcom/googlecode/javacv/Marker;

    .line 58
    .local v0, m:Lcom/googlecode/javacv/Marker;
    iget v2, v0, Lcom/googlecode/javacv/Marker;->id:I

    iget v3, p0, Lcom/googlecode/javacv/Marker;->id:I

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/googlecode/javacv/Marker;->corners:[D

    iget-object v3, p0, Lcom/googlecode/javacv/Marker;->corners:[D

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 60
    .end local v0           #m:Lcom/googlecode/javacv/Marker;
    :cond_0
    return v1
.end method

.method public getCenter()[D
    .locals 9

    .prologue
    const-wide/high16 v7, 0x4010

    .line 64
    const-wide/16 v1, 0x0

    .local v1, x:D
    const-wide/16 v3, 0x0

    .line 70
    .local v3, y:D
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v5, 0x4

    if-ge v0, v5, :cond_0

    .line 71
    iget-object v5, p0, Lcom/googlecode/javacv/Marker;->corners:[D

    mul-int/lit8 v6, v0, 0x2

    aget-wide v5, v5, v6

    add-double/2addr v1, v5

    .line 72
    iget-object v5, p0, Lcom/googlecode/javacv/Marker;->corners:[D

    mul-int/lit8 v6, v0, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-wide v5, v5, v6

    add-double/2addr v3, v5

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_0
    div-double/2addr v1, v7

    .line 75
    div-double/2addr v3, v7

    .line 87
    const/4 v5, 0x2

    new-array v5, v5, [D

    const/4 v6, 0x0

    aput-wide v1, v5, v6

    const/4 v6, 0x1

    aput-wide v3, v5, v6

    return-object v5
.end method

.method public getImage()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/googlecode/javacv/Marker;->id:I

    invoke-static {v0}, Lcom/googlecode/javacv/Marker;->getImage(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 50
    const/4 v0, 0x7

    .line 51
    .local v0, hash:I
    iget v1, p0, Lcom/googlecode/javacv/Marker;->id:I

    add-int/lit16 v0, v1, 0x103

    .line 52
    mul-int/lit8 v2, v0, 0x25

    iget-object v1, p0, Lcom/googlecode/javacv/Marker;->corners:[D

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/googlecode/javacv/Marker;->corners:[D

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v2, v1

    .line 53
    return v0

    .line 52
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/javacv/Marker;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/googlecode/javacv/Marker;->corners:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/googlecode/javacv/Marker;->corners:[D

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/googlecode/javacv/Marker;->corners:[D

    const/4 v3, 0x2

    aget-wide v2, v2, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/googlecode/javacv/Marker;->corners:[D

    const/4 v3, 0x3

    aget-wide v2, v2, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/googlecode/javacv/Marker;->corners:[D

    const/4 v3, 0x4

    aget-wide v2, v2, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/googlecode/javacv/Marker;->corners:[D

    const/4 v3, 0x5

    aget-wide v2, v2, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/googlecode/javacv/Marker;->corners:[D

    const/4 v3, 0x6

    aget-wide v2, v2, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/googlecode/javacv/Marker;->corners:[D

    const/4 v3, 0x7

    aget-wide v2, v2, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, s:Ljava/lang/String;
    return-object v0
.end method
