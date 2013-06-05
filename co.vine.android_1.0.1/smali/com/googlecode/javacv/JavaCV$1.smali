.class final Lcom/googlecode/javacv/JavaCV$1;
.super Ljava/lang/Object;
.source "JavaCV.java"

# interfaces
.implements Lcom/googlecode/javacv/Parallel$Looper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/javacv/JavaCV;->adaptiveThreshold(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;ZIIDD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic val$dstBuf:Ljava/nio/ByteBuffer;

.field final synthetic val$dstStep:I

.field final synthetic val$h:I

.field final synthetic val$invert:Z

.field final synthetic val$k:D

.field final synthetic val$sqSumBuf:Ljava/nio/DoubleBuffer;

.field final synthetic val$sqSumStep:I

.field final synthetic val$srcBuf:Ljava/nio/ByteBuffer;

.field final synthetic val$srcDepth:I

.field final synthetic val$srcStep:I

.field final synthetic val$sumBuf:Ljava/nio/DoubleBuffer;

.field final synthetic val$sumStep:I

.field final synthetic val$targetVar:D

.field final synthetic val$w:I

.field final synthetic val$windowMax:I

.field final synthetic val$windowMin:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 434
    const-class v0, Lcom/googlecode/javacv/JavaCV;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/googlecode/javacv/JavaCV$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(IIIILjava/nio/DoubleBuffer;ILjava/nio/DoubleBuffer;IDILjava/nio/ByteBuffer;IZDLjava/nio/ByteBuffer;I)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 434
    iput p1, p0, Lcom/googlecode/javacv/JavaCV$1;->val$w:I

    iput p2, p0, Lcom/googlecode/javacv/JavaCV$1;->val$windowMax:I

    iput p3, p0, Lcom/googlecode/javacv/JavaCV$1;->val$windowMin:I

    iput p4, p0, Lcom/googlecode/javacv/JavaCV$1;->val$h:I

    iput-object p5, p0, Lcom/googlecode/javacv/JavaCV$1;->val$sumBuf:Ljava/nio/DoubleBuffer;

    iput p6, p0, Lcom/googlecode/javacv/JavaCV$1;->val$sumStep:I

    iput-object p7, p0, Lcom/googlecode/javacv/JavaCV$1;->val$sqSumBuf:Ljava/nio/DoubleBuffer;

    iput p8, p0, Lcom/googlecode/javacv/JavaCV$1;->val$sqSumStep:I

    iput-wide p9, p0, Lcom/googlecode/javacv/JavaCV$1;->val$targetVar:D

    iput p11, p0, Lcom/googlecode/javacv/JavaCV$1;->val$srcDepth:I

    iput-object p12, p0, Lcom/googlecode/javacv/JavaCV$1;->val$srcBuf:Ljava/nio/ByteBuffer;

    iput p13, p0, Lcom/googlecode/javacv/JavaCV$1;->val$srcStep:I

    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/googlecode/javacv/JavaCV$1;->val$invert:Z

    move-wide/from16 v0, p15

    iput-wide v0, p0, Lcom/googlecode/javacv/JavaCV$1;->val$k:D

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/googlecode/javacv/JavaCV$1;->val$dstBuf:Ljava/nio/ByteBuffer;

    move/from16 v0, p18

    iput v0, p0, Lcom/googlecode/javacv/JavaCV$1;->val$dstStep:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loop(III)V
    .locals 28
    .parameter "from"
    .parameter "to"
    .parameter "looperID"

    .prologue
    .line 436
    move/from16 v19, p1

    .local v19, y:I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, p2

    if-ge v0, v1, :cond_b

    .line 437
    const/16 v16, 0x0

    .local v16, x:I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/JavaCV$1;->val$w:I

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_a

    .line 438
    const-wide/16 v13, 0x0

    .local v13, var:D
    const-wide/16 v4, 0x0

    .local v4, mean:D
    const-wide/16 v6, 0x0

    .line 439
    .local v6, sqMean:D
    move-object/from16 v0, p0

    iget v10, v0, Lcom/googlecode/javacv/JavaCV$1;->val$windowMax:I

    .line 440
    .local v10, upperLimit:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/googlecode/javacv/JavaCV$1;->val$windowMin:I

    .line 441
    .local v3, lowerLimit:I
    move v15, v10

    .line 442
    .local v15, window:I
    :goto_2
    sub-int v22, v10, v3

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_0

    .line 443
    div-int/lit8 v22, v15, 0x2

    sub-int v22, v16, v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 444
    .local v17, x1:I
    div-int/lit8 v22, v15, 0x2

    add-int v22, v22, v16

    add-int/lit8 v22, v22, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/JavaCV$1;->val$w:I

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 446
    .local v18, x2:I
    div-int/lit8 v22, v15, 0x2

    sub-int v22, v19, v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 447
    .local v20, y1:I
    div-int/lit8 v22, v15, 0x2

    add-int v22, v22, v19

    add-int/lit8 v22, v22, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/JavaCV$1;->val$h:I

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v21

    .line 449
    .local v21, y2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/JavaCV$1;->val$sumBuf:Ljava/nio/DoubleBuffer;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/JavaCV$1;->val$sumStep:I

    move/from16 v23, v0

    mul-int v23, v23, v21

    div-int/lit8 v23, v23, 0x8

    add-int v23, v23, v18

    invoke-virtual/range {v22 .. v23}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/JavaCV$1;->val$sumBuf:Ljava/nio/DoubleBuffer;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/JavaCV$1;->val$sumStep:I

    move/from16 v25, v0

    mul-int v25, v25, v21

    div-int/lit8 v25, v25, 0x8

    add-int v25, v25, v17

    invoke-virtual/range {v24 .. v25}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v24

    sub-double v22, v22, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/JavaCV$1;->val$sumBuf:Ljava/nio/DoubleBuffer;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/JavaCV$1;->val$sumStep:I

    move/from16 v25, v0

    mul-int v25, v25, v20

    div-int/lit8 v25, v25, 0x8

    add-int v25, v25, v18

    invoke-virtual/range {v24 .. v25}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v24

    sub-double v22, v22, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/JavaCV$1;->val$sumBuf:Ljava/nio/DoubleBuffer;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/JavaCV$1;->val$sumStep:I

    move/from16 v25, v0

    mul-int v25, v25, v20

    div-int/lit8 v25, v25, 0x8

    add-int v25, v25, v17

    invoke-virtual/range {v24 .. v25}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v24

    add-double v4, v22, v24

    .line 453
    mul-int v22, v15, v15

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v4, v4, v22

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/JavaCV$1;->val$sqSumBuf:Ljava/nio/DoubleBuffer;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/JavaCV$1;->val$sqSumStep:I

    move/from16 v23, v0

    mul-int v23, v23, v21

    div-int/lit8 v23, v23, 0x8

    add-int v23, v23, v18

    invoke-virtual/range {v22 .. v23}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/JavaCV$1;->val$sqSumBuf:Ljava/nio/DoubleBuffer;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/JavaCV$1;->val$sqSumStep:I

    move/from16 v25, v0

    mul-int v25, v25, v21

    div-int/lit8 v25, v25, 0x8

    add-int v25, v25, v17

    invoke-virtual/range {v24 .. v25}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v24

    sub-double v22, v22, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/JavaCV$1;->val$sqSumBuf:Ljava/nio/DoubleBuffer;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/JavaCV$1;->val$sqSumStep:I

    move/from16 v25, v0

    mul-int v25, v25, v20

    div-int/lit8 v25, v25, 0x8

    add-int v25, v25, v18

    invoke-virtual/range {v24 .. v25}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v24

    sub-double v22, v22, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/JavaCV$1;->val$sqSumBuf:Ljava/nio/DoubleBuffer;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/JavaCV$1;->val$sqSumStep:I

    move/from16 v25, v0

    mul-int v25, v25, v20

    div-int/lit8 v25, v25, 0x8

    add-int v25, v25, v17

    invoke-virtual/range {v24 .. v25}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v24

    add-double v6, v22, v24

    .line 458
    mul-int v22, v15, v15

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v6, v6, v22

    .line 459
    mul-double v22, v4, v4

    sub-double v13, v6, v22

    .line 463
    if-ne v15, v10, :cond_2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/googlecode/javacv/JavaCV$1;->val$targetVar:D

    move-wide/from16 v22, v0

    cmpg-double v22, v13, v22

    if-gez v22, :cond_2

    .line 478
    .end local v17           #x1:I
    .end local v18           #x2:I
    .end local v20           #y1:I
    .end local v21           #y2:I
    :cond_0
    const-wide/16 v11, 0x0

    .line 479
    .local v11, value:D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/JavaCV$1;->val$srcDepth:I

    move/from16 v22, v0

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/JavaCV$1;->val$srcBuf:Ljava/nio/ByteBuffer;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/JavaCV$1;->val$srcStep:I

    move/from16 v23, v0

    mul-int v23, v23, v19

    add-int v23, v23, v16

    invoke-virtual/range {v22 .. v23}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v22

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v11, v0

    .line 490
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/googlecode/javacv/JavaCV$1;->val$invert:Z

    move/from16 v22, v0

    if-eqz v22, :cond_8

    .line 492
    const-wide v22, 0x406fe00000000000L

    const-wide v24, 0x406fe00000000000L

    sub-double v24, v24, v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/googlecode/javacv/JavaCV$1;->val$k:D

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    sub-double v8, v22, v24

    .line 493
    .local v8, threshold:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/JavaCV$1;->val$dstBuf:Ljava/nio/ByteBuffer;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/JavaCV$1;->val$dstStep:I

    move/from16 v22, v0

    mul-int v22, v22, v19

    add-int v24, v22, v16

    cmpg-double v22, v11, v8

    if-gez v22, :cond_7

    const/16 v22, -0x1

    :goto_4
    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 437
    :goto_5
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 468
    .end local v8           #threshold:D
    .end local v11           #value:D
    .restart local v17       #x1:I
    .restart local v18       #x2:I
    .restart local v20       #y1:I
    .restart local v21       #y2:I
    :cond_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/googlecode/javacv/JavaCV$1;->val$targetVar:D

    move-wide/from16 v22, v0

    cmpl-double v22, v13, v22

    if-lez v22, :cond_3

    .line 469
    move v10, v15

    .line 474
    :goto_6
    sub-int v22, v10, v3

    div-int/lit8 v22, v22, 0x2

    add-int v15, v3, v22

    .line 475
    div-int/lit8 v22, v15, 0x2

    mul-int/lit8 v22, v22, 0x2

    add-int/lit8 v15, v22, 0x1

    .line 476
    goto/16 :goto_2

    .line 471
    :cond_3
    move v3, v15

    goto :goto_6

    .line 481
    .end local v17           #x1:I
    .end local v18           #x2:I
    .end local v20           #y1:I
    .end local v21           #y2:I
    .restart local v11       #value:D
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/JavaCV$1;->val$srcDepth:I

    move/from16 v22, v0

    const/16 v23, 0x20

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/JavaCV$1;->val$srcBuf:Ljava/nio/ByteBuffer;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/JavaCV$1;->val$srcStep:I

    move/from16 v23, v0

    mul-int v23, v23, v19

    mul-int/lit8 v24, v16, 0x4

    add-int v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v22

    move/from16 v0, v22

    float-to-double v11, v0

    goto/16 :goto_3

    .line 483
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/JavaCV$1;->val$srcDepth:I

    move/from16 v22, v0

    const/16 v23, 0x40

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/JavaCV$1;->val$srcBuf:Ljava/nio/ByteBuffer;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/JavaCV$1;->val$srcStep:I

    move/from16 v23, v0

    mul-int v23, v23, v19

    mul-int/lit8 v24, v16, 0x8

    add-int v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide v11

    goto/16 :goto_3

    .line 488
    :cond_6
    sget-boolean v22, Lcom/googlecode/javacv/JavaCV$1;->$assertionsDisabled:Z

    if-nez v22, :cond_1

    new-instance v22, Ljava/lang/AssertionError;

    invoke-direct/range {v22 .. v22}, Ljava/lang/AssertionError;-><init>()V

    throw v22

    .line 493
    .restart local v8       #threshold:D
    :cond_7
    const/16 v22, 0x0

    goto/16 :goto_4

    .line 496
    .end local v8           #threshold:D
    :cond_8
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/googlecode/javacv/JavaCV$1;->val$k:D

    move-wide/from16 v22, v0

    mul-double v8, v4, v22

    .line 497
    .restart local v8       #threshold:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/JavaCV$1;->val$dstBuf:Ljava/nio/ByteBuffer;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/JavaCV$1;->val$dstStep:I

    move/from16 v22, v0

    mul-int v22, v22, v19

    add-int v24, v22, v16

    cmpl-double v22, v11, v8

    if-lez v22, :cond_9

    const/16 v22, -0x1

    :goto_7
    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    goto/16 :goto_5

    :cond_9
    const/16 v22, 0x0

    goto :goto_7

    .line 436
    .end local v3           #lowerLimit:I
    .end local v4           #mean:D
    .end local v6           #sqMean:D
    .end local v8           #threshold:D
    .end local v10           #upperLimit:I
    .end local v11           #value:D
    .end local v13           #var:D
    .end local v15           #window:I
    :cond_a
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    .line 501
    .end local v16           #x:I
    :cond_b
    return-void
.end method
