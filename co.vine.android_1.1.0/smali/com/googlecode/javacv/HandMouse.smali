.class public Lcom/googlecode/javacv/HandMouse;
.super Ljava/lang/Object;
.source "HandMouse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/HandMouse$Settings;
    }
.end annotation


# instance fields
.field private binaryImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

.field private centerX:D

.field private centerY:D

.field private contourPoints:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

.field private contourPointsBuffer:Ljava/nio/IntBuffer;

.field private contourPointsSize:I

.field private edgeX:D

.field private edgeY:D

.field private imageTipX:D

.field private imageTipY:D

.field private imageUpdateNeeded:Z

.field private moments:Lcom/googlecode/javacv/cpp/opencv_imgproc$CvMoments;

.field private prevTipTime:J

.field private prevTipX:D

.field private prevTipY:D

.field private pt1:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

.field private pt2:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

.field private relativeResidual:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

.field private roi:Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

.field private settings:Lcom/googlecode/javacv/HandMouse$Settings;

.field private storage:Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;

.field private tipTime:J

.field private tipX:D

.field private tipY:D


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/googlecode/javacv/HandMouse$Settings;

    invoke-direct {v0}, Lcom/googlecode/javacv/HandMouse$Settings;-><init>()V

    invoke-direct {p0, v0}, Lcom/googlecode/javacv/HandMouse;-><init>(Lcom/googlecode/javacv/HandMouse$Settings;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/HandMouse$Settings;)V
    .locals 9
    .parameter "settings"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const-wide/high16 v1, -0x4010

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object v3, p0, Lcom/googlecode/javacv/HandMouse;->relativeResidual:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iput-object v3, p0, Lcom/googlecode/javacv/HandMouse;->binaryImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 140
    iput-object v3, p0, Lcom/googlecode/javacv/HandMouse;->roi:Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    .line 141
    invoke-static {}, Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;->create()Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacv/HandMouse;->storage:Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;

    .line 142
    iput v6, p0, Lcom/googlecode/javacv/HandMouse;->contourPointsSize:I

    .line 143
    iput-object v3, p0, Lcom/googlecode/javacv/HandMouse;->contourPoints:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    .line 144
    iput-object v3, p0, Lcom/googlecode/javacv/HandMouse;->contourPointsBuffer:Ljava/nio/IntBuffer;

    .line 145
    new-instance v0, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvMoments;

    invoke-direct {v0}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvMoments;-><init>()V

    iput-object v0, p0, Lcom/googlecode/javacv/HandMouse;->moments:Lcom/googlecode/javacv/cpp/opencv_imgproc$CvMoments;

    .line 146
    iput-wide v4, p0, Lcom/googlecode/javacv/HandMouse;->edgeX:D

    iput-wide v4, p0, Lcom/googlecode/javacv/HandMouse;->edgeY:D

    iput-wide v4, p0, Lcom/googlecode/javacv/HandMouse;->centerX:D

    iput-wide v4, p0, Lcom/googlecode/javacv/HandMouse;->centerY:D

    .line 147
    iput-wide v1, p0, Lcom/googlecode/javacv/HandMouse;->imageTipX:D

    iput-wide v1, p0, Lcom/googlecode/javacv/HandMouse;->tipX:D

    iput-wide v1, p0, Lcom/googlecode/javacv/HandMouse;->prevTipX:D

    .line 148
    iput-wide v1, p0, Lcom/googlecode/javacv/HandMouse;->imageTipY:D

    iput-wide v1, p0, Lcom/googlecode/javacv/HandMouse;->tipY:D

    iput-wide v1, p0, Lcom/googlecode/javacv/HandMouse;->prevTipY:D

    .line 149
    iput-wide v7, p0, Lcom/googlecode/javacv/HandMouse;->tipTime:J

    iput-wide v7, p0, Lcom/googlecode/javacv/HandMouse;->prevTipTime:J

    .line 150
    new-instance v0, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    invoke-direct {v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;-><init>()V

    iput-object v0, p0, Lcom/googlecode/javacv/HandMouse;->pt1:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    new-instance v0, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    invoke-direct {v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;-><init>()V

    iput-object v0, p0, Lcom/googlecode/javacv/HandMouse;->pt2:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    .line 151
    iput-boolean v6, p0, Lcom/googlecode/javacv/HandMouse;->imageUpdateNeeded:Z

    .line 40
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/HandMouse;->setSettings(Lcom/googlecode/javacv/HandMouse$Settings;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getRelativeResidual()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/googlecode/javacv/HandMouse;->relativeResidual:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    return-object v0
.end method

.method public getResultImage()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 8

    .prologue
    .line 345
    iget-boolean v0, p0, Lcom/googlecode/javacv/HandMouse;->imageUpdateNeeded:Z

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/googlecode/javacv/HandMouse;->binaryImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-static {v0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSetZero(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 347
    iget-object v0, p0, Lcom/googlecode/javacv/HandMouse;->binaryImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget-object v1, p0, Lcom/googlecode/javacv/HandMouse;->contourPoints:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget v4, p0, Lcom/googlecode/javacv/HandMouse;->contourPointsSize:I

    aput v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;->WHITE:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/googlecode/javacv/cpp/opencv_core;->cvFillPoly(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;[IILcom/googlecode/javacv/cpp/opencv_core$CvScalar;II)V

    .line 349
    iget-object v0, p0, Lcom/googlecode/javacv/HandMouse;->pt1:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    const/16 v1, 0x10

    const/4 v2, 0x2

    new-array v2, v2, [D

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/googlecode/javacv/HandMouse;->edgeX:D

    aput-wide v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/googlecode/javacv/HandMouse;->edgeY:D

    aput-wide v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->put(B[D)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    .line 350
    iget-object v0, p0, Lcom/googlecode/javacv/HandMouse;->binaryImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget-object v1, p0, Lcom/googlecode/javacv/HandMouse;->pt1:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    const/high16 v2, 0x5

    sget-object v3, Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;->GRAY:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    const/4 v4, 0x2

    const/16 v5, 0x8

    const/16 v6, 0x10

    invoke-static/range {v0 .. v6}, Lcom/googlecode/javacv/cpp/opencv_core;->cvCircle(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;ILcom/googlecode/javacv/cpp/opencv_core$CvScalar;III)V

    .line 352
    iget-object v0, p0, Lcom/googlecode/javacv/HandMouse;->pt1:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    const/16 v1, 0x10

    const/4 v2, 0x2

    new-array v2, v2, [D

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/googlecode/javacv/HandMouse;->centerX:D

    const-wide/high16 v6, 0x4014

    sub-double/2addr v4, v6

    aput-wide v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/googlecode/javacv/HandMouse;->centerY:D

    const-wide/high16 v6, 0x4014

    sub-double/2addr v4, v6

    aput-wide v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->put(B[D)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    iget-object v0, p0, Lcom/googlecode/javacv/HandMouse;->pt2:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    const/16 v1, 0x10

    const/4 v2, 0x2

    new-array v2, v2, [D

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/googlecode/javacv/HandMouse;->centerX:D

    const-wide/high16 v6, 0x4014

    add-double/2addr v4, v6

    aput-wide v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/googlecode/javacv/HandMouse;->centerY:D

    const-wide/high16 v6, 0x4014

    add-double/2addr v4, v6

    aput-wide v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->put(B[D)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    .line 353
    iget-object v0, p0, Lcom/googlecode/javacv/HandMouse;->binaryImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget-object v1, p0, Lcom/googlecode/javacv/HandMouse;->pt1:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    iget-object v2, p0, Lcom/googlecode/javacv/HandMouse;->pt2:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    sget-object v3, Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;->GRAY:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    const/4 v4, 0x2

    const/16 v5, 0x8

    const/16 v6, 0x10

    invoke-static/range {v0 .. v6}, Lcom/googlecode/javacv/cpp/opencv_core;->cvRectangle(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;III)V

    .line 355
    iget-object v0, p0, Lcom/googlecode/javacv/HandMouse;->pt1:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    const/16 v1, 0x10

    const/4 v2, 0x2

    new-array v2, v2, [D

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/googlecode/javacv/HandMouse;->imageTipX:D

    const-wide/high16 v6, 0x4014

    sub-double/2addr v4, v6

    aput-wide v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/googlecode/javacv/HandMouse;->imageTipY:D

    const-wide/high16 v6, 0x4014

    sub-double/2addr v4, v6

    aput-wide v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->put(B[D)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    iget-object v0, p0, Lcom/googlecode/javacv/HandMouse;->pt2:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    const/16 v1, 0x10

    const/4 v2, 0x2

    new-array v2, v2, [D

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/googlecode/javacv/HandMouse;->imageTipX:D

    const-wide/high16 v6, 0x4014

    add-double/2addr v4, v6

    aput-wide v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/googlecode/javacv/HandMouse;->imageTipY:D

    const-wide/high16 v6, 0x4014

    add-double/2addr v4, v6

    aput-wide v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->put(B[D)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    .line 356
    iget-object v0, p0, Lcom/googlecode/javacv/HandMouse;->binaryImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget-object v1, p0, Lcom/googlecode/javacv/HandMouse;->pt1:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    iget-object v2, p0, Lcom/googlecode/javacv/HandMouse;->pt2:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    sget-object v3, Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;->GRAY:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    const/4 v4, 0x2

    const/16 v5, 0x8

    const/16 v6, 0x10

    invoke-static/range {v0 .. v6}, Lcom/googlecode/javacv/cpp/opencv_core;->cvLine(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;III)V

    .line 357
    iget-object v0, p0, Lcom/googlecode/javacv/HandMouse;->pt1:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    const/16 v1, 0x10

    const/4 v2, 0x2

    new-array v2, v2, [D

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/googlecode/javacv/HandMouse;->imageTipX:D

    const-wide/high16 v6, 0x4014

    sub-double/2addr v4, v6

    aput-wide v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/googlecode/javacv/HandMouse;->imageTipY:D

    const-wide/high16 v6, 0x4014

    add-double/2addr v4, v6

    aput-wide v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->put(B[D)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    iget-object v0, p0, Lcom/googlecode/javacv/HandMouse;->pt2:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    const/16 v1, 0x10

    const/4 v2, 0x2

    new-array v2, v2, [D

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/googlecode/javacv/HandMouse;->imageTipX:D

    const-wide/high16 v6, 0x4014

    add-double/2addr v4, v6

    aput-wide v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/googlecode/javacv/HandMouse;->imageTipY:D

    const-wide/high16 v6, 0x4014

    sub-double/2addr v4, v6

    aput-wide v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->put(B[D)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    .line 358
    iget-object v0, p0, Lcom/googlecode/javacv/HandMouse;->binaryImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget-object v1, p0, Lcom/googlecode/javacv/HandMouse;->pt1:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    iget-object v2, p0, Lcom/googlecode/javacv/HandMouse;->pt2:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    sget-object v3, Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;->GRAY:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    const/4 v4, 0x2

    const/16 v5, 0x8

    const/16 v6, 0x10

    invoke-static/range {v0 .. v6}, Lcom/googlecode/javacv/cpp/opencv_core;->cvLine(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;III)V

    .line 360
    iget-object v0, p0, Lcom/googlecode/javacv/HandMouse;->binaryImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-static {v0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvResetImageROI(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    .line 361
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/googlecode/javacv/HandMouse;->imageUpdateNeeded:Z

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/HandMouse;->binaryImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    return-object v0
.end method

.method public getSettings()Lcom/googlecode/javacv/HandMouse$Settings;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/googlecode/javacv/HandMouse;->settings:Lcom/googlecode/javacv/HandMouse$Settings;

    return-object v0
.end method

.method public getX()D
    .locals 2

    .prologue
    .line 367
    iget-wide v0, p0, Lcom/googlecode/javacv/HandMouse;->tipX:D

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .prologue
    .line 370
    iget-wide v0, p0, Lcom/googlecode/javacv/HandMouse;->tipY:D

    return-wide v0
.end method

.method public isClick()Z
    .locals 4

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/googlecode/javacv/HandMouse;->isSteady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/javacv/HandMouse;->tipTime:J

    iget-wide v2, p0, Lcom/googlecode/javacv/HandMouse;->prevTipTime:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/googlecode/javacv/HandMouse;->settings:Lcom/googlecode/javacv/HandMouse$Settings;

    iget-wide v2, v2, Lcom/googlecode/javacv/HandMouse$Settings;->clickSteadyTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSteady()Z
    .locals 12

    .prologue
    const/4 v7, 0x0

    const-wide/16 v10, 0x0

    .line 374
    iget-wide v8, p0, Lcom/googlecode/javacv/HandMouse;->tipX:D

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_0

    iget-wide v8, p0, Lcom/googlecode/javacv/HandMouse;->tipY:D

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_0

    iget-wide v8, p0, Lcom/googlecode/javacv/HandMouse;->prevTipX:D

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_0

    iget-wide v8, p0, Lcom/googlecode/javacv/HandMouse;->prevTipY:D

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_0

    .line 375
    iget-wide v8, p0, Lcom/googlecode/javacv/HandMouse;->tipX:D

    iget-wide v10, p0, Lcom/googlecode/javacv/HandMouse;->prevTipX:D

    sub-double v0, v8, v10

    .line 376
    .local v0, dx:D
    iget-wide v8, p0, Lcom/googlecode/javacv/HandMouse;->tipY:D

    iget-wide v10, p0, Lcom/googlecode/javacv/HandMouse;->prevTipY:D

    sub-double v2, v8, v10

    .line 377
    .local v2, dy:D
    iget-object v8, p0, Lcom/googlecode/javacv/HandMouse;->roi:Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    invoke-virtual {v8}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->width()I

    move-result v8

    iget-object v9, p0, Lcom/googlecode/javacv/HandMouse;->roi:Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    invoke-virtual {v9}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->height()I

    move-result v9

    add-int/2addr v8, v9

    div-int/lit8 v4, v8, 0x2

    .line 378
    .local v4, imageSize:I
    iget-object v8, p0, Lcom/googlecode/javacv/HandMouse;->settings:Lcom/googlecode/javacv/HandMouse$Settings;

    iget-wide v8, v8, Lcom/googlecode/javacv/HandMouse$Settings;->clickSteadySize:D

    int-to-double v10, v4

    mul-double v5, v8, v10

    .line 379
    .local v5, steadySize:D
    mul-double v8, v0, v0

    mul-double v10, v2, v2

    add-double/2addr v8, v10

    mul-double v10, v5, v5

    cmpg-double v8, v8, v10

    if-gez v8, :cond_0

    const/4 v7, 0x1

    .line 381
    .end local v0           #dx:D
    .end local v2           #dy:D
    .end local v4           #imageSize:I
    .end local v5           #steadySize:D
    :cond_0
    return v7
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 154
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/googlecode/javacv/HandMouse;->prevTipY:D

    iput-wide v0, p0, Lcom/googlecode/javacv/HandMouse;->prevTipX:D

    iput-wide v0, p0, Lcom/googlecode/javacv/HandMouse;->tipY:D

    iput-wide v0, p0, Lcom/googlecode/javacv/HandMouse;->tipX:D

    .line 155
    return-void
.end method

.method public setSettings(Lcom/googlecode/javacv/HandMouse$Settings;)V
    .locals 0
    .parameter "settings"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/googlecode/javacv/HandMouse;->settings:Lcom/googlecode/javacv/HandMouse$Settings;

    .line 137
    return-void
.end method

.method public update([Lcom/googlecode/javacv/cpp/opencv_core$IplImage;ILcom/googlecode/javacv/cpp/opencv_core$CvRect;[D)V
    .locals 83
    .parameter "images"
    .parameter "pyramidLevel"
    .parameter "roi"
    .parameter "roiPts"

    .prologue
    .line 158
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/HandMouse;->roi:Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    .line 163
    const/4 v2, 0x1

    aget-object v62, p1, v2

    .line 164
    .local v62, target:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    const/4 v2, 0x2

    aget-object v67, p1, v2

    .line 165
    .local v67, transformed:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    const/4 v2, 0x3

    aget-object v57, p1, v2

    .line 166
    .local v57, residual:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    const/4 v2, 0x4

    aget-object v46, p1, v2

    .line 167
    .local v46, mask:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    invoke-virtual/range {p3 .. p3}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->width()I

    move-result v71

    .line 168
    .local v71, width:I
    invoke-virtual/range {p3 .. p3}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->height()I

    move-result v31

    .line 169
    .local v31, height:I
    invoke-virtual/range {v57 .. v57}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->nChannels()I

    move-result v17

    .line 170
    .local v17, channels:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/HandMouse;->relativeResidual:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v0, v46

    invoke-static {v2, v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->createIfNotCompatible(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/googlecode/javacv/HandMouse;->relativeResidual:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/HandMouse;->binaryImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v0, v46

    invoke-static {v2, v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->createIfNotCompatible(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/googlecode/javacv/HandMouse;->binaryImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/HandMouse;->relativeResidual:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-static {v2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvResetImageROI(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/HandMouse;->binaryImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-static {v2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvResetImageROI(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    .line 175
    const/4 v2, 0x3

    move/from16 v0, v17

    if-le v0, v2, :cond_0

    const/4 v2, 0x3

    :goto_0
    int-to-double v2, v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/HandMouse;->settings:Lcom/googlecode/javacv/HandMouse$Settings;

    iget-wide v5, v5, Lcom/googlecode/javacv/HandMouse$Settings;->brightnessMin:D

    mul-double v14, v2, v5

    .line 176
    .local v14, brightnessMin:D
    add-int v2, v71, v31

    div-int/lit8 v2, v2, 0x2

    mul-int v2, v2, v71

    mul-int v2, v2, v31

    int-to-double v2, v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/HandMouse;->settings:Lcom/googlecode/javacv/HandMouse$Settings;

    iget-wide v5, v5, Lcom/googlecode/javacv/HandMouse$Settings;->edgeAreaMax:D

    mul-double v20, v2, v5

    .line 177
    .local v20, contourEdgeAreaMax:D
    add-int v2, v71, v31

    div-int/lit8 v2, v2, 0x2

    mul-int v2, v2, v71

    mul-int v2, v2, v31

    int-to-double v2, v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/HandMouse;->settings:Lcom/googlecode/javacv/HandMouse$Settings;

    iget-wide v5, v5, Lcom/googlecode/javacv/HandMouse$Settings;->edgeAreaMin:D

    mul-double v22, v2, v5

    .line 178
    .local v22, contourEdgeAreaMin:D
    invoke-virtual/range {v46 .. v46}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v47

    .line 179
    .local v47, maskBuf:Ljava/nio/ByteBuffer;
    invoke-virtual/range {v57 .. v57}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v58

    .line 180
    .local v58, residualBuf:Ljava/nio/FloatBuffer;
    invoke-virtual/range {v62 .. v62}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v63

    .line 181
    .local v63, targetBuf:Ljava/nio/FloatBuffer;
    invoke-virtual/range {v67 .. v67}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v68

    .line 182
    .local v68, transformedBuf:Ljava/nio/FloatBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/HandMouse;->relativeResidual:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v54

    .line 184
    .local v54, relResBuf:Ljava/nio/ByteBuffer;
    :goto_1
    invoke-virtual/range {v47 .. v47}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual/range {v58 .. v58}, Ljava/nio/FloatBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual/range {v63 .. v63}, Ljava/nio/FloatBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual/range {v68 .. v68}, Ljava/nio/FloatBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual/range {v54 .. v54}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 186
    invoke-virtual/range {v47 .. v47}, Ljava/nio/ByteBuffer;->get()B

    move-result v39

    .line 187
    .local v39, m:B
    if-nez v39, :cond_1

    .line 188
    invoke-virtual/range {v58 .. v58}, Ljava/nio/FloatBuffer;->position()I

    move-result v2

    add-int v2, v2, v17

    move-object/from16 v0, v58

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 189
    invoke-virtual/range {v63 .. v63}, Ljava/nio/FloatBuffer;->position()I

    move-result v2

    add-int v2, v2, v17

    move-object/from16 v0, v63

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 190
    invoke-virtual/range {v68 .. v68}, Ljava/nio/FloatBuffer;->position()I

    move-result v2

    add-int v2, v2, v17

    move-object/from16 v0, v68

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 191
    const/4 v2, 0x0

    move-object/from16 v0, v54

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .end local v14           #brightnessMin:D
    .end local v20           #contourEdgeAreaMax:D
    .end local v22           #contourEdgeAreaMin:D
    .end local v39           #m:B
    .end local v47           #maskBuf:Ljava/nio/ByteBuffer;
    .end local v54           #relResBuf:Ljava/nio/ByteBuffer;
    .end local v58           #residualBuf:Ljava/nio/FloatBuffer;
    .end local v63           #targetBuf:Ljava/nio/FloatBuffer;
    .end local v68           #transformedBuf:Ljava/nio/FloatBuffer;
    :cond_0
    move/from16 v2, v17

    .line 175
    goto/16 :goto_0

    .line 193
    .restart local v14       #brightnessMin:D
    .restart local v20       #contourEdgeAreaMax:D
    .restart local v22       #contourEdgeAreaMin:D
    .restart local v39       #m:B
    .restart local v47       #maskBuf:Ljava/nio/ByteBuffer;
    .restart local v54       #relResBuf:Ljava/nio/ByteBuffer;
    .restart local v58       #residualBuf:Ljava/nio/FloatBuffer;
    .restart local v63       #targetBuf:Ljava/nio/FloatBuffer;
    .restart local v68       #transformedBuf:Ljava/nio/FloatBuffer;
    :cond_1
    const-wide/16 v55, 0x0

    .line 194
    .local v55, relativeNorm:D
    const-wide/16 v12, 0x0

    .line 195
    .local v12, brightness:D
    const/16 v82, 0x0

    .local v82, z:I
    :goto_2
    move/from16 v0, v82

    move/from16 v1, v17

    if-ge v0, v1, :cond_3

    .line 196
    invoke-virtual/range {v58 .. v58}, Ljava/nio/FloatBuffer;->get()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v53

    .line 197
    .local v53, r:F
    invoke-virtual/range {v63 .. v63}, Ljava/nio/FloatBuffer;->get()F

    move-result v16

    .line 198
    .local v16, c:F
    invoke-virtual/range {v68 .. v68}, Ljava/nio/FloatBuffer;->get()F

    move-result v61

    .line 199
    .local v61, t:F
    const/4 v2, 0x3

    move/from16 v0, v82

    if-ge v0, v2, :cond_2

    .line 200
    move/from16 v0, v16

    move/from16 v1, v61

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v48

    .line 201
    .local v48, maxct:F
    move/from16 v0, v48

    float-to-double v2, v0

    add-double/2addr v12, v2

    .line 202
    div-float v2, v53, v48

    float-to-double v2, v2

    move-wide/from16 v0, v55

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v55

    .line 195
    .end local v48           #maxct:F
    :cond_2
    add-int/lit8 v82, v82, 0x1

    goto :goto_2

    .line 205
    .end local v16           #c:F
    .end local v53           #r:F
    .end local v61           #t:F
    :cond_3
    cmpg-double v2, v12, v14

    if-gez v2, :cond_4

    .line 206
    const/4 v2, 0x0

    move-object/from16 v0, v54

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto/16 :goto_1

    .line 208
    :cond_4
    const-wide v2, 0x406fe00000000000L

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/HandMouse;->settings:Lcom/googlecode/javacv/HandMouse$Settings;

    iget-wide v5, v5, Lcom/googlecode/javacv/HandMouse$Settings;->thresholdHigh:D

    div-double/2addr v2, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/HandMouse;->settings:Lcom/googlecode/javacv/HandMouse$Settings;

    iget-wide v5, v5, Lcom/googlecode/javacv/HandMouse$Settings;->thresholdHigh:D

    move-wide/from16 v0, v55

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    mul-double/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-byte v2, v2

    move-object/from16 v0, v54

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto/16 :goto_1

    .line 214
    .end local v12           #brightness:D
    .end local v39           #m:B
    .end local v55           #relativeNorm:D
    .end local v82           #z:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/HandMouse;->relativeResidual:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/HandMouse;->binaryImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    const-wide v4, 0x406fe00000000000L

    const-wide v6, 0x406fe00000000000L

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/googlecode/javacv/HandMouse;->settings:Lcom/googlecode/javacv/HandMouse$Settings;

    iget-wide v8, v8, Lcom/googlecode/javacv/HandMouse$Settings;->thresholdLow:D

    mul-double/2addr v6, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/googlecode/javacv/HandMouse;->settings:Lcom/googlecode/javacv/HandMouse$Settings;

    iget-wide v8, v8, Lcom/googlecode/javacv/HandMouse$Settings;->thresholdHigh:D

    div-double/2addr v6, v8

    const-wide v8, 0x406fe00000000000L

    invoke-static/range {v2 .. v9}, Lcom/googlecode/javacv/JavaCV;->hysteresisThreshold(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;DDD)V

    .line 217
    invoke-virtual/range {p3 .. p3}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->x()I

    move-result v59

    .local v59, roiX:I
    invoke-virtual/range {p3 .. p3}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->y()I

    move-result v60

    .line 218
    .local v60, roiY:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/HandMouse;->binaryImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v0, p3

    invoke-static {v2, v0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSetImageROI(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/HandMouse;->settings:Lcom/googlecode/javacv/HandMouse$Settings;

    iget v2, v2, Lcom/googlecode/javacv/HandMouse$Settings;->mopIterations:I

    if-lez v2, :cond_6

    .line 221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/HandMouse;->binaryImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/HandMouse;->binaryImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/googlecode/javacv/HandMouse;->settings:Lcom/googlecode/javacv/HandMouse$Settings;

    iget v7, v7, Lcom/googlecode/javacv/HandMouse$Settings;->mopIterations:I

    invoke-static/range {v2 .. v7}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvMorphologyEx(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernel;II)V

    .line 222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/HandMouse;->binaryImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/HandMouse;->binaryImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/googlecode/javacv/HandMouse;->settings:Lcom/googlecode/javacv/HandMouse$Settings;

    iget v7, v7, Lcom/googlecode/javacv/HandMouse$Settings;->mopIterations:I

    invoke-static/range {v2 .. v7}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvMorphologyEx(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_imgproc$IplConvKernel;II)V

    .line 224
    :cond_6
    new-instance v4, Lcom/googlecode/javacv/cpp/opencv_core$CvContour;

    const/4 v2, 0x0

    invoke-direct {v4, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvContour;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    .line 225
    .local v4, contour:Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/HandMouse;->binaryImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/HandMouse;->storage:Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;

    const-class v5, Lcom/googlecode/javacv/cpp/opencv_core$CvContour;

    invoke-static {v5}, Lcom/googlecode/javacpp/Loader;->sizeof(Ljava/lang/Class;)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvFindContours(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;III)I

    .line 227
    const-wide/16 v37, 0x0

    .line 228
    .local v37, largestContourEdgeArea:D
    const/16 v36, 0x0

    .line 229
    .local v36, largestContour:Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
    :goto_3
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;->isNull()Z

    move-result v2

    if-nez v2, :cond_e

    .line 230
    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;->total()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/googlecode/javacv/HandMouse;->contourPointsSize:I

    .line 231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/HandMouse;->contourPoints:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/HandMouse;->contourPoints:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->capacity()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/googlecode/javacv/HandMouse;->contourPointsSize:I

    if-ge v2, v3, :cond_8

    .line 232
    :cond_7
    new-instance v2, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/googlecode/javacv/HandMouse;->contourPointsSize:I

    invoke-direct {v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/googlecode/javacv/HandMouse;->contourPoints:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    .line 233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/HandMouse;->contourPoints:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->asByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/googlecode/javacv/HandMouse;->contourPointsBuffer:Ljava/nio/IntBuffer;

    .line 235
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/HandMouse;->contourPoints:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvCvtSeqToArray(Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacpp/Pointer;

    .line 237
    move-object/from16 v0, p4

    array-length v2, v0

    new-array v0, v2, [D

    move-object/from16 v30, v0

    .line 238
    .local v30, edgePts:[D
    const/16 v32, 0x0

    .local v32, i:I
    :goto_4
    move-object/from16 v0, p4

    array-length v2, v0

    div-int/lit8 v2, v2, 0x2

    move/from16 v0, v32

    if-ge v0, v2, :cond_9

    .line 239
    mul-int/lit8 v2, v32, 0x2

    mul-int/lit8 v3, v32, 0x2

    aget-wide v5, p4, v3

    const/4 v3, 0x1

    shl-int v3, v3, p2

    int-to-double v7, v3

    div-double/2addr v5, v7

    move/from16 v0, v59

    int-to-double v7, v0

    sub-double/2addr v5, v7

    aput-wide v5, v30, v2

    .line 240
    mul-int/lit8 v2, v32, 0x2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v32, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-wide v5, p4, v3

    const/4 v3, 0x1

    shl-int v3, v3, p2

    int-to-double v7, v3

    div-double/2addr v5, v7

    move/from16 v0, v60

    int-to-double v7, v0

    sub-double/2addr v5, v7

    aput-wide v5, v30, v2

    .line 238
    add-int/lit8 v32, v32, 0x1

    goto :goto_4

    .line 243
    :cond_9
    const-wide/16 v40, 0x0

    .local v40, m00:D
    const-wide/16 v44, 0x0

    .local v44, m10:D
    const-wide/16 v42, 0x0

    .line 244
    .local v42, m01:D
    const/16 v32, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/googlecode/javacv/HandMouse;->contourPointsSize:I

    move/from16 v0, v32

    if-ge v0, v2, :cond_c

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/HandMouse;->contourPointsBuffer:Ljava/nio/IntBuffer;

    mul-int/lit8 v3, v32, 0x2

    invoke-virtual {v2, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v72

    .line 246
    .local v72, x:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/HandMouse;->contourPointsBuffer:Ljava/nio/IntBuffer;

    mul-int/lit8 v3, v32, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v77

    .line 247
    .local v77, y:I
    const/16 v35, 0x0

    .local v35, j:I
    :goto_6
    move-object/from16 v0, p4

    array-length v2, v0

    div-int/lit8 v2, v2, 0x2

    move/from16 v0, v35

    if-ge v0, v2, :cond_a

    .line 248
    mul-int/lit8 v2, v35, 0x2

    aget-wide v73, v30, v2

    .line 249
    .local v73, x1:D
    mul-int/lit8 v2, v35, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-wide v78, v30, v2

    .line 250
    .local v78, y1:D
    mul-int/lit8 v2, v35, 0x2

    add-int/lit8 v2, v2, 0x2

    move-object/from16 v0, v30

    array-length v3, v0

    rem-int/2addr v2, v3

    aget-wide v75, v30, v2

    .line 251
    .local v75, x2:D
    mul-int/lit8 v2, v35, 0x2

    add-int/lit8 v2, v2, 0x3

    move-object/from16 v0, v30

    array-length v3, v0

    rem-int/2addr v2, v3

    aget-wide v80, v30, v2

    .line 252
    .local v80, y2:D
    sub-double v26, v75, v73

    .line 253
    .local v26, dx:D
    sub-double v28, v80, v78

    .line 254
    .local v28, dy:D
    mul-double v2, v26, v26

    mul-double v5, v28, v28

    add-double v24, v2, v5

    .line 255
    .local v24, d2:D
    move/from16 v0, v72

    int-to-double v2, v0

    sub-double v2, v2, v73

    mul-double v2, v2, v26

    move/from16 v0, v77

    int-to-double v5, v0

    sub-double v5, v5, v78

    mul-double v5, v5, v28

    add-double/2addr v2, v5

    div-double v69, v2, v24

    .line 257
    .local v69, u:D
    mul-double v2, v69, v26

    add-double v49, v73, v2

    .line 258
    .local v49, px:D
    mul-double v2, v69, v28

    add-double v51, v78, v2

    .line 260
    .local v51, py:D
    move/from16 v0, v72

    int-to-double v2, v0

    sub-double v26, v49, v2

    .line 261
    move/from16 v0, v77

    int-to-double v2, v0

    sub-double v28, v51, v2

    .line 262
    mul-double v2, v26, v26

    mul-double v5, v28, v28

    add-double v24, v2, v5

    .line 263
    const-wide/high16 v2, 0x4000

    cmpg-double v2, v24, v2

    if-gez v2, :cond_b

    .line 264
    const-wide/high16 v2, 0x3ff0

    add-double v40, v40, v2

    .line 265
    move/from16 v0, v72

    int-to-double v2, v0

    add-double v44, v44, v2

    .line 266
    move/from16 v0, v77

    int-to-double v2, v0

    add-double v42, v42, v2

    .line 244
    .end local v24           #d2:D
    .end local v26           #dx:D
    .end local v28           #dy:D
    .end local v49           #px:D
    .end local v51           #py:D
    .end local v69           #u:D
    .end local v73           #x1:D
    .end local v75           #x2:D
    .end local v78           #y1:D
    .end local v80           #y2:D
    :cond_a
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_5

    .line 247
    .restart local v24       #d2:D
    .restart local v26       #dx:D
    .restart local v28       #dy:D
    .restart local v49       #px:D
    .restart local v51       #py:D
    .restart local v69       #u:D
    .restart local v73       #x1:D
    .restart local v75       #x2:D
    .restart local v78       #y1:D
    .restart local v80       #y2:D
    :cond_b
    add-int/lit8 v35, v35, 0x1

    goto :goto_6

    .line 271
    .end local v24           #d2:D
    .end local v26           #dx:D
    .end local v28           #dy:D
    .end local v35           #j:I
    .end local v49           #px:D
    .end local v51           #py:D
    .end local v69           #u:D
    .end local v72           #x:I
    .end local v73           #x1:D
    .end local v75           #x2:D
    .end local v77           #y:I
    .end local v78           #y1:D
    .end local v80           #y2:D
    :cond_c
    sget-object v2, Lcom/googlecode/javacv/cpp/opencv_core;->CV_WHOLE_SEQ:Lcom/googlecode/javacv/cpp/opencv_core$CvSlice;

    const/4 v3, 0x0

    invoke-static {v4, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvContourArea(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvSlice;I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    mul-double v18, v40, v2

    .line 272
    .local v18, contourEdgeArea:D
    cmpl-double v2, v18, v22

    if-lez v2, :cond_d

    cmpg-double v2, v18, v20

    if-gez v2, :cond_d

    cmpl-double v2, v18, v37

    if-lez v2, :cond_d

    .line 274
    move-wide/from16 v37, v18

    .line 275
    move-object/from16 v36, v4

    .line 277
    const-wide/high16 v2, 0x3ff0

    div-double v33, v2, v40

    .line 278
    .local v33, inv_m00:D
    mul-double v2, v44, v33

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/googlecode/javacv/HandMouse;->edgeX:D

    .line 279
    mul-double v2, v42, v33

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/googlecode/javacv/HandMouse;->edgeY:D

    .line 281
    .end local v33           #inv_m00:D
    :cond_d
    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;->h_next()Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;

    move-result-object v4

    .line 282
    goto/16 :goto_3

    .line 284
    .end local v18           #contourEdgeArea:D
    .end local v30           #edgePts:[D
    .end local v32           #i:I
    .end local v40           #m00:D
    .end local v42           #m01:D
    .end local v44           #m10:D
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/HandMouse;->isClick()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 285
    const-wide/high16 v2, -0x4010

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/googlecode/javacv/HandMouse;->prevTipX:D

    .line 286
    const-wide/high16 v2, -0x4010

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/googlecode/javacv/HandMouse;->prevTipY:D

    .line 287
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/googlecode/javacv/HandMouse;->prevTipTime:J

    .line 294
    :cond_f
    :goto_7
    if-nez v36, :cond_11

    .line 295
    const-wide/high16 v2, -0x4010

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/googlecode/javacv/HandMouse;->tipX:D

    .line 296
    const-wide/high16 v2, -0x4010

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/googlecode/javacv/HandMouse;->tipY:D

    .line 297
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/googlecode/javacv/HandMouse;->tipTime:J

    .line 298
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/googlecode/javacv/HandMouse;->imageUpdateNeeded:Z

    .line 338
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/HandMouse;->storage:Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;

    invoke-static {v2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvClearMemStorage(Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;)V

    .line 339
    return-void

    .line 288
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/HandMouse;->isSteady()Z

    move-result v2

    if-nez v2, :cond_f

    .line 289
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/googlecode/javacv/HandMouse;->tipX:D

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/googlecode/javacv/HandMouse;->prevTipX:D

    .line 290
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/googlecode/javacv/HandMouse;->tipY:D

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/googlecode/javacv/HandMouse;->prevTipY:D

    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/googlecode/javacv/HandMouse;->prevTipTime:J

    goto :goto_7

    .line 300
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/HandMouse;->moments:Lcom/googlecode/javacv/cpp/opencv_imgproc$CvMoments;

    const/4 v3, 0x0

    move-object/from16 v0, v36

    invoke-static {v0, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvMoments(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_imgproc$CvMoments;I)V

    .line 301
    const-wide/high16 v2, 0x3ff0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/HandMouse;->moments:Lcom/googlecode/javacv/cpp/opencv_imgproc$CvMoments;

    invoke-virtual {v5}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvMoments;->m00()D

    move-result-wide v5

    div-double v33, v2, v5

    .line 302
    .restart local v33       #inv_m00:D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/HandMouse;->moments:Lcom/googlecode/javacv/cpp/opencv_imgproc$CvMoments;

    invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvMoments;->m10()D

    move-result-wide v2

    mul-double v2, v2, v33

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/googlecode/javacv/HandMouse;->centerX:D

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/HandMouse;->moments:Lcom/googlecode/javacv/cpp/opencv_imgproc$CvMoments;

    invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvMoments;->m01()D

    move-result-wide v2

    mul-double v2, v2, v33

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/googlecode/javacv/HandMouse;->centerY:D

    .line 305
    invoke-virtual/range {v36 .. v36}, Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;->total()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/googlecode/javacv/HandMouse;->contourPointsSize:I

    .line 306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/HandMouse;->contourPoints:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-static {v0, v2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvCvtSeqToArray(Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacpp/Pointer;

    .line 308
    const-wide/16 v64, 0x0

    .line 309
    .local v64, tipDist2:D
    const/16 v66, 0x0

    .line 310
    .local v66, tipIndex:I
    const/16 v32, 0x0

    .restart local v32       #i:I
    :goto_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/googlecode/javacv/HandMouse;->contourPointsSize:I

    move/from16 v0, v32

    if-ge v0, v2, :cond_13

    .line 311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/HandMouse;->contourPointsBuffer:Ljava/nio/IntBuffer;

    mul-int/lit8 v3, v32, 0x2

    invoke-virtual {v2, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v72

    .line 312
    .restart local v72       #x:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/HandMouse;->contourPointsBuffer:Ljava/nio/IntBuffer;

    mul-int/lit8 v3, v32, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v77

    .line 313
    .restart local v77       #y:I
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/googlecode/javacv/HandMouse;->centerX:D

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/googlecode/javacv/HandMouse;->edgeX:D

    sub-double v26, v2, v5

    .line 314
    .restart local v26       #dx:D
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/googlecode/javacv/HandMouse;->centerY:D

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/googlecode/javacv/HandMouse;->edgeY:D

    sub-double v28, v2, v5

    .line 315
    .restart local v28       #dy:D
    mul-double v2, v26, v26

    mul-double v5, v28, v28

    add-double v24, v2, v5

    .line 316
    .restart local v24       #d2:D
    move/from16 v0, v72

    int-to-double v2, v0

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/googlecode/javacv/HandMouse;->edgeX:D

    sub-double/2addr v2, v5

    mul-double v2, v2, v26

    move/from16 v0, v77

    int-to-double v5, v0

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/googlecode/javacv/HandMouse;->edgeY:D

    sub-double/2addr v5, v7

    mul-double v5, v5, v28

    add-double/2addr v2, v5

    div-double v69, v2, v24

    .line 318
    .restart local v69       #u:D
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/googlecode/javacv/HandMouse;->edgeX:D

    mul-double v5, v69, v26

    add-double v49, v2, v5

    .line 319
    .restart local v49       #px:D
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/googlecode/javacv/HandMouse;->edgeY:D

    mul-double v5, v69, v28

    add-double v51, v2, v5

    .line 321
    .restart local v51       #py:D
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/googlecode/javacv/HandMouse;->edgeX:D

    sub-double v26, v49, v2

    .line 322
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/googlecode/javacv/HandMouse;->edgeY:D

    sub-double v28, v51, v2

    .line 323
    mul-double v2, v26, v26

    mul-double v5, v28, v28

    add-double v24, v2, v5

    .line 324
    cmpl-double v2, v24, v64

    if-lez v2, :cond_12

    .line 325
    move/from16 v66, v32

    .line 326
    move-wide/from16 v64, v24

    .line 310
    :cond_12
    add-int/lit8 v32, v32, 0x1

    goto :goto_9

    .line 329
    .end local v24           #d2:D
    .end local v26           #dx:D
    .end local v28           #dy:D
    .end local v49           #px:D
    .end local v51           #py:D
    .end local v69           #u:D
    .end local v72           #x:I
    .end local v77           #y:I
    :cond_13
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/googlecode/javacv/HandMouse;->imageTipX:D

    const-wide/16 v5, 0x0

    cmpg-double v2, v2, v5

    if-ltz v2, :cond_14

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/googlecode/javacv/HandMouse;->imageTipY:D

    const-wide/16 v5, 0x0

    cmpg-double v2, v2, v5

    if-gez v2, :cond_15

    :cond_14
    const-wide/high16 v10, 0x3ff0

    .line 330
    .local v10, a:D
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/HandMouse;->contourPointsBuffer:Ljava/nio/IntBuffer;

    mul-int/lit8 v3, v66, 0x2

    invoke-virtual {v2, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v10

    const-wide/high16 v5, 0x3ff0

    sub-double/2addr v5, v10

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/googlecode/javacv/HandMouse;->imageTipX:D

    mul-double/2addr v5, v7

    add-double/2addr v2, v5

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/googlecode/javacv/HandMouse;->imageTipX:D

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/HandMouse;->contourPointsBuffer:Ljava/nio/IntBuffer;

    mul-int/lit8 v3, v66, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v10

    const-wide/high16 v5, 0x3ff0

    sub-double/2addr v5, v10

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/googlecode/javacv/HandMouse;->imageTipY:D

    mul-double/2addr v5, v7

    add-double/2addr v2, v5

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/googlecode/javacv/HandMouse;->imageTipY:D

    .line 332
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/googlecode/javacv/HandMouse;->imageTipX:D

    move/from16 v0, v59

    int-to-double v5, v0

    add-double/2addr v2, v5

    const/4 v5, 0x1

    shl-int v5, v5, p2

    int-to-double v5, v5

    mul-double/2addr v2, v5

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/googlecode/javacv/HandMouse;->tipX:D

    .line 333
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/googlecode/javacv/HandMouse;->imageTipY:D

    move/from16 v0, v60

    int-to-double v5, v0

    add-double/2addr v2, v5

    const/4 v5, 0x1

    shl-int v5, v5, p2

    int-to-double v5, v5

    mul-double/2addr v2, v5

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/googlecode/javacv/HandMouse;->tipY:D

    .line 334
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/googlecode/javacv/HandMouse;->tipTime:J

    .line 335
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/googlecode/javacv/HandMouse;->imageUpdateNeeded:Z

    goto/16 :goto_8

    .line 329
    .end local v10           #a:D
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/HandMouse;->settings:Lcom/googlecode/javacv/HandMouse$Settings;

    iget-wide v10, v2, Lcom/googlecode/javacv/HandMouse$Settings;->updateAlpha:D

    goto :goto_a
.end method
