.class public Lcom/googlecode/javacv/Blobs;
.super Ljava/lang/Object;
.source "Blobs.java"


# static fields
.field public static BLOBAREA:I

.field static BLOBCOLCOUNT:I

.field public static BLOBCOLOR:I

.field public static BLOBDATACOUNT:I

.field public static BLOBLABEL:I

.field public static BLOBMAXX:I

.field public static BLOBMAXY:I

.field public static BLOBMINX:I

.field public static BLOBMINY:I

.field public static BLOBPARENT:I

.field public static BLOBPERIMETER:I

.field static BLOBROWCOUNT:I

.field public static BLOBSUMX:I

.field public static BLOBSUMXX:I

.field public static BLOBSUMXY:I

.field public static BLOBSUMY:I

.field public static BLOBSUMYY:I

.field static BLOBTOTALCOUNT:I

.field public static CondensationMap:[I

.field public static LabelMat:[[I

.field public static MaxLabel:I

.field public static RegionData:[[D

.field public static SubsumedLabel:[I

.field static iField:D

.field static iProperty:[D

.field static jField:D

.field static jProperty:[D


# instance fields
.field public ColorA:I

.field public ColorB:I

.field public ColorC:I

.field public ColorD:I

.field public LabelA:I

.field public LabelB:I

.field public LabelC:I

.field public LabelD:I

.field public jcol:I

.field public jrow:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 68
    const/16 v0, 0xdac

    sput v0, Lcom/googlecode/javacv/Blobs;->BLOBROWCOUNT:I

    .line 69
    const/16 v0, 0xa8c

    sput v0, Lcom/googlecode/javacv/Blobs;->BLOBCOLCOUNT:I

    .line 72
    sget v0, Lcom/googlecode/javacv/Blobs;->BLOBROWCOUNT:I

    sget v1, Lcom/googlecode/javacv/Blobs;->BLOBCOLCOUNT:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x5

    sput v0, Lcom/googlecode/javacv/Blobs;->BLOBTOTALCOUNT:I

    .line 76
    const/4 v0, 0x0

    sput v0, Lcom/googlecode/javacv/Blobs;->BLOBLABEL:I

    .line 77
    const/4 v0, 0x1

    sput v0, Lcom/googlecode/javacv/Blobs;->BLOBPARENT:I

    .line 78
    const/4 v0, 0x2

    sput v0, Lcom/googlecode/javacv/Blobs;->BLOBCOLOR:I

    .line 79
    const/4 v0, 0x3

    sput v0, Lcom/googlecode/javacv/Blobs;->BLOBAREA:I

    .line 80
    const/4 v0, 0x4

    sput v0, Lcom/googlecode/javacv/Blobs;->BLOBPERIMETER:I

    .line 81
    const/4 v0, 0x5

    sput v0, Lcom/googlecode/javacv/Blobs;->BLOBSUMX:I

    .line 82
    const/4 v0, 0x6

    sput v0, Lcom/googlecode/javacv/Blobs;->BLOBSUMY:I

    .line 83
    const/4 v0, 0x7

    sput v0, Lcom/googlecode/javacv/Blobs;->BLOBSUMXX:I

    .line 84
    const/16 v0, 0x8

    sput v0, Lcom/googlecode/javacv/Blobs;->BLOBSUMYY:I

    .line 85
    const/16 v0, 0x9

    sput v0, Lcom/googlecode/javacv/Blobs;->BLOBSUMXY:I

    .line 86
    const/16 v0, 0xa

    sput v0, Lcom/googlecode/javacv/Blobs;->BLOBMINX:I

    .line 87
    const/16 v0, 0xb

    sput v0, Lcom/googlecode/javacv/Blobs;->BLOBMAXX:I

    .line 88
    const/16 v0, 0xc

    sput v0, Lcom/googlecode/javacv/Blobs;->BLOBMINY:I

    .line 89
    const/16 v0, 0xd

    sput v0, Lcom/googlecode/javacv/Blobs;->BLOBMAXY:I

    .line 90
    const/16 v0, 0xe

    sput v0, Lcom/googlecode/javacv/Blobs;->BLOBDATACOUNT:I

    .line 92
    sget v0, Lcom/googlecode/javacv/Blobs;->BLOBROWCOUNT:I

    sget v1, Lcom/googlecode/javacv/Blobs;->BLOBCOLCOUNT:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/googlecode/javacv/Blobs;->LabelMat:[[I

    .line 93
    sget v0, Lcom/googlecode/javacv/Blobs;->BLOBTOTALCOUNT:I

    sget v1, Lcom/googlecode/javacv/Blobs;->BLOBDATACOUNT:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    sput-object v0, Lcom/googlecode/javacv/Blobs;->RegionData:[[D

    .line 99
    sget v0, Lcom/googlecode/javacv/Blobs;->BLOBTOTALCOUNT:I

    new-array v0, v0, [I

    sput-object v0, Lcom/googlecode/javacv/Blobs;->SubsumedLabel:[I

    .line 100
    sget v0, Lcom/googlecode/javacv/Blobs;->BLOBTOTALCOUNT:I

    new-array v0, v0, [I

    sput-object v0, Lcom/googlecode/javacv/Blobs;->CondensationMap:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static NextRegion(IIDDI)I
    .locals 12
    .parameter "Parent"
    .parameter "Color"
    .parameter "MinArea"
    .parameter "MaxArea"
    .parameter "Label"

    .prologue
    .line 142
    int-to-double v2, p0

    .line 143
    .local v2, DParent:D
    int-to-double v0, p1

    .local v0, DColor:D
    const-wide/16 v10, 0x0

    cmpl-double v10, v0, v10

    if-lez v10, :cond_0

    const-wide/high16 v0, 0x3ff0

    .line 146
    :cond_0
    move/from16 v9, p6

    .local v9, i:I
    :goto_0
    sget v10, Lcom/googlecode/javacv/Blobs;->MaxLabel:I

    if-gt v9, v10, :cond_4

    .line 148
    sget-object v10, Lcom/googlecode/javacv/Blobs;->RegionData:[[D

    aget-object v4, v10, v9

    .line 149
    .local v4, Region:[D
    sget v10, Lcom/googlecode/javacv/Blobs;->BLOBPARENT:I

    aget-wide v7, v4, v10

    .line 150
    .local v7, ThisParent:D
    sget v10, Lcom/googlecode/javacv/Blobs;->BLOBCOLOR:I

    aget-wide v5, v4, v10

    .line 151
    .local v5, ThisColor:D
    const-wide/16 v10, 0x0

    cmpl-double v10, v2, v10

    if-ltz v10, :cond_2

    cmpl-double v10, v2, v7

    if-eqz v10, :cond_2

    .line 146
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 152
    :cond_2
    const-wide/16 v10, 0x0

    cmpl-double v10, v0, v10

    if-ltz v10, :cond_3

    cmpl-double v10, v0, v5

    if-nez v10, :cond_1

    .line 153
    :cond_3
    sget v10, Lcom/googlecode/javacv/Blobs;->BLOBAREA:I

    aget-wide v10, v4, v10

    cmpg-double v10, v10, p2

    if-ltz v10, :cond_1

    sget v10, Lcom/googlecode/javacv/Blobs;->BLOBAREA:I

    aget-wide v10, v4, v10

    cmpl-double v10, v10, p4

    if-gtz v10, :cond_1

    .line 156
    .end local v4           #Region:[D
    .end local v5           #ThisColor:D
    .end local v7           #ThisParent:D
    :cond_4
    sget v10, Lcom/googlecode/javacv/Blobs;->MaxLabel:I

    if-le v9, v10, :cond_5

    const/4 v9, -0x1

    .line 157
    :cond_5
    return v9
.end method

.method public static PriorRegion(IIDDI)I
    .locals 12
    .parameter "Parent"
    .parameter "Color"
    .parameter "MinArea"
    .parameter "MaxArea"
    .parameter "Label"

    .prologue
    .line 163
    int-to-double v2, p0

    .line 164
    .local v2, DParent:D
    int-to-double v0, p1

    .local v0, DColor:D
    const-wide/16 v10, 0x0

    cmpl-double v10, v0, v10

    if-lez v10, :cond_0

    const-wide/high16 v0, 0x3ff0

    .line 167
    :cond_0
    move/from16 v9, p6

    .local v9, i:I
    :goto_0
    if-ltz v9, :cond_4

    .line 169
    sget-object v10, Lcom/googlecode/javacv/Blobs;->RegionData:[[D

    aget-object v4, v10, v9

    .line 170
    .local v4, Region:[D
    sget v10, Lcom/googlecode/javacv/Blobs;->BLOBPARENT:I

    aget-wide v7, v4, v10

    .line 171
    .local v7, ThisParent:D
    sget v10, Lcom/googlecode/javacv/Blobs;->BLOBCOLOR:I

    aget-wide v5, v4, v10

    .line 172
    .local v5, ThisColor:D
    const-wide/16 v10, 0x0

    cmpl-double v10, v2, v10

    if-ltz v10, :cond_2

    cmpl-double v10, v2, v7

    if-eqz v10, :cond_2

    .line 167
    :cond_1
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 173
    :cond_2
    const-wide/16 v10, 0x0

    cmpl-double v10, v0, v10

    if-ltz v10, :cond_3

    cmpl-double v10, v0, v5

    if-nez v10, :cond_1

    .line 174
    :cond_3
    sget v10, Lcom/googlecode/javacv/Blobs;->BLOBAREA:I

    aget-wide v10, v4, v10

    cmpg-double v10, v10, p2

    if-ltz v10, :cond_1

    sget v10, Lcom/googlecode/javacv/Blobs;->BLOBAREA:I

    aget-wide v10, v4, v10

    cmpl-double v10, v10, p4

    if-gtz v10, :cond_1

    .line 177
    .end local v4           #Region:[D
    .end local v5           #ThisColor:D
    .end local v7           #ThisParent:D
    :cond_4
    if-gez v9, :cond_5

    const/4 v9, -0x1

    .line 178
    :cond_5
    return v9
.end method

.method public static SortRegions(I)V
    .locals 6
    .parameter "Col"

    .prologue
    .line 634
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v2, Lcom/googlecode/javacv/Blobs;->MaxLabel:I

    if-ge v0, v2, :cond_2

    .line 636
    add-int/lit8 v1, v0, 0x1

    .local v1, j:I
    :goto_1
    sget v2, Lcom/googlecode/javacv/Blobs;->MaxLabel:I

    if-gt v1, v2, :cond_1

    .line 638
    sget-object v2, Lcom/googlecode/javacv/Blobs;->RegionData:[[D

    aget-object v2, v2, v0

    sput-object v2, Lcom/googlecode/javacv/Blobs;->iProperty:[D

    .line 639
    sget-object v2, Lcom/googlecode/javacv/Blobs;->RegionData:[[D

    aget-object v2, v2, v1

    sput-object v2, Lcom/googlecode/javacv/Blobs;->jProperty:[D

    .line 640
    sget-object v2, Lcom/googlecode/javacv/Blobs;->iProperty:[D

    aget-wide v2, v2, p0

    sput-wide v2, Lcom/googlecode/javacv/Blobs;->iField:D

    .line 641
    sget-object v2, Lcom/googlecode/javacv/Blobs;->jProperty:[D

    aget-wide v2, v2, p0

    sput-wide v2, Lcom/googlecode/javacv/Blobs;->jField:D

    .line 642
    sget-wide v2, Lcom/googlecode/javacv/Blobs;->iField:D

    sget-wide v4, Lcom/googlecode/javacv/Blobs;->jField:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 644
    sget-object v2, Lcom/googlecode/javacv/Blobs;->RegionData:[[D

    sget-object v3, Lcom/googlecode/javacv/Blobs;->jProperty:[D

    aput-object v3, v2, v0

    .line 645
    sget-object v2, Lcom/googlecode/javacv/Blobs;->RegionData:[[D

    sget-object v3, Lcom/googlecode/javacv/Blobs;->iProperty:[D

    aput-object v3, v2, v1

    .line 636
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 634
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 649
    .end local v1           #j:I
    :cond_2
    return-void
.end method

.method public static SubsumptionChain(I)I
    .locals 1
    .parameter "x"

    .prologue
    .line 299
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/googlecode/javacv/Blobs;->SubsumptionChain(II)I

    move-result v0

    return v0
.end method

.method public static SubsumptionChain(II)I
    .locals 4
    .parameter "x"
    .parameter "Print"

    .prologue
    .line 302
    const-string v1, ""

    .line 303
    .local v1, Str:Ljava/lang/String;
    if-lez p1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Subsumption chain for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 304
    :cond_0
    move v0, p0

    .line 305
    .local v0, Lastx:I
    :goto_0
    const/4 v2, -0x1

    if-le p0, v2, :cond_2

    .line 307
    move v0, p0

    .line 308
    if-lez p1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 309
    :cond_1
    if-nez p0, :cond_4

    .line 312
    :cond_2
    if-lez p1, :cond_3

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 313
    :cond_3
    return v0

    .line 310
    :cond_4
    sget-object v2, Lcom/googlecode/javacv/Blobs;->SubsumedLabel:[I

    aget p0, v2, p0

    goto :goto_0
.end method


# virtual methods
.method public BlobAnalysis(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;IIIIII)I
    .locals 53
    .parameter "Src"
    .parameter "Col0"
    .parameter "Row0"
    .parameter "Cols"
    .parameter "Rows"
    .parameter "Border"
    .parameter "MinArea"

    .prologue
    .line 327
    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->asCvMat()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v26

    .line 328
    .local v26, SrcMat:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    invoke-virtual/range {v26 .. v26}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->cols()I

    move-result v25

    .line 329
    .local v25, SrcCols:I
    invoke-virtual/range {v26 .. v26}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->rows()I

    move-result v27

    .line 331
    .local v27, SrcRows:I
    if-gez p2, :cond_0

    const/16 p2, 0x0

    .line 332
    :cond_0
    if-gez p3, :cond_1

    const/16 p3, 0x0

    .line 333
    :cond_1
    if-gez p4, :cond_2

    move/from16 p4, v25

    .line 334
    :cond_2
    if-gez p5, :cond_3

    move/from16 p5, v27

    .line 335
    :cond_3
    add-int v44, p2, p4

    move/from16 v0, v44

    move/from16 v1, v25

    if-le v0, v1, :cond_4

    sub-int p4, v25, p2

    .line 336
    :cond_4
    add-int v44, p3, p5

    move/from16 v0, v44

    move/from16 v1, v27

    if-le v0, v1, :cond_5

    sub-int p5, v27, p3

    .line 338
    :cond_5
    sget v44, Lcom/googlecode/javacv/Blobs;->BLOBCOLCOUNT:I

    move/from16 v0, p4

    move/from16 v1, v44

    if-gt v0, v1, :cond_6

    sget v44, Lcom/googlecode/javacv/Blobs;->BLOBROWCOUNT:I

    move/from16 v0, p5

    move/from16 v1, v44

    if-le v0, v1, :cond_7

    .line 340
    :cond_6
    sget-object v44, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v45, "Error in Class Blobs: Image too large: Edit Blobs.java"

    invoke-virtual/range {v44 .. v45}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 341
    const/16 v44, 0x29a

    invoke-static/range {v44 .. v44}, Ljava/lang/System;->exit(I)V

    .line 342
    const/16 v44, 0x0

    .line 626
    :goto_0
    return v44

    .line 346
    :cond_7
    const/4 v11, 0x0

    .line 347
    .local v11, FillLabel:I
    const/4 v10, 0x0

    .local v10, FillColor:I
    if-lez p6, :cond_8

    const/4 v10, 0x1

    .line 348
    :cond_8
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/googlecode/javacv/Blobs;->LabelD:I

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/googlecode/javacv/Blobs;->LabelC:I

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/googlecode/javacv/Blobs;->LabelB:I

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/googlecode/javacv/Blobs;->LabelA:I

    .line 349
    move-object/from16 v0, p0

    iput v10, v0, Lcom/googlecode/javacv/Blobs;->ColorD:I

    move-object/from16 v0, p0

    iput v10, v0, Lcom/googlecode/javacv/Blobs;->ColorC:I

    move-object/from16 v0, p0

    iput v10, v0, Lcom/googlecode/javacv/Blobs;->ColorB:I

    move-object/from16 v0, p0

    iput v10, v0, Lcom/googlecode/javacv/Blobs;->ColorA:I

    .line 350
    const/16 v43, 0x0

    .local v43, k:I
    :goto_1
    sget v44, Lcom/googlecode/javacv/Blobs;->BLOBTOTALCOUNT:I

    move/from16 v0, v43

    move/from16 v1, v44

    if-ge v0, v1, :cond_9

    sget-object v44, Lcom/googlecode/javacv/Blobs;->SubsumedLabel:[I

    const/16 v45, -0x1

    aput v45, v44, v43

    add-int/lit8 v43, v43, 0x1

    goto :goto_1

    .line 353
    :cond_9
    const/16 v44, 0x0

    sput v44, Lcom/googlecode/javacv/Blobs;->MaxLabel:I

    .line 354
    sget-object v44, Lcom/googlecode/javacv/Blobs;->RegionData:[[D

    const/16 v45, 0x0

    aget-object v8, v44, v45

    .line 355
    .local v8, BorderRegion:[D
    sget v44, Lcom/googlecode/javacv/Blobs;->BLOBLABEL:I

    const-wide/16 v45, 0x0

    aput-wide v45, v8, v44

    .line 356
    sget v44, Lcom/googlecode/javacv/Blobs;->BLOBPARENT:I

    const-wide/high16 v45, -0x4010

    aput-wide v45, v8, v44

    .line 357
    sget v44, Lcom/googlecode/javacv/Blobs;->BLOBAREA:I

    add-int v45, p5, p4

    add-int/lit8 v45, v45, 0x4

    move/from16 v0, v45

    int-to-double v0, v0

    move-wide/from16 v45, v0

    aput-wide v45, v8, v44

    .line 358
    sget v44, Lcom/googlecode/javacv/Blobs;->BLOBCOLOR:I

    int-to-double v0, v10

    move-wide/from16 v45, v0

    aput-wide v45, v8, v44

    .line 359
    sget v44, Lcom/googlecode/javacv/Blobs;->BLOBSUMX:I

    const-wide/high16 v45, 0x3fe0

    const-wide/high16 v47, 0x4000

    move/from16 v0, p4

    int-to-double v0, v0

    move-wide/from16 v49, v0

    add-double v47, v47, v49

    move/from16 v0, p4

    int-to-double v0, v0

    move-wide/from16 v49, v0

    const-wide/high16 v51, 0x3ff0

    sub-double v49, v49, v51

    mul-double v47, v47, v49

    mul-double v45, v45, v47

    move/from16 v0, p5

    int-to-double v0, v0

    move-wide/from16 v47, v0

    sub-double v45, v45, v47

    const-wide/high16 v47, 0x3ff0

    sub-double v45, v45, v47

    aput-wide v45, v8, v44

    .line 360
    sget v44, Lcom/googlecode/javacv/Blobs;->BLOBSUMY:I

    const-wide/high16 v45, 0x3fe0

    const-wide/high16 v47, 0x4000

    move/from16 v0, p5

    int-to-double v0, v0

    move-wide/from16 v49, v0

    add-double v47, v47, v49

    move/from16 v0, p5

    int-to-double v0, v0

    move-wide/from16 v49, v0

    const-wide/high16 v51, 0x3ff0

    sub-double v49, v49, v51

    mul-double v47, v47, v49

    mul-double v45, v45, v47

    move/from16 v0, p4

    int-to-double v0, v0

    move-wide/from16 v47, v0

    sub-double v45, v45, v47

    const-wide/high16 v47, 0x3ff0

    sub-double v45, v45, v47

    aput-wide v45, v8, v44

    .line 361
    sget v44, Lcom/googlecode/javacv/Blobs;->BLOBMINX:I

    const-wide/high16 v45, -0x4010

    aput-wide v45, v8, v44

    .line 362
    sget v44, Lcom/googlecode/javacv/Blobs;->BLOBMINY:I

    const-wide/high16 v45, -0x4010

    aput-wide v45, v8, v44

    .line 363
    sget v44, Lcom/googlecode/javacv/Blobs;->BLOBMAXX:I

    move/from16 v0, p4

    int-to-double v0, v0

    move-wide/from16 v45, v0

    const-wide/high16 v47, 0x3ff0

    add-double v45, v45, v47

    aput-wide v45, v8, v44

    .line 364
    sget v44, Lcom/googlecode/javacv/Blobs;->BLOBMAXY:I

    move/from16 v0, p5

    int-to-double v0, v0

    move-wide/from16 v45, v0

    const-wide/high16 v47, 0x3ff0

    add-double v45, v45, v47

    aput-wide v45, v8, v44

    .line 365
    const/16 v44, 0x0

    sget-object v45, Lcom/googlecode/javacv/Blobs;->RegionData:[[D

    const/16 v46, 0x0

    aget-object v45, v45, v46

    const/16 v46, 0x0

    sget v47, Lcom/googlecode/javacv/Blobs;->BLOBDATACOUNT:I

    move/from16 v0, v44

    move-object/from16 v1, v45

    move/from16 v2, v46

    move/from16 v3, v47

    invoke-static {v8, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 393
    move/from16 v42, p3

    .local v42, irow:I
    :goto_2
    add-int v44, p3, p5

    move/from16 v0, v42

    move/from16 v1, v44

    if-ge v0, v1, :cond_2c

    .line 395
    sub-int v44, v42, p3

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/googlecode/javacv/Blobs;->jrow:I

    .line 398
    move/from16 v41, p2

    .local v41, icol:I
    :goto_3
    add-int v44, p2, p4

    move/from16 v0, v41

    move/from16 v1, v44

    if-ge v0, v1, :cond_2b

    .line 400
    sub-int v44, v41, p2

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/googlecode/javacv/Blobs;->jcol:I

    .line 403
    move-object/from16 v0, p0

    iput v10, v0, Lcom/googlecode/javacv/Blobs;->ColorC:I

    move-object/from16 v0, p0

    iput v10, v0, Lcom/googlecode/javacv/Blobs;->ColorB:I

    move-object/from16 v0, p0

    iput v10, v0, Lcom/googlecode/javacv/Blobs;->ColorA:I

    .line 404
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/googlecode/javacv/Blobs;->LabelD:I

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/googlecode/javacv/Blobs;->LabelC:I

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/googlecode/javacv/Blobs;->LabelB:I

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/googlecode/javacv/Blobs;->LabelA:I

    .line 405
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->jrow:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->jcol:I

    move/from16 v45, v0

    move-object/from16 v0, v26

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(II)D

    move-result-wide v44

    move-wide/from16 v0, v44

    double-to-int v0, v0

    move/from16 v44, v0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/googlecode/javacv/Blobs;->ColorD:I

    .line 407
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->jrow:I

    move/from16 v44, v0

    if-eqz v44, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->jcol:I

    move/from16 v44, v0

    if-nez v44, :cond_15

    .line 409
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->jcol:I

    move/from16 v44, v0

    if-lez v44, :cond_b

    .line 411
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->jrow:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->jcol:I

    move/from16 v45, v0

    add-int/lit8 v45, v45, -0x1

    move-object/from16 v0, v26

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(II)D

    move-result-wide v44

    move-wide/from16 v0, v44

    double-to-int v0, v0

    move/from16 v44, v0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/googlecode/javacv/Blobs;->ColorC:I

    .line 412
    sget-object v44, Lcom/googlecode/javacv/Blobs;->LabelMat:[[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->jrow:I

    move/from16 v45, v0

    aget-object v44, v44, v45

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->jcol:I

    move/from16 v45, v0

    add-int/lit8 v45, v45, -0x1

    aget v44, v44, v45

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/googlecode/javacv/Blobs;->LabelC:I

    .line 414
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->jrow:I

    move/from16 v44, v0

    if-lez v44, :cond_c

    .line 416
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->jrow:I

    move/from16 v44, v0

    add-int/lit8 v44, v44, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->jcol:I

    move/from16 v45, v0

    move-object/from16 v0, v26

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(II)D

    move-result-wide v44

    move-wide/from16 v0, v44

    double-to-int v0, v0

    move/from16 v44, v0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/googlecode/javacv/Blobs;->ColorB:I

    .line 417
    sget-object v44, Lcom/googlecode/javacv/Blobs;->LabelMat:[[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->jrow:I

    move/from16 v45, v0

    add-int/lit8 v45, v45, -0x1

    aget-object v44, v44, v45

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->jcol:I

    move/from16 v45, v0

    aget v44, v44, v45

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/googlecode/javacv/Blobs;->LabelB:I

    .line 429
    :cond_c
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->ColorA:I

    move/from16 v44, v0

    if-lez v44, :cond_d

    const/16 v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/googlecode/javacv/Blobs;->ColorA:I

    .line 430
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->ColorB:I

    move/from16 v44, v0

    if-lez v44, :cond_e

    const/16 v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/googlecode/javacv/Blobs;->ColorB:I

    .line 431
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->ColorC:I

    move/from16 v44, v0

    if-lez v44, :cond_f

    const/16 v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/googlecode/javacv/Blobs;->ColorC:I

    .line 432
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->ColorD:I

    move/from16 v44, v0

    if-lez v44, :cond_10

    const/16 v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/googlecode/javacv/Blobs;->ColorD:I

    .line 435
    :cond_10
    const/4 v9, 0x0

    .line 436
    .local v9, Case:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->ColorA:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->ColorB:I

    move/from16 v45, v0

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_1c

    .line 438
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->ColorC:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->ColorD:I

    move/from16 v45, v0

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->ColorA:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->ColorC:I

    move/from16 v45, v0

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_19

    const/4 v9, 0x1

    .line 448
    :goto_5
    const/16 v44, 0x1

    move/from16 v0, v44

    if-ne v9, v0, :cond_20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->LabelC:I

    move/from16 v44, v0

    const/16 v45, -0x1

    const/16 v46, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v46

    invoke-virtual {v0, v1, v2, v3}, Lcom/googlecode/javacv/Blobs;->OldRegion(III)V

    .line 474
    :cond_11
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->jrow:I

    move/from16 v44, v0

    move/from16 v0, v44

    move/from16 v1, p5

    if-eq v0, v1, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->jcol:I

    move/from16 v44, v0

    move/from16 v0, v44

    move/from16 v1, p4

    if-ne v0, v1, :cond_14

    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->ColorD:I

    move/from16 v44, v0

    move/from16 v0, v44

    if-ne v0, v10, :cond_14

    .line 476
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->jcol:I

    move/from16 v44, v0

    move/from16 v0, v44

    move/from16 v1, p4

    if-ge v0, v1, :cond_2a

    .line 478
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->ColorC:I

    move/from16 v44, v0

    move/from16 v0, v44

    if-eq v0, v10, :cond_13

    .line 480
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->LabelB:I

    move/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/googlecode/javacv/Blobs;->SubsumptionChain(I)I

    move-result v15

    .line 481
    .local v15, LabelRoot:I
    sget-object v44, Lcom/googlecode/javacv/Blobs;->SubsumedLabel:[I

    const/16 v45, 0x0

    aput v45, v44, v15

    .line 492
    .end local v15           #LabelRoot:I
    :cond_13
    :goto_7
    const/16 v44, 0x0

    const/16 v45, -0x1

    const/16 v46, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v46

    invoke-virtual {v0, v1, v2, v3}, Lcom/googlecode/javacv/Blobs;->OldRegion(III)V

    .line 495
    :cond_14
    sget-object v44, Lcom/googlecode/javacv/Blobs;->LabelMat:[[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->jrow:I

    move/from16 v45, v0

    aget-object v44, v44, v45

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->jcol:I

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->LabelD:I

    move/from16 v46, v0

    aput v46, v44, v45

    .line 398
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_3

    .line 422
    .end local v9           #Case:I
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->jrow:I

    move/from16 v44, v0

    add-int/lit8 v44, v44, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->jcol:I

    move/from16 v45, v0

    add-int/lit8 v45, v45, -0x1

    move-object/from16 v0, v26

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(II)D

    move-result-wide v44

    move-wide/from16 v0, v44

    double-to-int v0, v0

    move/from16 v44, v0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/googlecode/javacv/Blobs;->ColorA:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->ColorA:I

    move/from16 v44, v0

    if-lez v44, :cond_16

    const/16 v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/googlecode/javacv/Blobs;->ColorA:I

    .line 423
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->jrow:I

    move/from16 v44, v0

    add-int/lit8 v44, v44, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->jcol:I

    move/from16 v45, v0

    move-object/from16 v0, v26

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(II)D

    move-result-wide v44

    move-wide/from16 v0, v44

    double-to-int v0, v0

    move/from16 v44, v0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/googlecode/javacv/Blobs;->ColorB:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->ColorB:I

    move/from16 v44, v0

    if-lez v44, :cond_17

    const/16 v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/googlecode/javacv/Blobs;->ColorB:I

    .line 424
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->jrow:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->jcol:I

    move/from16 v45, v0

    add-int/lit8 v45, v45, -0x1

    move-object/from16 v0, v26

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(II)D

    move-result-wide v44

    move-wide/from16 v0, v44

    double-to-int v0, v0

    move/from16 v44, v0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/googlecode/javacv/Blobs;->ColorC:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->ColorC:I

    move/from16 v44, v0

    if-lez v44, :cond_18

    const/16 v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/googlecode/javacv/Blobs;->ColorC:I

    .line 425
    :cond_18
    sget-object v44, Lcom/googlecode/javacv/Blobs;->LabelMat:[[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->jrow:I

    move/from16 v45, v0

    add-int/lit8 v45, v45, -0x1

    aget-object v44, v44, v45

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->jcol:I

    move/from16 v45, v0

    add-int/lit8 v45, v45, -0x1

    aget v44, v44, v45

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/googlecode/javacv/Blobs;->LabelA:I

    .line 426
    sget-object v44, Lcom/googlecode/javacv/Blobs;->LabelMat:[[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->jrow:I

    move/from16 v45, v0

    add-int/lit8 v45, v45, -0x1

    aget-object v44, v44, v45

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->jcol:I

    move/from16 v45, v0

    aget v44, v44, v45

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/googlecode/javacv/Blobs;->LabelB:I

    .line 427
    sget-object v44, Lcom/googlecode/javacv/Blobs;->LabelMat:[[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->jrow:I

    move/from16 v45, v0

    aget-object v44, v44, v45

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->jcol:I

    move/from16 v45, v0

    add-int/lit8 v45, v45, -0x1

    aget v44, v44, v45

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/googlecode/javacv/Blobs;->LabelC:I

    goto/16 :goto_4

    .line 438
    .restart local v9       #Case:I
    :cond_19
    const/4 v9, 0x2

    goto/16 :goto_5

    .line 439
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->ColorA:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->ColorC:I

    move/from16 v45, v0

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_1b

    const/4 v9, 0x5

    goto/16 :goto_5

    :cond_1b
    const/4 v9, 0x6

    goto/16 :goto_5

    .line 443
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->ColorC:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->ColorD:I

    move/from16 v45, v0

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->ColorA:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->ColorC:I

    move/from16 v45, v0

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_1d

    const/4 v9, 0x3

    goto/16 :goto_5

    :cond_1d
    const/4 v9, 0x4

    goto/16 :goto_5

    .line 444
    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->ColorA:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->ColorC:I

    move/from16 v45, v0

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_1f

    const/4 v9, 0x7

    goto/16 :goto_5

    :cond_1f
    const/16 v9, 0x8

    goto/16 :goto_5

    .line 449
    :cond_20
    const/16 v44, 0x2

    move/from16 v0, v44

    if-eq v9, v0, :cond_21

    const/16 v44, 0x3

    move/from16 v0, v44

    if-ne v9, v0, :cond_22

    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->LabelC:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->LabelB:I

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->LabelC:I

    move/from16 v46, v0

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v46

    invoke-virtual {v0, v1, v2, v3}, Lcom/googlecode/javacv/Blobs;->OldRegion(III)V

    goto/16 :goto_6

    .line 450
    :cond_22
    const/16 v44, 0x5

    move/from16 v0, v44

    if-eq v9, v0, :cond_23

    const/16 v44, 0x8

    move/from16 v0, v44

    if-ne v9, v0, :cond_26

    .line 452
    :cond_23
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->jrow:I

    move/from16 v44, v0

    move/from16 v0, v44

    move/from16 v1, p5

    if-eq v0, v1, :cond_24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->jcol:I

    move/from16 v44, v0

    move/from16 v0, v44

    move/from16 v1, p4

    if-ne v0, v1, :cond_25

    :cond_24
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->ColorD:I

    move/from16 v44, v0

    move/from16 v0, v44

    if-ne v0, v10, :cond_25

    const/16 v44, 0x0

    const/16 v45, -0x1

    const/16 v46, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v46

    invoke-virtual {v0, v1, v2, v3}, Lcom/googlecode/javacv/Blobs;->OldRegion(III)V

    goto/16 :goto_6

    .line 453
    :cond_25
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->LabelB:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/Blobs;->NewRegion(I)V

    goto/16 :goto_6

    .line 455
    :cond_26
    const/16 v44, 0x6

    move/from16 v0, v44

    if-eq v9, v0, :cond_27

    const/16 v44, 0x7

    move/from16 v0, v44

    if-ne v9, v0, :cond_28

    :cond_27
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->LabelB:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->LabelB:I

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->LabelC:I

    move/from16 v46, v0

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v46

    invoke-virtual {v0, v1, v2, v3}, Lcom/googlecode/javacv/Blobs;->OldRegion(III)V

    goto/16 :goto_6

    .line 458
    :cond_28
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->LabelB:I

    move/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/googlecode/javacv/Blobs;->SubsumptionChain(I)I

    move-result v13

    .line 459
    .local v13, LabelBRoot:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->LabelC:I

    move/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/googlecode/javacv/Blobs;->SubsumptionChain(I)I

    move-result v14

    .line 460
    .local v14, LabelCRoot:I
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 462
    .restart local v15       #LabelRoot:I
    if-ge v13, v14, :cond_29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->LabelB:I

    move/from16 v44, v0

    const/16 v45, -0x1

    const/16 v46, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v46

    invoke-virtual {v0, v1, v2, v3}, Lcom/googlecode/javacv/Blobs;->OldRegion(III)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->LabelC:I

    move/from16 v16, v0

    .line 464
    .local v16, LabelX:I
    :goto_8
    move/from16 v20, v16

    .line 465
    .local v20, NextLabelX:I
    :goto_9
    move/from16 v0, v16

    if-ge v15, v0, :cond_11

    .line 467
    sget-object v44, Lcom/googlecode/javacv/Blobs;->SubsumedLabel:[I

    aget v20, v44, v16

    .line 468
    sget-object v44, Lcom/googlecode/javacv/Blobs;->SubsumedLabel:[I

    aput v15, v44, v16

    .line 469
    move/from16 v16, v20

    goto :goto_9

    .line 463
    .end local v16           #LabelX:I
    .end local v20           #NextLabelX:I
    :cond_29
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->LabelC:I

    move/from16 v44, v0

    const/16 v45, -0x1

    const/16 v46, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v46

    invoke-virtual {v0, v1, v2, v3}, Lcom/googlecode/javacv/Blobs;->OldRegion(III)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->LabelB:I

    move/from16 v16, v0

    .restart local v16       #LabelX:I
    goto :goto_8

    .line 484
    .end local v13           #LabelBRoot:I
    .end local v14           #LabelCRoot:I
    .end local v15           #LabelRoot:I
    .end local v16           #LabelX:I
    :cond_2a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->jrow:I

    move/from16 v44, v0

    move/from16 v0, v44

    move/from16 v1, p5

    if-ge v0, v1, :cond_13

    .line 486
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->ColorB:I

    move/from16 v44, v0

    move/from16 v0, v44

    if-eq v0, v10, :cond_13

    .line 488
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/Blobs;->LabelC:I

    move/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/googlecode/javacv/Blobs;->SubsumptionChain(I)I

    move-result v15

    .line 489
    .restart local v15       #LabelRoot:I
    sget-object v44, Lcom/googlecode/javacv/Blobs;->SubsumedLabel:[I

    const/16 v45, 0x0

    aput v45, v44, v15

    goto/16 :goto_7

    .line 393
    .end local v9           #Case:I
    .end local v15           #LabelRoot:I
    :cond_2b
    add-int/lit8 v42, v42, 0x1

    goto/16 :goto_2

    .line 501
    .end local v41           #icol:I
    :cond_2c
    const/16 v21, 0x0

    .line 502
    .local v21, Offset:I
    const/4 v12, 0x1

    .local v12, Label:I
    :goto_a
    sget v44, Lcom/googlecode/javacv/Blobs;->MaxLabel:I

    move/from16 v0, v44

    if-gt v12, v0, :cond_2e

    .line 504
    sget-object v44, Lcom/googlecode/javacv/Blobs;->SubsumedLabel:[I

    aget v44, v44, v12

    const/16 v45, -0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-le v0, v1, :cond_2d

    add-int/lit8 v21, v21, 0x1

    .line 505
    :cond_2d
    sget-object v44, Lcom/googlecode/javacv/Blobs;->CondensationMap:[I

    sub-int v45, v12, v21

    aput v45, v44, v12

    .line 502
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    .line 509
    :cond_2e
    const/4 v12, 0x1

    :goto_b
    sget v44, Lcom/googlecode/javacv/Blobs;->MaxLabel:I

    move/from16 v0, v44

    if-gt v12, v0, :cond_30

    .line 511
    invoke-static {v12}, Lcom/googlecode/javacv/Blobs;->SubsumptionChain(I)I

    move-result v7

    .line 512
    .local v7, BetterLabel:I
    if-eq v7, v12, :cond_2f

    const/16 v44, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v7, v12, v1}, Lcom/googlecode/javacv/Blobs;->Subsume(III)V

    .line 509
    :cond_2f
    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    .line 516
    .end local v7           #BetterLabel:I
    :cond_30
    const/16 v18, 0x0

    .line 517
    .local v18, NewMaxLabel:I
    const/16 v22, 0x1

    .local v22, OldLabel:I
    :goto_c
    sget v44, Lcom/googlecode/javacv/Blobs;->MaxLabel:I

    move/from16 v0, v22

    move/from16 v1, v44

    if-gt v0, v1, :cond_32

    .line 519
    sget-object v44, Lcom/googlecode/javacv/Blobs;->SubsumedLabel:[I

    aget v44, v44, v22

    if-gez v44, :cond_31

    .line 521
    sget-object v44, Lcom/googlecode/javacv/Blobs;->RegionData:[[D

    aget-object v24, v44, v22

    .line 522
    .local v24, OldRegion:[D
    sget v44, Lcom/googlecode/javacv/Blobs;->BLOBPARENT:I

    aget-wide v44, v24, v44

    move-wide/from16 v0, v44

    double-to-int v0, v0

    move/from16 v23, v0

    .line 523
    .local v23, OldParent:I
    sget-object v44, Lcom/googlecode/javacv/Blobs;->CondensationMap:[I

    aget v17, v44, v22

    .line 524
    .local v17, NewLabel:I
    invoke-static/range {v23 .. v23}, Lcom/googlecode/javacv/Blobs;->SubsumptionChain(I)I

    move-result v19

    .line 525
    .local v19, NewParent:I
    sget-object v44, Lcom/googlecode/javacv/Blobs;->CondensationMap:[I

    aget v19, v44, v19

    .line 526
    sget v44, Lcom/googlecode/javacv/Blobs;->BLOBLABEL:I

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v45, v0

    aput-wide v45, v24, v44

    .line 527
    sget v44, Lcom/googlecode/javacv/Blobs;->BLOBPARENT:I

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v45, v0

    aput-wide v45, v24, v44

    .line 528
    const/16 v44, 0x0

    sget-object v45, Lcom/googlecode/javacv/Blobs;->RegionData:[[D

    aget-object v45, v45, v17

    const/16 v46, 0x0

    sget v47, Lcom/googlecode/javacv/Blobs;->BLOBDATACOUNT:I

    move-object/from16 v0, v24

    move/from16 v1, v44

    move-object/from16 v2, v45

    move/from16 v3, v46

    move/from16 v4, v47

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 529
    move/from16 v18, v17

    .line 517
    .end local v17           #NewLabel:I
    .end local v19           #NewParent:I
    .end local v23           #OldParent:I
    .end local v24           #OldRegion:[D
    :cond_31
    add-int/lit8 v22, v22, 0x1

    goto :goto_c

    .line 534
    :cond_32
    add-int/lit8 v12, v18, 0x1

    :goto_d
    sget v44, Lcom/googlecode/javacv/Blobs;->MaxLabel:I

    move/from16 v0, v44

    if-gt v12, v0, :cond_33

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/googlecode/javacv/Blobs;->ResetRegion(I)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_d

    .line 535
    :cond_33
    sput v18, Lcom/googlecode/javacv/Blobs;->MaxLabel:I

    .line 538
    sget v12, Lcom/googlecode/javacv/Blobs;->MaxLabel:I

    :goto_e
    if-lez v12, :cond_35

    .line 540
    sget-object v44, Lcom/googlecode/javacv/Blobs;->RegionData:[[D

    aget-object v40, v44, v12

    .line 541
    .local v40, ThisRegion:[D
    sget v44, Lcom/googlecode/javacv/Blobs;->BLOBAREA:I

    aget-wide v44, v40, v44

    move-wide/from16 v0, v44

    double-to-int v0, v0

    move/from16 v38, v0

    .line 542
    .local v38, ThisArea:I
    move/from16 v0, v38

    move/from16 v1, p7

    if-ge v0, v1, :cond_34

    .line 544
    sget v44, Lcom/googlecode/javacv/Blobs;->BLOBPARENT:I

    aget-wide v44, v40, v44

    move-wide/from16 v0, v44

    double-to-int v0, v0

    move/from16 v39, v0

    .line 545
    .local v39, ThisParent:I
    sget-object v44, Lcom/googlecode/javacv/Blobs;->SubsumedLabel:[I

    aput v39, v44, v12

    .line 538
    .end local v39           #ThisParent:I
    :goto_f
    add-int/lit8 v12, v12, -0x1

    goto :goto_e

    .line 547
    :cond_34
    sget-object v44, Lcom/googlecode/javacv/Blobs;->SubsumedLabel:[I

    const/16 v45, -0x1

    aput v45, v44, v12

    goto :goto_f

    .line 551
    .end local v38           #ThisArea:I
    .end local v40           #ThisRegion:[D
    :cond_35
    const/16 v21, 0x0

    .line 552
    const/4 v12, 0x1

    :goto_10
    sget v44, Lcom/googlecode/javacv/Blobs;->MaxLabel:I

    move/from16 v0, v44

    if-gt v12, v0, :cond_37

    .line 554
    sget-object v44, Lcom/googlecode/javacv/Blobs;->SubsumedLabel:[I

    aget v44, v44, v12

    const/16 v45, -0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-le v0, v1, :cond_36

    add-int/lit8 v21, v21, 0x1

    .line 555
    :cond_36
    sget-object v44, Lcom/googlecode/javacv/Blobs;->CondensationMap:[I

    sub-int v45, v12, v21

    aput v45, v44, v12

    .line 552
    add-int/lit8 v12, v12, 0x1

    goto :goto_10

    .line 559
    :cond_37
    const/4 v12, 0x1

    :goto_11
    sget v44, Lcom/googlecode/javacv/Blobs;->MaxLabel:I

    move/from16 v0, v44

    if-gt v12, v0, :cond_39

    .line 561
    invoke-static {v12}, Lcom/googlecode/javacv/Blobs;->SubsumptionChain(I)I

    move-result v7

    .line 562
    .restart local v7       #BetterLabel:I
    if-eq v7, v12, :cond_38

    const/16 v44, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v7, v12, v1}, Lcom/googlecode/javacv/Blobs;->Subsume(III)V

    .line 559
    :cond_38
    add-int/lit8 v12, v12, 0x1

    goto :goto_11

    .line 566
    .end local v7           #BetterLabel:I
    :cond_39
    const/16 v22, 0x1

    :goto_12
    sget v44, Lcom/googlecode/javacv/Blobs;->MaxLabel:I

    move/from16 v0, v22

    move/from16 v1, v44

    if-gt v0, v1, :cond_3b

    .line 568
    sget-object v44, Lcom/googlecode/javacv/Blobs;->SubsumedLabel:[I

    aget v44, v44, v22

    if-gez v44, :cond_3a

    .line 570
    sget-object v44, Lcom/googlecode/javacv/Blobs;->RegionData:[[D

    aget-object v24, v44, v22

    .line 571
    .restart local v24       #OldRegion:[D
    sget v44, Lcom/googlecode/javacv/Blobs;->BLOBPARENT:I

    aget-wide v44, v24, v44

    move-wide/from16 v0, v44

    double-to-int v0, v0

    move/from16 v23, v0

    .line 572
    .restart local v23       #OldParent:I
    sget-object v44, Lcom/googlecode/javacv/Blobs;->CondensationMap:[I

    aget v17, v44, v22

    .line 573
    .restart local v17       #NewLabel:I
    invoke-static/range {v23 .. v23}, Lcom/googlecode/javacv/Blobs;->SubsumptionChain(I)I

    move-result v19

    .line 574
    .restart local v19       #NewParent:I
    sget-object v44, Lcom/googlecode/javacv/Blobs;->CondensationMap:[I

    aget v19, v44, v19

    .line 575
    sget v44, Lcom/googlecode/javacv/Blobs;->BLOBLABEL:I

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v45, v0

    aput-wide v45, v24, v44

    .line 576
    sget v44, Lcom/googlecode/javacv/Blobs;->BLOBPARENT:I

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v45, v0

    aput-wide v45, v24, v44

    .line 577
    const/16 v44, 0x0

    sget-object v45, Lcom/googlecode/javacv/Blobs;->RegionData:[[D

    aget-object v45, v45, v17

    const/16 v46, 0x0

    sget v47, Lcom/googlecode/javacv/Blobs;->BLOBDATACOUNT:I

    move-object/from16 v0, v24

    move/from16 v1, v44

    move-object/from16 v2, v45

    move/from16 v3, v46

    move/from16 v4, v47

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 578
    move/from16 v18, v17

    .line 566
    .end local v17           #NewLabel:I
    .end local v19           #NewParent:I
    .end local v23           #OldParent:I
    .end local v24           #OldRegion:[D
    :cond_3a
    add-int/lit8 v22, v22, 0x1

    goto :goto_12

    .line 583
    :cond_3b
    add-int/lit8 v12, v18, 0x1

    :goto_13
    sget v44, Lcom/googlecode/javacv/Blobs;->MaxLabel:I

    move/from16 v0, v44

    if-gt v12, v0, :cond_3c

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/googlecode/javacv/Blobs;->ResetRegion(I)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_13

    .line 584
    :cond_3c
    sput v18, Lcom/googlecode/javacv/Blobs;->MaxLabel:I

    .line 587
    const/4 v12, 0x0

    :goto_14
    sget v44, Lcom/googlecode/javacv/Blobs;->MaxLabel:I

    move/from16 v0, v44

    if-gt v12, v0, :cond_3e

    .line 589
    sget-object v44, Lcom/googlecode/javacv/Blobs;->RegionData:[[D

    aget-object v40, v44, v12

    .line 592
    .restart local v40       #ThisRegion:[D
    sget v44, Lcom/googlecode/javacv/Blobs;->BLOBAREA:I

    aget-wide v5, v40, v44

    .line 593
    .local v5, Area:D
    sget v44, Lcom/googlecode/javacv/Blobs;->BLOBSUMX:I

    aget-wide v28, v40, v44

    .line 594
    .local v28, SumX:D
    sget v44, Lcom/googlecode/javacv/Blobs;->BLOBSUMY:I

    aget-wide v34, v40, v44

    .line 595
    .local v34, SumY:D
    sget v44, Lcom/googlecode/javacv/Blobs;->BLOBSUMXX:I

    aget-wide v30, v40, v44

    .line 596
    .local v30, SumXX:D
    sget v44, Lcom/googlecode/javacv/Blobs;->BLOBSUMYY:I

    aget-wide v36, v40, v44

    .line 597
    .local v36, SumYY:D
    sget v44, Lcom/googlecode/javacv/Blobs;->BLOBSUMXY:I

    aget-wide v32, v40, v44

    .line 600
    .local v32, SumXY:D
    div-double v28, v28, v5

    .line 601
    div-double v34, v34, v5

    .line 602
    div-double v30, v30, v5

    .line 603
    div-double v36, v36, v5

    .line 604
    div-double v32, v32, v5

    .line 607
    mul-double v44, v28, v28

    sub-double v30, v30, v44

    .line 608
    mul-double v44, v34, v34

    sub-double v36, v36, v44

    .line 609
    mul-double v44, v28, v34

    sub-double v32, v32, v44

    .line 610
    const-wide v44, -0x42f97b64795ed465L

    cmpl-double v44, v32, v44

    if-lez v44, :cond_3d

    const-wide v44, 0x3d06849b86a12b9bL

    cmpg-double v44, v32, v44

    if-gez v44, :cond_3d

    const-wide/16 v32, 0x0

    .line 612
    :cond_3d
    sget v44, Lcom/googlecode/javacv/Blobs;->BLOBSUMX:I

    aput-wide v28, v40, v44

    .line 613
    sget v44, Lcom/googlecode/javacv/Blobs;->BLOBSUMY:I

    aput-wide v34, v40, v44

    .line 614
    sget v44, Lcom/googlecode/javacv/Blobs;->BLOBSUMXX:I

    aput-wide v30, v40, v44

    .line 615
    sget v44, Lcom/googlecode/javacv/Blobs;->BLOBSUMYY:I

    aput-wide v36, v40, v44

    .line 616
    sget v44, Lcom/googlecode/javacv/Blobs;->BLOBSUMXY:I

    aput-wide v32, v40, v44

    .line 618
    const/16 v44, 0x0

    sget-object v45, Lcom/googlecode/javacv/Blobs;->RegionData:[[D

    aget-object v45, v45, v12

    const/16 v46, 0x0

    sget v47, Lcom/googlecode/javacv/Blobs;->BLOBDATACOUNT:I

    move-object/from16 v0, v40

    move/from16 v1, v44

    move-object/from16 v2, v45

    move/from16 v3, v46

    move/from16 v4, v47

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 587
    add-int/lit8 v12, v12, 0x1

    goto :goto_14

    .line 622
    .end local v5           #Area:D
    .end local v28           #SumX:D
    .end local v30           #SumXX:D
    .end local v32           #SumXY:D
    .end local v34           #SumY:D
    .end local v36           #SumYY:D
    .end local v40           #ThisRegion:[D
    :cond_3e
    sget-object v44, Lcom/googlecode/javacv/Blobs;->RegionData:[[D

    const/16 v45, 0x0

    aget-object v8, v44, v45

    .line 623
    sget v44, Lcom/googlecode/javacv/Blobs;->BLOBSUMXX:I

    sget v45, Lcom/googlecode/javacv/Blobs;->BLOBSUMYY:I

    sget v46, Lcom/googlecode/javacv/Blobs;->BLOBSUMXY:I

    const-wide/16 v47, 0x0

    aput-wide v47, v8, v46

    aput-wide v47, v8, v45

    aput-wide v47, v8, v44

    .line 624
    const/16 v44, 0x0

    sget-object v45, Lcom/googlecode/javacv/Blobs;->RegionData:[[D

    const/16 v46, 0x0

    aget-object v45, v45, v46

    const/16 v46, 0x0

    sget v47, Lcom/googlecode/javacv/Blobs;->BLOBDATACOUNT:I

    move/from16 v0, v44

    move-object/from16 v1, v45

    move/from16 v2, v46

    move/from16 v3, v47

    invoke-static {v8, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 626
    sget v44, Lcom/googlecode/javacv/Blobs;->MaxLabel:I

    goto/16 :goto_0
.end method

.method public NewRegion(I)V
    .locals 9
    .parameter "ParentLabel"

    .prologue
    const-wide/high16 v7, 0x3ff0

    const/4 v6, 0x0

    .line 245
    sget v3, Lcom/googlecode/javacv/Blobs;->MaxLabel:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/googlecode/javacv/Blobs;->MaxLabel:I

    iput v3, p0, Lcom/googlecode/javacv/Blobs;->LabelD:I

    .line 246
    sget-object v3, Lcom/googlecode/javacv/Blobs;->RegionData:[[D

    iget v4, p0, Lcom/googlecode/javacv/Blobs;->LabelD:I

    aget-object v2, v3, v4

    .line 247
    .local v2, RegionD:[D
    sget v3, Lcom/googlecode/javacv/Blobs;->BLOBLABEL:I

    iget v4, p0, Lcom/googlecode/javacv/Blobs;->LabelD:I

    int-to-double v4, v4

    aput-wide v4, v2, v3

    .line 248
    sget v3, Lcom/googlecode/javacv/Blobs;->BLOBPARENT:I

    int-to-double v4, p1

    aput-wide v4, v2, v3

    .line 249
    sget v3, Lcom/googlecode/javacv/Blobs;->BLOBCOLOR:I

    iget v4, p0, Lcom/googlecode/javacv/Blobs;->ColorD:I

    int-to-double v4, v4

    aput-wide v4, v2, v3

    .line 250
    sget v3, Lcom/googlecode/javacv/Blobs;->BLOBAREA:I

    aput-wide v7, v2, v3

    .line 251
    sget v3, Lcom/googlecode/javacv/Blobs;->BLOBPERIMETER:I

    const-wide/high16 v4, 0x4000

    aput-wide v4, v2, v3

    .line 252
    sget v3, Lcom/googlecode/javacv/Blobs;->BLOBSUMX:I

    iget v4, p0, Lcom/googlecode/javacv/Blobs;->jcol:I

    int-to-double v4, v4

    aput-wide v4, v2, v3

    .line 253
    sget v3, Lcom/googlecode/javacv/Blobs;->BLOBSUMY:I

    iget v4, p0, Lcom/googlecode/javacv/Blobs;->jrow:I

    int-to-double v4, v4

    aput-wide v4, v2, v3

    .line 254
    sget v3, Lcom/googlecode/javacv/Blobs;->BLOBSUMXX:I

    iget v4, p0, Lcom/googlecode/javacv/Blobs;->jcol:I

    iget v5, p0, Lcom/googlecode/javacv/Blobs;->jcol:I

    mul-int/2addr v4, v5

    int-to-double v4, v4

    aput-wide v4, v2, v3

    .line 255
    sget v3, Lcom/googlecode/javacv/Blobs;->BLOBSUMYY:I

    iget v4, p0, Lcom/googlecode/javacv/Blobs;->jrow:I

    iget v5, p0, Lcom/googlecode/javacv/Blobs;->jrow:I

    mul-int/2addr v4, v5

    int-to-double v4, v4

    aput-wide v4, v2, v3

    .line 256
    sget v3, Lcom/googlecode/javacv/Blobs;->BLOBSUMXY:I

    iget v4, p0, Lcom/googlecode/javacv/Blobs;->jcol:I

    iget v5, p0, Lcom/googlecode/javacv/Blobs;->jrow:I

    mul-int/2addr v4, v5

    int-to-double v4, v4

    aput-wide v4, v2, v3

    .line 257
    sget v3, Lcom/googlecode/javacv/Blobs;->BLOBMINX:I

    iget v4, p0, Lcom/googlecode/javacv/Blobs;->jcol:I

    int-to-double v4, v4

    aput-wide v4, v2, v3

    .line 258
    sget v3, Lcom/googlecode/javacv/Blobs;->BLOBMAXX:I

    iget v4, p0, Lcom/googlecode/javacv/Blobs;->jcol:I

    int-to-double v4, v4

    aput-wide v4, v2, v3

    .line 259
    sget v3, Lcom/googlecode/javacv/Blobs;->BLOBMINY:I

    iget v4, p0, Lcom/googlecode/javacv/Blobs;->jrow:I

    int-to-double v4, v4

    aput-wide v4, v2, v3

    .line 260
    sget v3, Lcom/googlecode/javacv/Blobs;->BLOBMAXY:I

    iget v4, p0, Lcom/googlecode/javacv/Blobs;->jrow:I

    int-to-double v4, v4

    aput-wide v4, v2, v3

    .line 262
    sget-object v3, Lcom/googlecode/javacv/Blobs;->RegionData:[[D

    iget v4, p0, Lcom/googlecode/javacv/Blobs;->LabelD:I

    aget-object v3, v3, v4

    sget v4, Lcom/googlecode/javacv/Blobs;->BLOBDATACOUNT:I

    invoke-static {v2, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    sget-object v3, Lcom/googlecode/javacv/Blobs;->SubsumedLabel:[I

    iget v4, p0, Lcom/googlecode/javacv/Blobs;->LabelD:I

    const/4 v5, -0x1

    aput v5, v3, v4

    .line 265
    sget-object v3, Lcom/googlecode/javacv/Blobs;->RegionData:[[D

    iget v4, p0, Lcom/googlecode/javacv/Blobs;->LabelB:I

    aget-object v0, v3, v4

    .line 266
    .local v0, RegionB:[D
    sget v3, Lcom/googlecode/javacv/Blobs;->BLOBPERIMETER:I

    aget-wide v4, v0, v3

    add-double/2addr v4, v7

    aput-wide v4, v0, v3

    .line 267
    sget-object v3, Lcom/googlecode/javacv/Blobs;->RegionData:[[D

    iget v4, p0, Lcom/googlecode/javacv/Blobs;->LabelB:I

    aget-object v3, v3, v4

    sget v4, Lcom/googlecode/javacv/Blobs;->BLOBDATACOUNT:I

    invoke-static {v0, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 269
    sget-object v3, Lcom/googlecode/javacv/Blobs;->RegionData:[[D

    iget v4, p0, Lcom/googlecode/javacv/Blobs;->LabelC:I

    aget-object v1, v3, v4

    .line 270
    .local v1, RegionC:[D
    sget v3, Lcom/googlecode/javacv/Blobs;->BLOBPERIMETER:I

    aget-wide v4, v1, v3

    add-double/2addr v4, v7

    aput-wide v4, v1, v3

    .line 272
    sget-object v3, Lcom/googlecode/javacv/Blobs;->RegionData:[[D

    iget v4, p0, Lcom/googlecode/javacv/Blobs;->LabelC:I

    aget-object v3, v3, v4

    sget v4, Lcom/googlecode/javacv/Blobs;->BLOBDATACOUNT:I

    invoke-static {v1, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 273
    return-void
.end method

.method public OldRegion(III)V
    .locals 12
    .parameter "NewLabelD"
    .parameter "Label1"
    .parameter "Label2"

    .prologue
    const-wide/16 v10, 0x0

    const-wide/high16 v7, 0x3ff0

    const/4 v9, 0x0

    .line 206
    const/4 v0, 0x0

    .line 208
    .local v0, DeltaPerimeter:I
    if-ltz p2, :cond_0

    if-eq p2, p1, :cond_0

    .line 210
    add-int/lit8 v0, v0, 0x1

    .line 211
    sget-object v4, Lcom/googlecode/javacv/Blobs;->RegionData:[[D

    aget-object v1, v4, p2

    .line 212
    .local v1, Region1:[D
    sget v4, Lcom/googlecode/javacv/Blobs;->BLOBPERIMETER:I

    aget-wide v5, v1, v4

    add-double/2addr v5, v7

    aput-wide v5, v1, v4

    .line 213
    sget-object v4, Lcom/googlecode/javacv/Blobs;->RegionData:[[D

    aget-object v4, v4, p2

    sget v5, Lcom/googlecode/javacv/Blobs;->BLOBDATACOUNT:I

    invoke-static {v1, v9, v4, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    .end local v1           #Region1:[D
    :cond_0
    if-ltz p3, :cond_1

    if-eq p3, p1, :cond_1

    .line 218
    add-int/lit8 v0, v0, 0x1

    .line 219
    sget-object v4, Lcom/googlecode/javacv/Blobs;->RegionData:[[D

    aget-object v2, v4, p3

    .line 220
    .local v2, Region2:[D
    sget v4, Lcom/googlecode/javacv/Blobs;->BLOBPERIMETER:I

    aget-wide v5, v2, v4

    add-double/2addr v5, v7

    aput-wide v5, v2, v4

    .line 221
    sget-object v4, Lcom/googlecode/javacv/Blobs;->RegionData:[[D

    aget-object v4, v4, p3

    sget v5, Lcom/googlecode/javacv/Blobs;->BLOBDATACOUNT:I

    invoke-static {v2, v9, v4, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    .end local v2           #Region2:[D
    :cond_1
    iput p1, p0, Lcom/googlecode/javacv/Blobs;->LabelD:I

    .line 225
    sget-object v4, Lcom/googlecode/javacv/Blobs;->RegionData:[[D

    iget v5, p0, Lcom/googlecode/javacv/Blobs;->LabelD:I

    aget-object v3, v4, v5

    .line 226
    .local v3, RegionD:[D
    sget v4, Lcom/googlecode/javacv/Blobs;->BLOBLABEL:I

    iget v5, p0, Lcom/googlecode/javacv/Blobs;->LabelD:I

    int-to-double v5, v5

    aput-wide v5, v3, v4

    .line 227
    sget v4, Lcom/googlecode/javacv/Blobs;->BLOBPARENT:I

    aget-wide v5, v3, v4

    add-double/2addr v5, v10

    aput-wide v5, v3, v4

    .line 228
    sget v4, Lcom/googlecode/javacv/Blobs;->BLOBCOLOR:I

    aget-wide v5, v3, v4

    add-double/2addr v5, v10

    aput-wide v5, v3, v4

    .line 229
    sget v4, Lcom/googlecode/javacv/Blobs;->BLOBAREA:I

    aget-wide v5, v3, v4

    add-double/2addr v5, v7

    aput-wide v5, v3, v4

    .line 230
    sget v4, Lcom/googlecode/javacv/Blobs;->BLOBPERIMETER:I

    aget-wide v5, v3, v4

    int-to-double v7, v0

    add-double/2addr v5, v7

    aput-wide v5, v3, v4

    .line 231
    sget v4, Lcom/googlecode/javacv/Blobs;->BLOBSUMX:I

    aget-wide v5, v3, v4

    iget v7, p0, Lcom/googlecode/javacv/Blobs;->jcol:I

    int-to-double v7, v7

    add-double/2addr v5, v7

    aput-wide v5, v3, v4

    .line 232
    sget v4, Lcom/googlecode/javacv/Blobs;->BLOBSUMY:I

    aget-wide v5, v3, v4

    iget v7, p0, Lcom/googlecode/javacv/Blobs;->jrow:I

    int-to-double v7, v7

    add-double/2addr v5, v7

    aput-wide v5, v3, v4

    .line 233
    sget v4, Lcom/googlecode/javacv/Blobs;->BLOBSUMXX:I

    aget-wide v5, v3, v4

    iget v7, p0, Lcom/googlecode/javacv/Blobs;->jcol:I

    iget v8, p0, Lcom/googlecode/javacv/Blobs;->jcol:I

    mul-int/2addr v7, v8

    int-to-double v7, v7

    add-double/2addr v5, v7

    aput-wide v5, v3, v4

    .line 234
    sget v4, Lcom/googlecode/javacv/Blobs;->BLOBSUMYY:I

    aget-wide v5, v3, v4

    iget v7, p0, Lcom/googlecode/javacv/Blobs;->jrow:I

    iget v8, p0, Lcom/googlecode/javacv/Blobs;->jrow:I

    mul-int/2addr v7, v8

    int-to-double v7, v7

    add-double/2addr v5, v7

    aput-wide v5, v3, v4

    .line 235
    sget v4, Lcom/googlecode/javacv/Blobs;->BLOBSUMXY:I

    aget-wide v5, v3, v4

    iget v7, p0, Lcom/googlecode/javacv/Blobs;->jcol:I

    iget v8, p0, Lcom/googlecode/javacv/Blobs;->jrow:I

    mul-int/2addr v7, v8

    int-to-double v7, v7

    add-double/2addr v5, v7

    aput-wide v5, v3, v4

    .line 236
    sget v4, Lcom/googlecode/javacv/Blobs;->BLOBMINX:I

    sget v5, Lcom/googlecode/javacv/Blobs;->BLOBMINX:I

    aget-wide v5, v3, v5

    iget v7, p0, Lcom/googlecode/javacv/Blobs;->jcol:I

    int-to-double v7, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    aput-wide v5, v3, v4

    .line 237
    sget v4, Lcom/googlecode/javacv/Blobs;->BLOBMAXX:I

    sget v5, Lcom/googlecode/javacv/Blobs;->BLOBMAXX:I

    aget-wide v5, v3, v5

    iget v7, p0, Lcom/googlecode/javacv/Blobs;->jcol:I

    int-to-double v7, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    aput-wide v5, v3, v4

    .line 238
    sget v4, Lcom/googlecode/javacv/Blobs;->BLOBMINY:I

    sget v5, Lcom/googlecode/javacv/Blobs;->BLOBMINY:I

    aget-wide v5, v3, v5

    iget v7, p0, Lcom/googlecode/javacv/Blobs;->jrow:I

    int-to-double v7, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    aput-wide v5, v3, v4

    .line 239
    sget v4, Lcom/googlecode/javacv/Blobs;->BLOBMAXY:I

    sget v5, Lcom/googlecode/javacv/Blobs;->BLOBMAXY:I

    aget-wide v5, v3, v5

    iget v7, p0, Lcom/googlecode/javacv/Blobs;->jrow:I

    int-to-double v7, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    aput-wide v5, v3, v4

    .line 240
    sget-object v4, Lcom/googlecode/javacv/Blobs;->RegionData:[[D

    iget v5, p0, Lcom/googlecode/javacv/Blobs;->LabelD:I

    aget-object v4, v4, v5

    sget v5, Lcom/googlecode/javacv/Blobs;->BLOBDATACOUNT:I

    invoke-static {v3, v9, v4, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    return-void
.end method

.method public PrintRegionData()V
    .locals 2

    .prologue
    .line 103
    const/4 v0, 0x0

    sget v1, Lcom/googlecode/javacv/Blobs;->MaxLabel:I

    invoke-virtual {p0, v0, v1}, Lcom/googlecode/javacv/Blobs;->PrintRegionData(II)V

    return-void
.end method

.method public PrintRegionData(II)V
    .locals 33
    .parameter "Label0"
    .parameter "Label1"

    .prologue
    .line 106
    if-gez p1, :cond_0

    const/16 p1, 0x0

    .line 107
    :cond_0
    sget v31, Lcom/googlecode/javacv/Blobs;->MaxLabel:I

    move/from16 v0, p2

    move/from16 v1, v31

    if-le v0, v1, :cond_1

    sget p2, Lcom/googlecode/javacv/Blobs;->MaxLabel:I

    .line 108
    :cond_1
    move/from16 v0, p2

    move/from16 v1, p1

    if-ge v0, v1, :cond_2

    .line 137
    :goto_0
    return-void

    .line 109
    :cond_2
    move/from16 v3, p1

    .local v3, Label:I
    :goto_1
    move/from16 v0, p2

    if-gt v3, v0, :cond_3

    .line 111
    sget-object v31, Lcom/googlecode/javacv/Blobs;->RegionData:[[D

    aget-object v4, v31, v3

    .line 113
    .local v4, Property:[D
    sget v31, Lcom/googlecode/javacv/Blobs;->BLOBLABEL:I

    aget-wide v31, v4, v31

    move-wide/from16 v0, v31

    double-to-int v13, v0

    .line 114
    .local v13, ThisLabel:I
    sget v31, Lcom/googlecode/javacv/Blobs;->BLOBPARENT:I

    aget-wide v31, v4, v31

    move-wide/from16 v0, v31

    double-to-int v0, v0

    move/from16 v18, v0

    .line 115
    .local v18, ThisParent:I
    sget v31, Lcom/googlecode/javacv/Blobs;->BLOBCOLOR:I

    aget-wide v31, v4, v31

    move-wide/from16 v0, v31

    double-to-int v12, v0

    .line 116
    .local v12, ThisColor:I
    sget v31, Lcom/googlecode/javacv/Blobs;->BLOBAREA:I

    aget-wide v10, v4, v31

    .line 117
    .local v10, ThisArea:D
    sget v31, Lcom/googlecode/javacv/Blobs;->BLOBPERIMETER:I

    aget-wide v19, v4, v31

    .line 118
    .local v19, ThisPerimeter:D
    sget v31, Lcom/googlecode/javacv/Blobs;->BLOBSUMX:I

    aget-wide v21, v4, v31

    .line 119
    .local v21, ThisSumX:D
    sget v31, Lcom/googlecode/javacv/Blobs;->BLOBSUMY:I

    aget-wide v27, v4, v31

    .line 120
    .local v27, ThisSumY:D
    sget v31, Lcom/googlecode/javacv/Blobs;->BLOBSUMXX:I

    aget-wide v23, v4, v31

    .line 121
    .local v23, ThisSumXX:D
    sget v31, Lcom/googlecode/javacv/Blobs;->BLOBSUMYY:I

    aget-wide v29, v4, v31

    .line 122
    .local v29, ThisSumYY:D
    sget v31, Lcom/googlecode/javacv/Blobs;->BLOBSUMXY:I

    aget-wide v25, v4, v31

    .line 123
    .local v25, ThisSumXY:D
    sget v31, Lcom/googlecode/javacv/Blobs;->BLOBMINX:I

    aget-wide v31, v4, v31

    move-wide/from16 v0, v31

    double-to-int v0, v0

    move/from16 v16, v0

    .line 124
    .local v16, ThisMinX:I
    sget v31, Lcom/googlecode/javacv/Blobs;->BLOBMAXX:I

    aget-wide v31, v4, v31

    move-wide/from16 v0, v31

    double-to-int v14, v0

    .line 125
    .local v14, ThisMaxX:I
    sget v31, Lcom/googlecode/javacv/Blobs;->BLOBMINY:I

    aget-wide v31, v4, v31

    move-wide/from16 v0, v31

    double-to-int v0, v0

    move/from16 v17, v0

    .line 126
    .local v17, ThisMinY:I
    sget v31, Lcom/googlecode/javacv/Blobs;->BLOBMAXY:I

    aget-wide v31, v4, v31

    move-wide/from16 v0, v31

    double-to-int v15, v0

    .line 128
    .local v15, ThisMaxY:I
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, " "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ": L["

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "] P["

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "] C["

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "]"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 129
    .local v6, Str1:Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, " AP["

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "]"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 130
    .local v7, Str2:Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, " M1["

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "] M2["

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "]"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 131
    .local v8, Str3:Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, " MINMAX["

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "]"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 133
    .local v9, Str4:Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 134
    .local v5, Str:Ljava/lang/String;
    sget-object v31, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 109
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 136
    .end local v4           #Property:[D
    .end local v5           #Str:Ljava/lang/String;
    .end local v6           #Str1:Ljava/lang/String;
    .end local v7           #Str2:Ljava/lang/String;
    .end local v8           #Str3:Ljava/lang/String;
    .end local v9           #Str4:Ljava/lang/String;
    .end local v10           #ThisArea:D
    .end local v12           #ThisColor:I
    .end local v13           #ThisLabel:I
    .end local v14           #ThisMaxX:I
    .end local v15           #ThisMaxY:I
    .end local v16           #ThisMinX:I
    .end local v17           #ThisMinY:I
    .end local v18           #ThisParent:I
    .end local v19           #ThisPerimeter:D
    .end local v21           #ThisSumX:D
    .end local v23           #ThisSumXX:D
    .end local v25           #ThisSumXY:D
    .end local v27           #ThisSumY:D
    .end local v29           #ThisSumYY:D
    :cond_3
    sget-object v31, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual/range {v31 .. v31}, Ljava/io/PrintStream;->println()V

    goto/16 :goto_0
.end method

.method public ResetRegion(I)V
    .locals 17
    .parameter "Label"

    .prologue
    .line 183
    sget-object v1, Lcom/googlecode/javacv/Blobs;->RegionData:[[D

    aget-object v0, v1, p1

    .line 184
    .local v0, RegionD:[D
    sget v1, Lcom/googlecode/javacv/Blobs;->BLOBLABEL:I

    sget v2, Lcom/googlecode/javacv/Blobs;->BLOBPARENT:I

    sget v3, Lcom/googlecode/javacv/Blobs;->BLOBCOLOR:I

    sget v4, Lcom/googlecode/javacv/Blobs;->BLOBAREA:I

    sget v5, Lcom/googlecode/javacv/Blobs;->BLOBPERIMETER:I

    sget v6, Lcom/googlecode/javacv/Blobs;->BLOBSUMX:I

    sget v7, Lcom/googlecode/javacv/Blobs;->BLOBSUMY:I

    sget v8, Lcom/googlecode/javacv/Blobs;->BLOBSUMXX:I

    sget v9, Lcom/googlecode/javacv/Blobs;->BLOBSUMYY:I

    sget v10, Lcom/googlecode/javacv/Blobs;->BLOBSUMXY:I

    sget v11, Lcom/googlecode/javacv/Blobs;->BLOBMINX:I

    sget v12, Lcom/googlecode/javacv/Blobs;->BLOBMAXX:I

    sget v13, Lcom/googlecode/javacv/Blobs;->BLOBMINY:I

    sget v14, Lcom/googlecode/javacv/Blobs;->BLOBMAXY:I

    const-wide/16 v15, 0x0

    aput-wide v15, v0, v14

    aput-wide v15, v0, v13

    aput-wide v15, v0, v12

    aput-wide v15, v0, v11

    aput-wide v15, v0, v10

    aput-wide v15, v0, v9

    aput-wide v15, v0, v8

    aput-wide v15, v0, v7

    aput-wide v15, v0, v6

    aput-wide v15, v0, v5

    aput-wide v15, v0, v4

    aput-wide v15, v0, v3

    aput-wide v15, v0, v2

    aput-wide v15, v0, v1

    .line 198
    const/4 v1, 0x0

    sget-object v2, Lcom/googlecode/javacv/Blobs;->RegionData:[[D

    aget-object v2, v2, p1

    const/4 v3, 0x0

    sget v4, Lcom/googlecode/javacv/Blobs;->BLOBDATACOUNT:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    return-void
.end method

.method public Subsume(III)V
    .locals 10
    .parameter "GoodLabel"
    .parameter "BadLabel"
    .parameter "PSign"

    .prologue
    const/4 v9, 0x0

    .line 277
    iput p1, p0, Lcom/googlecode/javacv/Blobs;->LabelD:I

    .line 278
    sget-object v2, Lcom/googlecode/javacv/Blobs;->RegionData:[[D

    aget-object v1, v2, p1

    .line 279
    .local v1, GoodRegion:[D
    sget-object v2, Lcom/googlecode/javacv/Blobs;->RegionData:[[D

    aget-object v0, v2, p2

    .line 281
    .local v0, BadRegion:[D
    sget v2, Lcom/googlecode/javacv/Blobs;->BLOBLABEL:I

    sget v3, Lcom/googlecode/javacv/Blobs;->BLOBLABEL:I

    aget-wide v3, v1, v3

    aput-wide v3, v1, v2

    .line 282
    sget v2, Lcom/googlecode/javacv/Blobs;->BLOBPARENT:I

    sget v3, Lcom/googlecode/javacv/Blobs;->BLOBPARENT:I

    aget-wide v3, v1, v3

    aput-wide v3, v1, v2

    .line 283
    sget v2, Lcom/googlecode/javacv/Blobs;->BLOBCOLOR:I

    sget v3, Lcom/googlecode/javacv/Blobs;->BLOBCOLOR:I

    aget-wide v3, v1, v3

    aput-wide v3, v1, v2

    .line 284
    sget v2, Lcom/googlecode/javacv/Blobs;->BLOBAREA:I

    aget-wide v3, v1, v2

    sget v5, Lcom/googlecode/javacv/Blobs;->BLOBAREA:I

    aget-wide v5, v0, v5

    add-double/2addr v3, v5

    aput-wide v3, v1, v2

    .line 285
    sget v2, Lcom/googlecode/javacv/Blobs;->BLOBPERIMETER:I

    aget-wide v3, v1, v2

    sget v5, Lcom/googlecode/javacv/Blobs;->BLOBPERIMETER:I

    aget-wide v5, v0, v5

    int-to-double v7, p3

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    aput-wide v3, v1, v2

    .line 286
    sget v2, Lcom/googlecode/javacv/Blobs;->BLOBSUMX:I

    aget-wide v3, v1, v2

    sget v5, Lcom/googlecode/javacv/Blobs;->BLOBSUMX:I

    aget-wide v5, v0, v5

    add-double/2addr v3, v5

    aput-wide v3, v1, v2

    .line 287
    sget v2, Lcom/googlecode/javacv/Blobs;->BLOBSUMY:I

    aget-wide v3, v1, v2

    sget v5, Lcom/googlecode/javacv/Blobs;->BLOBSUMY:I

    aget-wide v5, v0, v5

    add-double/2addr v3, v5

    aput-wide v3, v1, v2

    .line 288
    sget v2, Lcom/googlecode/javacv/Blobs;->BLOBSUMXX:I

    aget-wide v3, v1, v2

    sget v5, Lcom/googlecode/javacv/Blobs;->BLOBSUMXX:I

    aget-wide v5, v0, v5

    add-double/2addr v3, v5

    aput-wide v3, v1, v2

    .line 289
    sget v2, Lcom/googlecode/javacv/Blobs;->BLOBSUMYY:I

    aget-wide v3, v1, v2

    sget v5, Lcom/googlecode/javacv/Blobs;->BLOBSUMYY:I

    aget-wide v5, v0, v5

    add-double/2addr v3, v5

    aput-wide v3, v1, v2

    .line 290
    sget v2, Lcom/googlecode/javacv/Blobs;->BLOBSUMXY:I

    aget-wide v3, v1, v2

    sget v5, Lcom/googlecode/javacv/Blobs;->BLOBSUMXY:I

    aget-wide v5, v0, v5

    add-double/2addr v3, v5

    aput-wide v3, v1, v2

    .line 291
    sget v2, Lcom/googlecode/javacv/Blobs;->BLOBMINX:I

    sget v3, Lcom/googlecode/javacv/Blobs;->BLOBMINX:I

    aget-wide v3, v1, v3

    sget v5, Lcom/googlecode/javacv/Blobs;->BLOBMINX:I

    aget-wide v5, v0, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 292
    sget v2, Lcom/googlecode/javacv/Blobs;->BLOBMAXX:I

    sget v3, Lcom/googlecode/javacv/Blobs;->BLOBMAXX:I

    aget-wide v3, v1, v3

    sget v5, Lcom/googlecode/javacv/Blobs;->BLOBMAXX:I

    aget-wide v5, v0, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 293
    sget v2, Lcom/googlecode/javacv/Blobs;->BLOBMINY:I

    sget v3, Lcom/googlecode/javacv/Blobs;->BLOBMINY:I

    aget-wide v3, v1, v3

    sget v5, Lcom/googlecode/javacv/Blobs;->BLOBMINY:I

    aget-wide v5, v0, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 294
    sget v2, Lcom/googlecode/javacv/Blobs;->BLOBMAXY:I

    sget v3, Lcom/googlecode/javacv/Blobs;->BLOBMAXY:I

    aget-wide v3, v1, v3

    sget v5, Lcom/googlecode/javacv/Blobs;->BLOBMAXY:I

    aget-wide v5, v0, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 296
    sget-object v2, Lcom/googlecode/javacv/Blobs;->RegionData:[[D

    aget-object v2, v2, p1

    sget v3, Lcom/googlecode/javacv/Blobs;->BLOBDATACOUNT:I

    invoke-static {v1, v9, v2, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    return-void
.end method
