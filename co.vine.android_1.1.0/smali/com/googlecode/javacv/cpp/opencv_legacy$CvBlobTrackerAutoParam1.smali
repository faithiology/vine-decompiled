.class public Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackerAutoParam1;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_legacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvBlobTrackerAutoParam1"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 3383
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3384
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackerAutoParam1;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 3385
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackerAutoParam1;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 3386
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native FGTrainFrames()I
.end method

.method public native FGTrainFrames(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackerAutoParam1;
.end method

.method public native UsePPData()I
.end method

.method public native UsePPData(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackerAutoParam1;
.end method

.method public native pBD()Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobDetector;
.end method

.method public native pBD(Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobDetector;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackerAutoParam1;
.end method

.method public native pBT()Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTracker;
.end method

.method public native pBT(Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTracker;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackerAutoParam1;
.end method

.method public native pBTA()Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackAnalysis;
.end method

.method public native pBTA(Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackAnalysis;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackerAutoParam1;
.end method

.method public native pBTGen()Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackGen;
.end method

.method public native pBTGen(Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackGen;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackerAutoParam1;
.end method

.method public native pBTPP()Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackPostProc;
.end method

.method public native pBTPP(Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackPostProc;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackerAutoParam1;
.end method

.method public native pFG(Lcom/googlecode/javacv/cpp/opencv_legacy$CvFGDetector;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackerAutoParam1;
.end method

.method public native pFG()Lcom/googlecode/javacv/cpp/opencv_legacy$CvFGDetector;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3382
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackerAutoParam1;->position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackerAutoParam1;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackerAutoParam1;
    .locals 1
    .parameter "position"

    .prologue
    .line 3391
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackerAutoParam1;

    return-object v0
.end method
