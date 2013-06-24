.class public Lcom/googlecode/javacv/MarkerDetector;
.super Ljava/lang/Object;
.source "MarkerDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/MarkerDetector$Settings;
    }
.end annotation


# instance fields
.field private channels:I

.field private corners:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;

.field private depth:I

.field private font:Lcom/googlecode/javacv/cpp/opencv_core$CvFont;

.field private height:I

.field private memory:Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;

.field private points:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field private pt1:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

.field private pt2:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

.field private pts:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

.field private settings:Lcom/googlecode/javacv/MarkerDetector$Settings;

.field private sqSumImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

.field private subPixelSize:Lcom/googlecode/javacv/cpp/opencv_core$CvSize;

.field private subPixelTermCriteria:Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;

.field private subPixelZeroZone:Lcom/googlecode/javacv/cpp/opencv_core$CvSize;

.field private sumImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

.field private tempImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

.field private tempImage2:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

.field private textSize:Lcom/googlecode/javacv/cpp/opencv_core$CvSize;

.field private thresholdedImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

.field private tracker:Lcom/googlecode/javacv/cpp/ARToolKitPlus$MultiTracker;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/googlecode/javacv/MarkerDetector$Settings;

    invoke-direct {v0}, Lcom/googlecode/javacv/MarkerDetector$Settings;-><init>()V

    invoke-direct {p0, v0}, Lcom/googlecode/javacv/MarkerDetector;-><init>(Lcom/googlecode/javacv/MarkerDetector$Settings;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/MarkerDetector$Settings;)V
    .locals 5
    .parameter "settings"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object v2, p0, Lcom/googlecode/javacv/MarkerDetector;->tracker:Lcom/googlecode/javacv/cpp/ARToolKitPlus$MultiTracker;

    .line 109
    iput v0, p0, Lcom/googlecode/javacv/MarkerDetector;->width:I

    iput v0, p0, Lcom/googlecode/javacv/MarkerDetector;->height:I

    iput v0, p0, Lcom/googlecode/javacv/MarkerDetector;->depth:I

    iput v0, p0, Lcom/googlecode/javacv/MarkerDetector;->channels:I

    .line 111
    const/4 v0, 0x5

    const/4 v1, 0x2

    invoke-static {v3, v4, v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacv/MarkerDetector;->points:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 112
    new-instance v0, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;

    invoke-direct {v0, v4}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;-><init>(I)V

    iput-object v0, p0, Lcom/googlecode/javacv/MarkerDetector;->corners:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;

    .line 113
    invoke-static {}, Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;->create()Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacv/MarkerDetector;->memory:Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;

    .line 114
    iput-object v2, p0, Lcom/googlecode/javacv/MarkerDetector;->subPixelSize:Lcom/googlecode/javacv/cpp/opencv_core$CvSize;

    iput-object v2, p0, Lcom/googlecode/javacv/MarkerDetector;->subPixelZeroZone:Lcom/googlecode/javacv/cpp/opencv_core$CvSize;

    .line 115
    iput-object v2, p0, Lcom/googlecode/javacv/MarkerDetector;->subPixelTermCriteria:Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;

    .line 117
    new-instance v0, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    invoke-direct {v0, v4}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;-><init>(I)V

    iput-object v0, p0, Lcom/googlecode/javacv/MarkerDetector;->pts:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    new-instance v0, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    invoke-direct {v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;-><init>()V

    iput-object v0, p0, Lcom/googlecode/javacv/MarkerDetector;->pt1:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    new-instance v0, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    invoke-direct {v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;-><init>()V

    iput-object v0, p0, Lcom/googlecode/javacv/MarkerDetector;->pt2:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    .line 118
    new-instance v0, Lcom/googlecode/javacv/cpp/opencv_core$CvFont;

    const-wide/high16 v1, 0x3ff0

    invoke-direct {v0, v3, v1, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvFont;-><init>(IDI)V

    iput-object v0, p0, Lcom/googlecode/javacv/MarkerDetector;->font:Lcom/googlecode/javacv/cpp/opencv_core$CvFont;

    .line 119
    new-instance v0, Lcom/googlecode/javacv/cpp/opencv_core$CvSize;

    invoke-direct {v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvSize;-><init>()V

    iput-object v0, p0, Lcom/googlecode/javacv/MarkerDetector;->textSize:Lcom/googlecode/javacv/cpp/opencv_core$CvSize;

    .line 36
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/MarkerDetector;->setSettings(Lcom/googlecode/javacv/MarkerDetector$Settings;)V

    .line 37
    return-void
.end method

.method private init(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V
    .locals 7
    .parameter "image"

    .prologue
    const/16 v6, 0x40

    const/16 v5, 0x8

    const/4 v4, 0x1

    .line 126
    iget-object v1, p0, Lcom/googlecode/javacv/MarkerDetector;->tracker:Lcom/googlecode/javacv/cpp/ARToolKitPlus$MultiTracker;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v1

    iget v2, p0, Lcom/googlecode/javacv/MarkerDetector;->width:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v1

    iget v2, p0, Lcom/googlecode/javacv/MarkerDetector;->height:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v1

    iget v2, p0, Lcom/googlecode/javacv/MarkerDetector;->depth:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->nChannels()I

    move-result v1

    iget v2, p0, Lcom/googlecode/javacv/MarkerDetector;->channels:I

    if-ne v1, v2, :cond_0

    .line 179
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v1

    iput v1, p0, Lcom/googlecode/javacv/MarkerDetector;->width:I

    .line 132
    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v1

    iput v1, p0, Lcom/googlecode/javacv/MarkerDetector;->height:I

    .line 133
    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v1

    iput v1, p0, Lcom/googlecode/javacv/MarkerDetector;->depth:I

    .line 134
    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->nChannels()I

    move-result v1

    iput v1, p0, Lcom/googlecode/javacv/MarkerDetector;->channels:I

    .line 136
    iget v1, p0, Lcom/googlecode/javacv/MarkerDetector;->depth:I

    if-ne v1, v5, :cond_1

    iget v1, p0, Lcom/googlecode/javacv/MarkerDetector;->channels:I

    if-le v1, v4, :cond_2

    .line 137
    :cond_1
    iget v1, p0, Lcom/googlecode/javacv/MarkerDetector;->width:I

    iget v2, p0, Lcom/googlecode/javacv/MarkerDetector;->height:I

    invoke-static {v1, v2, v5, v4}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v1

    iput-object v1, p0, Lcom/googlecode/javacv/MarkerDetector;->tempImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 139
    :cond_2
    iget v1, p0, Lcom/googlecode/javacv/MarkerDetector;->depth:I

    if-eq v1, v5, :cond_3

    iget v1, p0, Lcom/googlecode/javacv/MarkerDetector;->channels:I

    if-le v1, v4, :cond_3

    .line 140
    iget v1, p0, Lcom/googlecode/javacv/MarkerDetector;->width:I

    iget v2, p0, Lcom/googlecode/javacv/MarkerDetector;->height:I

    const/4 v3, 0x3

    invoke-static {v1, v2, v5, v3}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v1

    iput-object v1, p0, Lcom/googlecode/javacv/MarkerDetector;->tempImage2:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 142
    :cond_3
    iget v1, p0, Lcom/googlecode/javacv/MarkerDetector;->width:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/googlecode/javacv/MarkerDetector;->height:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2, v6, v4}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v1

    iput-object v1, p0, Lcom/googlecode/javacv/MarkerDetector;->sumImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 143
    iget v1, p0, Lcom/googlecode/javacv/MarkerDetector;->width:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/googlecode/javacv/MarkerDetector;->height:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2, v6, v4}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v1

    iput-object v1, p0, Lcom/googlecode/javacv/MarkerDetector;->sqSumImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 144
    iget v1, p0, Lcom/googlecode/javacv/MarkerDetector;->width:I

    iget v2, p0, Lcom/googlecode/javacv/MarkerDetector;->height:I

    invoke-static {v1, v2, v5, v4}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v1

    iput-object v1, p0, Lcom/googlecode/javacv/MarkerDetector;->thresholdedImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 146
    new-instance v1, Lcom/googlecode/javacv/cpp/ARToolKitPlus$MultiTracker;

    iget-object v2, p0, Lcom/googlecode/javacv/MarkerDetector;->thresholdedImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I

    move-result v2

    iget-object v3, p0, Lcom/googlecode/javacv/MarkerDetector;->thresholdedImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v3}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/googlecode/javacv/cpp/ARToolKitPlus$MultiTracker;-><init>(II)V

    iput-object v1, p0, Lcom/googlecode/javacv/MarkerDetector;->tracker:Lcom/googlecode/javacv/cpp/ARToolKitPlus$MultiTracker;

    .line 149
    iget-object v1, p0, Lcom/googlecode/javacv/MarkerDetector;->tracker:Lcom/googlecode/javacv/cpp/ARToolKitPlus$MultiTracker;

    new-instance v2, Lcom/googlecode/javacv/MarkerDetector$1;

    invoke-direct {v2, p0}, Lcom/googlecode/javacv/MarkerDetector$1;-><init>(Lcom/googlecode/javacv/MarkerDetector;)V

    invoke-virtual {v1, v2}, Lcom/googlecode/javacv/cpp/ARToolKitPlus$MultiTracker;->setLoggerFunction(Lcom/googlecode/javacv/cpp/ARToolKitPlus$ArtLogFunction;)V

    .line 158
    const/4 v0, 0x7

    .line 166
    .local v0, pixfmt:I
    iget-object v1, p0, Lcom/googlecode/javacv/MarkerDetector;->tracker:Lcom/googlecode/javacv/cpp/ARToolKitPlus$MultiTracker;

    invoke-virtual {v1, v0}, Lcom/googlecode/javacv/cpp/ARToolKitPlus$MultiTracker;->setPixelFormat(I)Z

    .line 171
    iget-object v1, p0, Lcom/googlecode/javacv/MarkerDetector;->tracker:Lcom/googlecode/javacv/cpp/ARToolKitPlus$MultiTracker;

    const-wide/high16 v2, 0x3fc0

    invoke-virtual {v1, v2, v3}, Lcom/googlecode/javacv/cpp/ARToolKitPlus$MultiTracker;->setBorderWidth(D)V

    .line 175
    iget-object v1, p0, Lcom/googlecode/javacv/MarkerDetector;->tracker:Lcom/googlecode/javacv/cpp/ARToolKitPlus$MultiTracker;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/googlecode/javacv/cpp/ARToolKitPlus$MultiTracker;->setUndistortionMode(I)V

    .line 177
    iget-object v1, p0, Lcom/googlecode/javacv/MarkerDetector;->tracker:Lcom/googlecode/javacv/cpp/ARToolKitPlus$MultiTracker;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/googlecode/javacv/cpp/ARToolKitPlus$MultiTracker;->setMarkerMode(I)V

    .line 178
    iget-object v1, p0, Lcom/googlecode/javacv/MarkerDetector;->tracker:Lcom/googlecode/javacv/cpp/ARToolKitPlus$MultiTracker;

    invoke-virtual {v1, v4}, Lcom/googlecode/javacv/cpp/ARToolKitPlus$MultiTracker;->setImageProcessingMode(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public detect(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Z)[Lcom/googlecode/javacv/Marker;
    .locals 31
    .parameter "image"
    .parameter "whiteMarkers"

    .prologue
    .line 182
    invoke-direct/range {p0 .. p1}, Lcom/googlecode/javacv/MarkerDetector;->init(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    .line 184
    move-object/from16 v0, p0

    iget v4, v0, Lcom/googlecode/javacv/MarkerDetector;->depth:I

    const/16 v5, 0x8

    if-eq v4, v5, :cond_3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/googlecode/javacv/MarkerDetector;->channels:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_3

    .line 185
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/MarkerDetector;->tempImage2:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    const-wide v6, 0x406fe00000000000L

    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->highValue()D

    move-result-wide v8

    div-double/2addr v6, v8

    const-wide/16 v8, 0x0

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v9}, Lcom/googlecode/javacv/cpp/opencv_core;->cvConvertScale(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;DD)V

    .line 186
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/MarkerDetector;->tempImage2:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/googlecode/javacv/MarkerDetector;->tempImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/googlecode/javacv/MarkerDetector;->channels:I

    const/4 v7, 0x3

    if-le v4, v7, :cond_2

    const/16 v4, 0xb

    :goto_0
    invoke-static {v5, v6, v4}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvCvtColor(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/MarkerDetector;->tempImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 p1, v0

    .line 196
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/MarkerDetector;->sumImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/googlecode/javacv/MarkerDetector;->sqSumImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/googlecode/javacv/MarkerDetector;->thresholdedImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/MarkerDetector;->settings:Lcom/googlecode/javacv/MarkerDetector$Settings;

    iget v9, v4, Lcom/googlecode/javacv/MarkerDetector$Settings;->thresholdWindowMax:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/MarkerDetector;->settings:Lcom/googlecode/javacv/MarkerDetector$Settings;

    iget v10, v4, Lcom/googlecode/javacv/MarkerDetector$Settings;->thresholdWindowMin:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/MarkerDetector;->settings:Lcom/googlecode/javacv/MarkerDetector$Settings;

    iget-wide v11, v4, Lcom/googlecode/javacv/MarkerDetector$Settings;->thresholdVarMultiplier:D

    if-eqz p2, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/MarkerDetector;->settings:Lcom/googlecode/javacv/MarkerDetector$Settings;

    iget-wide v13, v4, Lcom/googlecode/javacv/MarkerDetector$Settings;->thresholdKWhiteMarkers:D

    :goto_2
    move-object/from16 v4, p1

    move/from16 v8, p2

    invoke-static/range {v4 .. v14}, Lcom/googlecode/javacv/JavaCV;->adaptiveThreshold(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;ZIIDD)V

    .line 203
    const/4 v4, 0x1

    new-array v0, v4, [I

    move-object/from16 v26, v0

    .line 204
    .local v26, n:[I
    new-instance v24, Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMarkerInfo;

    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMarkerInfo;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    .line 205
    .local v24, markers:Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMarkerInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/MarkerDetector;->tracker:Lcom/googlecode/javacv/cpp/ARToolKitPlus$MultiTracker;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/MarkerDetector;->thresholdedImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v5}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    const/16 v6, 0x80

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v4, v5, v6, v0, v1}, Lcom/googlecode/javacv/cpp/ARToolKitPlus$MultiTracker;->arDetectMarkerLite(Ljava/nio/ByteBuffer;ILcom/googlecode/javacv/cpp/ARToolKitPlus$ARMarkerInfo;[I)I

    .line 207
    const/4 v4, 0x0

    aget v4, v26, v4

    new-array v0, v4, [Lcom/googlecode/javacv/Marker;

    move-object/from16 v25, v0

    .line 208
    .local v25, markers2:[Lcom/googlecode/javacv/Marker;
    const/16 v27, 0x0

    .line 209
    .local v27, n2:I
    const/16 v21, 0x0

    .local v21, i:I
    :goto_3
    const/4 v4, 0x0

    aget v4, v26, v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_9

    invoke-virtual/range {v24 .. v24}, Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMarkerInfo;->isNull()Z

    move-result v4

    if-nez v4, :cond_9

    .line 210
    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMarkerInfo;->position(I)Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMarkerInfo;

    .line 211
    invoke-virtual/range {v24 .. v24}, Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMarkerInfo;->id()I

    move-result v22

    .line 212
    .local v22, id:I
    if-gez v22, :cond_7

    .line 209
    :cond_1
    :goto_4
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 186
    .end local v21           #i:I
    .end local v22           #id:I
    .end local v24           #markers:Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMarkerInfo;
    .end local v25           #markers2:[Lcom/googlecode/javacv/Marker;
    .end local v26           #n:[I
    .end local v27           #n2:I
    :cond_2
    const/4 v4, 0x6

    goto/16 :goto_0

    .line 188
    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/googlecode/javacv/MarkerDetector;->depth:I

    const/16 v5, 0x8

    if-eq v4, v5, :cond_4

    .line 189
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/MarkerDetector;->tempImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    const-wide v6, 0x406fe00000000000L

    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->highValue()D

    move-result-wide v8

    div-double/2addr v6, v8

    const-wide/16 v8, 0x0

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v9}, Lcom/googlecode/javacv/cpp/opencv_core;->cvConvertScale(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;DD)V

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/MarkerDetector;->tempImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 p1, v0

    goto/16 :goto_1

    .line 191
    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/googlecode/javacv/MarkerDetector;->channels:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 192
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/MarkerDetector;->tempImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/googlecode/javacv/MarkerDetector;->channels:I

    const/4 v6, 0x3

    if-le v4, v6, :cond_5

    const/16 v4, 0xb

    :goto_5
    move-object/from16 v0, p1

    invoke-static {v0, v5, v4}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvCvtColor(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/MarkerDetector;->tempImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 p1, v0

    goto/16 :goto_1

    .line 192
    :cond_5
    const/4 v4, 0x6

    goto :goto_5

    .line 196
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/MarkerDetector;->settings:Lcom/googlecode/javacv/MarkerDetector$Settings;

    iget-wide v13, v4, Lcom/googlecode/javacv/MarkerDetector$Settings;->thresholdKBlackMarkers:D

    goto/16 :goto_2

    .line 216
    .restart local v21       #i:I
    .restart local v22       #id:I
    .restart local v24       #markers:Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMarkerInfo;
    .restart local v25       #markers2:[Lcom/googlecode/javacv/Marker;
    .restart local v26       #n:[I
    .restart local v27       #n2:I
    :cond_7
    invoke-virtual/range {v24 .. v24}, Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMarkerInfo;->dir()I

    move-result v20

    .line 217
    .local v20, dir:I
    invoke-virtual/range {v24 .. v24}, Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMarkerInfo;->cf()D

    move-result-wide v18

    .line 218
    .local v18, confidence:D
    const/16 v4, 0x8

    new-array v0, v4, [D

    move-object/from16 v29, v0

    .line 219
    .local v29, vertex:[D
    invoke-virtual/range {v24 .. v24}, Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMarkerInfo;->vertex()Lcom/googlecode/javacpp/DoublePointer;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Lcom/googlecode/javacpp/DoublePointer;->get([D)Lcom/googlecode/javacpp/DoublePointer;

    .line 221
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/MarkerDetector;->settings:Lcom/googlecode/javacv/MarkerDetector$Settings;

    iget v4, v4, Lcom/googlecode/javacv/MarkerDetector$Settings;->subPixelWindow:I

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v30, v4, 0x1

    .line 222
    .local v30, w:I
    const/4 v4, 0x0

    aget-wide v4, v29, v4

    move/from16 v0, v30

    int-to-double v6, v0

    sub-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-ltz v4, :cond_1

    const/4 v4, 0x0

    aget-wide v4, v29, v4

    move/from16 v0, v30

    int-to-double v6, v0

    add-double/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/googlecode/javacv/MarkerDetector;->width:I

    int-to-double v6, v6

    cmpl-double v4, v4, v6

    if-gez v4, :cond_1

    const/4 v4, 0x1

    aget-wide v4, v29, v4

    move/from16 v0, v30

    int-to-double v6, v0

    sub-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-ltz v4, :cond_1

    const/4 v4, 0x1

    aget-wide v4, v29, v4

    move/from16 v0, v30

    int-to-double v6, v0

    add-double/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/googlecode/javacv/MarkerDetector;->height:I

    int-to-double v6, v6

    cmpl-double v4, v4, v6

    if-gez v4, :cond_1

    const/4 v4, 0x2

    aget-wide v4, v29, v4

    move/from16 v0, v30

    int-to-double v6, v0

    sub-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-ltz v4, :cond_1

    const/4 v4, 0x2

    aget-wide v4, v29, v4

    move/from16 v0, v30

    int-to-double v6, v0

    add-double/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/googlecode/javacv/MarkerDetector;->width:I

    int-to-double v6, v6

    cmpl-double v4, v4, v6

    if-gez v4, :cond_1

    const/4 v4, 0x3

    aget-wide v4, v29, v4

    move/from16 v0, v30

    int-to-double v6, v0

    sub-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-ltz v4, :cond_1

    const/4 v4, 0x3

    aget-wide v4, v29, v4

    move/from16 v0, v30

    int-to-double v6, v0

    add-double/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/googlecode/javacv/MarkerDetector;->height:I

    int-to-double v6, v6

    cmpl-double v4, v4, v6

    if-gez v4, :cond_1

    const/4 v4, 0x4

    aget-wide v4, v29, v4

    move/from16 v0, v30

    int-to-double v6, v0

    sub-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-ltz v4, :cond_1

    const/4 v4, 0x4

    aget-wide v4, v29, v4

    move/from16 v0, v30

    int-to-double v6, v0

    add-double/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/googlecode/javacv/MarkerDetector;->width:I

    int-to-double v6, v6

    cmpl-double v4, v4, v6

    if-gez v4, :cond_1

    const/4 v4, 0x5

    aget-wide v4, v29, v4

    move/from16 v0, v30

    int-to-double v6, v0

    sub-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-ltz v4, :cond_1

    const/4 v4, 0x5

    aget-wide v4, v29, v4

    move/from16 v0, v30

    int-to-double v6, v0

    add-double/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/googlecode/javacv/MarkerDetector;->height:I

    int-to-double v6, v6

    cmpl-double v4, v4, v6

    if-gez v4, :cond_1

    const/4 v4, 0x6

    aget-wide v4, v29, v4

    move/from16 v0, v30

    int-to-double v6, v0

    sub-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-ltz v4, :cond_1

    const/4 v4, 0x6

    aget-wide v4, v29, v4

    move/from16 v0, v30

    int-to-double v6, v0

    add-double/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/googlecode/javacv/MarkerDetector;->width:I

    int-to-double v6, v6

    cmpl-double v4, v4, v6

    if-gez v4, :cond_1

    const/4 v4, 0x7

    aget-wide v4, v29, v4

    move/from16 v0, v30

    int-to-double v6, v0

    sub-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-ltz v4, :cond_1

    const/4 v4, 0x7

    aget-wide v4, v29, v4

    move/from16 v0, v30

    int-to-double v6, v0

    add-double/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/googlecode/javacv/MarkerDetector;->height:I

    int-to-double v6, v6

    cmpl-double v4, v4, v6

    if-gez v4, :cond_1

    .line 230
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/MarkerDetector;->points:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put([D)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/MarkerDetector;->memory:Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;

    invoke-static {v4, v5}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvMinAreaRect2(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;)Lcom/googlecode/javacv/cpp/opencv_core$CvBox2D;

    move-result-object v16

    .line 231
    .local v16, box:Lcom/googlecode/javacv/cpp/opencv_core$CvBox2D;
    invoke-virtual/range {v16 .. v16}, Lcom/googlecode/javacv/cpp/opencv_core$CvBox2D;->size()Lcom/googlecode/javacv/cpp/opencv_core$CvSize2D32f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/opencv_core$CvSize2D32f;->width()F

    move-result v17

    .line 232
    .local v17, bw:F
    invoke-virtual/range {v16 .. v16}, Lcom/googlecode/javacv/cpp/opencv_core$CvBox2D;->size()Lcom/googlecode/javacv/cpp/opencv_core$CvSize2D32f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/opencv_core$CvSize2D32f;->height()F

    move-result v15

    .line 233
    .local v15, bh:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/MarkerDetector;->memory:Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;

    invoke-static {v4}, Lcom/googlecode/javacv/cpp/opencv_core;->cvClearMemStorage(Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;)V

    .line 234
    const/4 v4, 0x0

    cmpg-float v4, v17, v4

    if-lez v4, :cond_1

    const/4 v4, 0x0

    cmpg-float v4, v15, v4

    if-lez v4, :cond_1

    div-float v4, v17, v15

    float-to-double v4, v4

    const-wide v6, 0x3fb999999999999aL

    cmpg-double v4, v4, v6

    if-ltz v4, :cond_1

    div-float v4, v17, v15

    const/high16 v5, 0x4120

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_1

    .line 239
    const/16 v23, 0x0

    .local v23, j:I
    :goto_6
    const/4 v4, 0x4

    move/from16 v0, v23

    if-ge v0, v4, :cond_8

    .line 240
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/MarkerDetector;->corners:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;

    move-result-object v4

    mul-int/lit8 v5, v23, 0x2

    aget-wide v5, v29, v5

    mul-int/lit8 v7, v23, 0x2

    add-int/lit8 v7, v7, 0x1

    aget-wide v7, v29, v7

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->put(DD)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;

    .line 239
    add-int/lit8 v23, v23, 0x1

    goto :goto_6

    .line 264
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/MarkerDetector;->corners:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;

    move-result-object v5

    const/4 v6, 0x4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/googlecode/javacv/MarkerDetector;->subPixelSize:Lcom/googlecode/javacv/cpp/opencv_core$CvSize;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/googlecode/javacv/MarkerDetector;->subPixelZeroZone:Lcom/googlecode/javacv/cpp/opencv_core$CvSize;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/googlecode/javacv/MarkerDetector;->subPixelTermCriteria:Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v9}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvFindCornerSubPix(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;ILcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;)V

    .line 265
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/MarkerDetector;->corners:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;

    rsub-int/lit8 v6, v20, 0x4

    rem-int/lit8 v6, v6, 0x4

    invoke-virtual {v5, v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->x()F

    move-result v5

    float-to-double v5, v5

    aput-wide v5, v29, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/MarkerDetector;->corners:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;

    rsub-int/lit8 v6, v20, 0x4

    rem-int/lit8 v6, v6, 0x4

    invoke-virtual {v5, v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->y()F

    move-result v5

    float-to-double v5, v5

    aput-wide v5, v29, v4

    .line 266
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/MarkerDetector;->corners:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;

    rsub-int/lit8 v6, v20, 0x5

    rem-int/lit8 v6, v6, 0x4

    invoke-virtual {v5, v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->x()F

    move-result v5

    float-to-double v5, v5

    aput-wide v5, v29, v4

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/MarkerDetector;->corners:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;

    rsub-int/lit8 v6, v20, 0x5

    rem-int/lit8 v6, v6, 0x4

    invoke-virtual {v5, v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->y()F

    move-result v5

    float-to-double v5, v5

    aput-wide v5, v29, v4

    .line 267
    const/4 v4, 0x4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/MarkerDetector;->corners:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;

    rsub-int/lit8 v6, v20, 0x6

    rem-int/lit8 v6, v6, 0x4

    invoke-virtual {v5, v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->x()F

    move-result v5

    float-to-double v5, v5

    aput-wide v5, v29, v4

    const/4 v4, 0x5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/MarkerDetector;->corners:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;

    rsub-int/lit8 v6, v20, 0x6

    rem-int/lit8 v6, v6, 0x4

    invoke-virtual {v5, v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->y()F

    move-result v5

    float-to-double v5, v5

    aput-wide v5, v29, v4

    .line 268
    const/4 v4, 0x6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/MarkerDetector;->corners:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;

    rsub-int/lit8 v6, v20, 0x7

    rem-int/lit8 v6, v6, 0x4

    invoke-virtual {v5, v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->x()F

    move-result v5

    float-to-double v5, v5

    aput-wide v5, v29, v4

    const/4 v4, 0x7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/MarkerDetector;->corners:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;

    rsub-int/lit8 v6, v20, 0x7

    rem-int/lit8 v6, v6, 0x4

    invoke-virtual {v5, v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->y()F

    move-result v5

    float-to-double v5, v5

    aput-wide v5, v29, v4

    .line 270
    add-int/lit8 v28, v27, 0x1

    .end local v27           #n2:I
    .local v28, n2:I
    new-instance v4, Lcom/googlecode/javacv/Marker;

    move/from16 v0, v22

    move-object/from16 v1, v29

    move-wide/from16 v2, v18

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/googlecode/javacv/Marker;-><init>(I[DD)V

    aput-object v4, v25, v27

    move/from16 v27, v28

    .end local v28           #n2:I
    .restart local v27       #n2:I
    goto/16 :goto_4

    .line 278
    .end local v15           #bh:F
    .end local v16           #box:Lcom/googlecode/javacv/cpp/opencv_core$CvBox2D;
    .end local v17           #bw:F
    .end local v18           #confidence:D
    .end local v20           #dir:I
    .end local v22           #id:I
    .end local v23           #j:I
    .end local v29           #vertex:[D
    .end local v30           #w:I
    :cond_9
    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/googlecode/javacv/Marker;

    return-object v4
.end method

.method public draw(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;[Lcom/googlecode/javacv/Marker;)V
    .locals 26
    .parameter "image"
    .parameter "markers"

    .prologue
    .line 282
    move-object/from16 v11, p2

    .local v11, arr$:[Lcom/googlecode/javacv/Marker;
    array-length v0, v11

    move/from16 v17, v0

    .local v17, len$:I
    const/16 v16, 0x0

    .local v16, i$:I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    aget-object v18, v11, v16

    .line 283
    .local v18, m:Lcom/googlecode/javacv/Marker;
    const/4 v13, 0x0

    .local v13, cx:I
    const/4 v14, 0x0

    .line 284
    .local v14, cy:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_1
    const/4 v2, 0x4

    if-ge v15, v2, :cond_0

    .line 285
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/googlecode/javacv/Marker;->corners:[D

    mul-int/lit8 v3, v15, 0x2

    aget-wide v2, v2, v3

    const-wide/high16 v4, 0x40f0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 v20, v0

    .line 286
    .local v20, x:I
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/googlecode/javacv/Marker;->corners:[D

    mul-int/lit8 v3, v15, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-wide v2, v2, v3

    const-wide/high16 v4, 0x40f0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 v21, v0

    .line 287
    .local v21, y:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/MarkerDetector;->pts:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    invoke-virtual {v2, v15}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->x(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/MarkerDetector;->pts:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    invoke-virtual {v2, v15}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    move-result-object v2

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->y(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    .line 289
    add-int v13, v13, v20

    .line 290
    add-int v14, v14, v21

    .line 284
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 302
    .end local v20           #x:I
    .end local v21           #y:I
    :cond_0
    div-int/lit8 v13, v13, 0x4

    .line 303
    div-int/lit8 v14, v14, 0x4

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/MarkerDetector;->pts:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    move-object/from16 v22, v0

    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v23, v0

    const/4 v2, 0x0

    const/4 v3, 0x4

    aput v3, v23, v2

    const/16 v24, 0x1

    const/16 v25, 0x1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->highValue()D

    move-result-wide v6

    invoke-static/range {v2 .. v7}, Lcom/googlecode/javacv/cpp/opencv_core;->CV_RGB(DDD)Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    move-result-object v7

    const/4 v8, 0x1

    const/16 v9, 0x10

    const/16 v10, 0x10

    move-object/from16 v2, p1

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    move/from16 v5, v24

    move/from16 v6, v25

    invoke-static/range {v2 .. v10}, Lcom/googlecode/javacv/cpp/opencv_core;->cvPolyLine(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;[IIILcom/googlecode/javacv/cpp/opencv_core$CvScalar;III)V

    .line 307
    move-object/from16 v0, v18

    iget v2, v0, Lcom/googlecode/javacv/Marker;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    .line 308
    .local v19, text:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v12, v2, [I

    .line 309
    .local v12, baseline:[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/MarkerDetector;->font:Lcom/googlecode/javacv/cpp/opencv_core$CvFont;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/MarkerDetector;->textSize:Lcom/googlecode/javacv/cpp/opencv_core$CvSize;

    move-object/from16 v0, v19

    invoke-static {v0, v2, v3, v12}, Lcom/googlecode/javacv/cpp/opencv_core;->cvGetTextSize(Ljava/lang/String;Lcom/googlecode/javacv/cpp/opencv_core$CvFont;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;[I)V

    .line 311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/MarkerDetector;->pt1:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/MarkerDetector;->textSize:Lcom/googlecode/javacv/cpp/opencv_core$CvSize;

    invoke-virtual {v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvSize;->width()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    shl-int/lit8 v3, v3, 0x10

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v13, v3

    invoke-virtual {v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->x(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    .line 312
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/MarkerDetector;->pt1:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/MarkerDetector;->textSize:Lcom/googlecode/javacv/cpp/opencv_core$CvSize;

    invoke-virtual {v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvSize;->height()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    shl-int/lit8 v3, v3, 0x10

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v14

    invoke-virtual {v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->y(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    .line 313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/MarkerDetector;->pt2:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/MarkerDetector;->textSize:Lcom/googlecode/javacv/cpp/opencv_core$CvSize;

    invoke-virtual {v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvSize;->width()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    shl-int/lit8 v3, v3, 0x10

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v13

    invoke-virtual {v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->x(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    .line 314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/MarkerDetector;->pt2:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/MarkerDetector;->textSize:Lcom/googlecode/javacv/cpp/opencv_core$CvSize;

    invoke-virtual {v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvSize;->height()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    shl-int/lit8 v3, v3, 0x10

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v14, v3

    invoke-virtual {v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->y(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    .line 315
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/googlecode/javacv/MarkerDetector;->pt1:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/googlecode/javacv/MarkerDetector;->pt2:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    const-wide/16 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->highValue()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-static/range {v2 .. v7}, Lcom/googlecode/javacv/cpp/opencv_core;->CV_RGB(DDD)Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    move-result-object v5

    const/4 v6, -0x1

    const/16 v7, 0x10

    const/16 v8, 0x10

    move-object/from16 v2, p1

    move-object v3, v9

    move-object v4, v10

    invoke-static/range {v2 .. v8}, Lcom/googlecode/javacv/cpp/opencv_core;->cvRectangle(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;III)V

    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/MarkerDetector;->pt1:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    int-to-double v3, v13

    const-wide/high16 v5, 0x40f0

    div-double/2addr v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/MarkerDetector;->textSize:Lcom/googlecode/javacv/cpp/opencv_core$CvSize;

    invoke-virtual {v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvSize;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-double v5, v5

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->x(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    .line 318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/MarkerDetector;->pt1:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    int-to-double v3, v14

    const-wide/high16 v5, 0x40f0

    div-double/2addr v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/MarkerDetector;->textSize:Lcom/googlecode/javacv/cpp/opencv_core$CvSize;

    invoke-virtual {v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvSize;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-double v5, v5

    add-double/2addr v3, v5

    const-wide/high16 v5, 0x3ff0

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->y(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    .line 319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/MarkerDetector;->pt1:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/MarkerDetector;->font:Lcom/googlecode/javacv/cpp/opencv_core$CvFont;

    sget-object v4, Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;->BLACK:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1, v2, v3, v4}, Lcom/googlecode/javacv/cpp/opencv_core;->cvPutText(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Ljava/lang/String;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;Lcom/googlecode/javacv/cpp/opencv_core$CvFont;Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;)V

    .line 282
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 321
    .end local v12           #baseline:[I
    .end local v13           #cx:I
    .end local v14           #cy:I
    .end local v15           #i:I
    .end local v18           #m:Lcom/googlecode/javacv/Marker;
    .end local v19           #text:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public getSettings()Lcom/googlecode/javacv/MarkerDetector$Settings;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/googlecode/javacv/MarkerDetector;->settings:Lcom/googlecode/javacv/MarkerDetector$Settings;

    return-object v0
.end method

.method public getThresholdedImage()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/googlecode/javacv/MarkerDetector;->thresholdedImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    return-object v0
.end method

.method public setSettings(Lcom/googlecode/javacv/MarkerDetector$Settings;)V
    .locals 4
    .parameter "settings"

    .prologue
    const/4 v2, -0x1

    .line 102
    iput-object p1, p0, Lcom/googlecode/javacv/MarkerDetector;->settings:Lcom/googlecode/javacv/MarkerDetector$Settings;

    .line 103
    iget v0, p1, Lcom/googlecode/javacv/MarkerDetector$Settings;->subPixelWindow:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p1, Lcom/googlecode/javacv/MarkerDetector$Settings;->subPixelWindow:I

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSize(II)Lcom/googlecode/javacv/cpp/opencv_core$CvSize;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacv/MarkerDetector;->subPixelSize:Lcom/googlecode/javacv/cpp/opencv_core$CvSize;

    .line 104
    invoke-static {v2, v2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSize(II)Lcom/googlecode/javacv/cpp/opencv_core$CvSize;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacv/MarkerDetector;->subPixelZeroZone:Lcom/googlecode/javacv/cpp/opencv_core$CvSize;

    .line 105
    const/4 v0, 0x2

    const/16 v1, 0x64

    const-wide v2, 0x3f50624dd2f1a9fcL

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core;->cvTermCriteria(IID)Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacv/MarkerDetector;->subPixelTermCriteria:Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;

    .line 106
    return-void
.end method
