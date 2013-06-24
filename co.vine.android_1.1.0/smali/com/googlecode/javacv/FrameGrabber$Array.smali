.class public Lcom/googlecode/javacv/FrameGrabber$Array;
.super Ljava/lang/Object;
.source "FrameGrabber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/FrameGrabber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Array"
.end annotation


# instance fields
.field private bestInterval:J

.field private bestLatencies:[J

.field protected frameGrabbers:[Lcom/googlecode/javacv/FrameGrabber;

.field private grabbedImages:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

.field private lastNewestTimestamp:J

.field private latencies:[J


# direct methods
.method protected constructor <init>([Lcom/googlecode/javacv/FrameGrabber;)V
    .locals 3
    .parameter "frameGrabbers"

    .prologue
    const/4 v2, 0x0

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    iput-object v2, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->grabbedImages:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 384
    iput-object v2, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->latencies:[J

    .line 385
    iput-object v2, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->bestLatencies:[J

    .line 386
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->lastNewestTimestamp:J

    .line 387
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->bestInterval:J

    .line 389
    iput-object v2, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->frameGrabbers:[Lcom/googlecode/javacv/FrameGrabber;

    .line 380
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/FrameGrabber$Array;->setFrameGrabbers([Lcom/googlecode/javacv/FrameGrabber;)V

    .line 381
    return-void
.end method


# virtual methods
.method public getFrameGrabbers()[Lcom/googlecode/javacv/FrameGrabber;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->frameGrabbers:[Lcom/googlecode/javacv/FrameGrabber;

    return-object v0
.end method

.method public grab()[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 424
    iget-object v8, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->frameGrabbers:[Lcom/googlecode/javacv/FrameGrabber;

    array-length v8, v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 425
    iget-object v8, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->grabbedImages:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->frameGrabbers:[Lcom/googlecode/javacv/FrameGrabber;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v10}, Lcom/googlecode/javacv/FrameGrabber;->grab()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v10

    aput-object v10, v8, v9

    .line 426
    iget-object v8, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->grabbedImages:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 505
    :goto_0
    return-object v8

    .line 433
    :cond_0
    const-wide/16 v3, 0x0

    .line 434
    .local v3, newestTimestamp:J
    const/4 v7, 0x0

    .line 435
    .local v7, unsynchronized:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v8, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->frameGrabbers:[Lcom/googlecode/javacv/FrameGrabber;

    array-length v8, v8

    if-ge v0, v8, :cond_3

    .line 436
    iget-object v8, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->grabbedImages:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget-object v9, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->frameGrabbers:[Lcom/googlecode/javacv/FrameGrabber;

    aget-object v9, v9, v0

    invoke-virtual {v9}, Lcom/googlecode/javacv/FrameGrabber;->grab()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v9

    aput-object v9, v8, v0

    .line 437
    iget-object v8, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->grabbedImages:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v8, v8, v0

    if-eqz v8, :cond_1

    .line 438
    iget-object v8, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->frameGrabbers:[Lcom/googlecode/javacv/FrameGrabber;

    aget-object v8, v8, v0

    invoke-virtual {v8}, Lcom/googlecode/javacv/FrameGrabber;->getTimestamp()J

    move-result-wide v8

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 440
    :cond_1
    iget-object v8, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->frameGrabbers:[Lcom/googlecode/javacv/FrameGrabber;

    aget-object v8, v8, v0

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    iget-object v9, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->frameGrabbers:[Lcom/googlecode/javacv/FrameGrabber;

    add-int/lit8 v10, v0, 0x1

    iget-object v11, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->frameGrabbers:[Lcom/googlecode/javacv/FrameGrabber;

    array-length v11, v11

    rem-int/2addr v10, v11

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    if-eq v8, v9, :cond_2

    .line 442
    const/4 v7, 0x1

    .line 435
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 445
    :cond_3
    if-eqz v7, :cond_4

    .line 446
    iget-object v8, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->grabbedImages:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    goto :goto_0

    .line 448
    :cond_4
    const/4 v0, 0x0

    :goto_2
    iget-object v8, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->frameGrabbers:[Lcom/googlecode/javacv/FrameGrabber;

    array-length v8, v8

    if-ge v0, v8, :cond_6

    .line 449
    iget-object v8, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->grabbedImages:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v8, v8, v0

    if-eqz v8, :cond_5

    .line 450
    iget-object v8, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->latencies:[J

    const-wide/16 v9, 0x0

    iget-object v11, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->frameGrabbers:[Lcom/googlecode/javacv/FrameGrabber;

    aget-object v11, v11, v0

    invoke-virtual {v11}, Lcom/googlecode/javacv/FrameGrabber;->getTimestamp()J

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    sub-long v9, v3, v9

    aput-wide v9, v8, v0

    .line 448
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 453
    :cond_6
    iget-object v8, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->bestLatencies:[J

    if-nez v8, :cond_8

    .line 454
    iget-object v8, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->latencies:[J

    iget-object v9, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->latencies:[J

    array-length v9, v9

    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v8

    iput-object v8, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->bestLatencies:[J

    .line 468
    :cond_7
    :goto_3
    iget-wide v8, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->bestInterval:J

    iget-wide v10, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->lastNewestTimestamp:J

    sub-long v10, v3, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->bestInterval:J

    .line 469
    const/4 v0, 0x0

    :goto_4
    iget-object v8, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->bestLatencies:[J

    array-length v8, v8

    if-ge v0, v8, :cond_a

    .line 470
    iget-object v8, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->bestLatencies:[J

    iget-object v9, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->bestLatencies:[J

    aget-wide v9, v9, v0

    iget-wide v11, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->bestInterval:J

    const-wide/16 v13, 0x9

    mul-long/2addr v11, v13

    const-wide/16 v13, 0xa

    div-long/2addr v11, v13

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    aput-wide v9, v8, v0

    .line 469
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 456
    :cond_8
    const/4 v5, 0x0

    .local v5, sum1:I
    const/4 v6, 0x0

    .line 457
    .local v6, sum2:I
    const/4 v0, 0x0

    :goto_5
    iget-object v8, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->frameGrabbers:[Lcom/googlecode/javacv/FrameGrabber;

    array-length v8, v8

    if-ge v0, v8, :cond_9

    .line 458
    int-to-long v8, v5

    iget-object v10, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->latencies:[J

    aget-wide v10, v10, v0

    add-long/2addr v8, v10

    long-to-int v5, v8

    .line 459
    int-to-long v8, v6

    iget-object v10, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->bestLatencies:[J

    aget-wide v10, v10, v0

    add-long/2addr v8, v10

    long-to-int v6, v8

    .line 457
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 461
    :cond_9
    if-ge v5, v6, :cond_7

    .line 462
    iget-object v8, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->latencies:[J

    iget-object v9, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->latencies:[J

    array-length v9, v9

    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v8

    iput-object v8, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->bestLatencies:[J

    goto :goto_3

    .line 475
    .end local v5           #sum1:I
    .end local v6           #sum2:I
    :cond_a
    const/4 v1, 0x0

    .local v1, j:I
    :goto_6
    const/4 v8, 0x2

    if-ge v1, v8, :cond_f

    .line 476
    const/4 v0, 0x0

    :goto_7
    iget-object v8, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->frameGrabbers:[Lcom/googlecode/javacv/FrameGrabber;

    array-length v8, v8

    if-ge v0, v8, :cond_e

    .line 477
    iget-object v8, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->frameGrabbers:[Lcom/googlecode/javacv/FrameGrabber;

    aget-object v8, v8, v0

    invoke-virtual {v8}, Lcom/googlecode/javacv/FrameGrabber;->isTriggerMode()Z

    move-result v8

    if-nez v8, :cond_b

    iget-object v8, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->grabbedImages:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v8, v8, v0

    if-nez v8, :cond_c

    .line 476
    :cond_b
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 480
    :cond_c
    const-wide/16 v8, 0x0

    iget-object v10, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->frameGrabbers:[Lcom/googlecode/javacv/FrameGrabber;

    aget-object v10, v10, v0

    invoke-virtual {v10}, Lcom/googlecode/javacv/FrameGrabber;->getTimestamp()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    sub-long v8, v3, v8

    long-to-int v2, v8

    .line 481
    .local v2, latency:I
    :cond_d
    int-to-long v8, v2

    iget-object v10, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->bestLatencies:[J

    aget-wide v10, v10, v0

    sub-long/2addr v8, v10

    long-to-double v8, v8

    const-wide v10, 0x3fb999999999999aL

    iget-object v12, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->bestLatencies:[J

    aget-wide v12, v12, v0

    long-to-double v12, v12

    mul-double/2addr v10, v12

    cmpl-double v8, v8, v10

    if-lez v8, :cond_b

    .line 482
    iget-object v8, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->grabbedImages:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget-object v9, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->frameGrabbers:[Lcom/googlecode/javacv/FrameGrabber;

    aget-object v9, v9, v0

    invoke-virtual {v9}, Lcom/googlecode/javacv/FrameGrabber;->grab()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v9

    aput-object v9, v8, v0

    .line 483
    iget-object v8, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->grabbedImages:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    aget-object v8, v8, v0

    if-eqz v8, :cond_b

    .line 486
    const-wide/16 v8, 0x0

    iget-object v10, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->frameGrabbers:[Lcom/googlecode/javacv/FrameGrabber;

    aget-object v10, v10, v0

    invoke-virtual {v10}, Lcom/googlecode/javacv/FrameGrabber;->getTimestamp()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    sub-long v8, v3, v8

    long-to-int v2, v8

    .line 487
    if-gez v2, :cond_d

    .line 490
    const-wide/16 v8, 0x0

    iget-object v10, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->frameGrabbers:[Lcom/googlecode/javacv/FrameGrabber;

    aget-object v10, v10, v0

    invoke-virtual {v10}, Lcom/googlecode/javacv/FrameGrabber;->getTimestamp()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 491
    goto :goto_8

    .line 475
    .end local v2           #latency:I
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 503
    :cond_f
    iput-wide v3, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->lastNewestTimestamp:J

    .line 505
    iget-object v8, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->grabbedImages:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    goto/16 :goto_0
.end method

.method public release()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 508
    iget-object v0, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->frameGrabbers:[Lcom/googlecode/javacv/FrameGrabber;

    .local v0, arr$:[Lcom/googlecode/javacv/FrameGrabber;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 509
    .local v1, f:Lcom/googlecode/javacv/FrameGrabber;
    invoke-virtual {v1}, Lcom/googlecode/javacv/FrameGrabber;->release()V

    .line 508
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 511
    .end local v1           #f:Lcom/googlecode/javacv/FrameGrabber;
    :cond_0
    return-void
.end method

.method public setFrameGrabbers([Lcom/googlecode/javacv/FrameGrabber;)V
    .locals 2
    .parameter "frameGrabbers"

    .prologue
    .line 394
    iput-object p1, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->frameGrabbers:[Lcom/googlecode/javacv/FrameGrabber;

    .line 395
    array-length v0, p1

    new-array v0, v0, [Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iput-object v0, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->grabbedImages:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 396
    array-length v0, p1

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->latencies:[J

    .line 397
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->bestLatencies:[J

    .line 398
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->lastNewestTimestamp:J

    .line 399
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->frameGrabbers:[Lcom/googlecode/javacv/FrameGrabber;

    array-length v0, v0

    return v0
.end method

.method public start()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 405
    iget-object v0, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->frameGrabbers:[Lcom/googlecode/javacv/FrameGrabber;

    .local v0, arr$:[Lcom/googlecode/javacv/FrameGrabber;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 406
    .local v1, f:Lcom/googlecode/javacv/FrameGrabber;
    invoke-virtual {v1}, Lcom/googlecode/javacv/FrameGrabber;->start()V

    .line 405
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 408
    .end local v1           #f:Lcom/googlecode/javacv/FrameGrabber;
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 410
    iget-object v0, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->frameGrabbers:[Lcom/googlecode/javacv/FrameGrabber;

    .local v0, arr$:[Lcom/googlecode/javacv/FrameGrabber;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 411
    .local v1, f:Lcom/googlecode/javacv/FrameGrabber;
    invoke-virtual {v1}, Lcom/googlecode/javacv/FrameGrabber;->stop()V

    .line 410
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 413
    .end local v1           #f:Lcom/googlecode/javacv/FrameGrabber;
    :cond_0
    return-void
.end method

.method public trigger()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 416
    iget-object v0, p0, Lcom/googlecode/javacv/FrameGrabber$Array;->frameGrabbers:[Lcom/googlecode/javacv/FrameGrabber;

    .local v0, arr$:[Lcom/googlecode/javacv/FrameGrabber;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 417
    .local v1, f:Lcom/googlecode/javacv/FrameGrabber;
    invoke-virtual {v1}, Lcom/googlecode/javacv/FrameGrabber;->isTriggerMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 418
    invoke-virtual {v1}, Lcom/googlecode/javacv/FrameGrabber;->trigger()V

    .line 416
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 421
    .end local v1           #f:Lcom/googlecode/javacv/FrameGrabber;
    :cond_1
    return-void
.end method
