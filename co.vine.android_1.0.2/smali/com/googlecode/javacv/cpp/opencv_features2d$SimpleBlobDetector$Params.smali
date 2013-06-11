.class public Lcom/googlecode/javacv/cpp/opencv_features2d$SimpleBlobDetector$Params;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_features2d.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/NoOffset;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_features2d$SimpleBlobDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Params"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 526
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 527
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d$SimpleBlobDetector$Params;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 528
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_features2d$SimpleBlobDetector$Params;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 529
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native blobColor()B
.end method

.method public native blobColor(B)Lcom/googlecode/javacv/cpp/opencv_features2d$SimpleBlobDetector$Params;
.end method

.method public native filterByArea(Z)Lcom/googlecode/javacv/cpp/opencv_features2d$SimpleBlobDetector$Params;
.end method

.method public native filterByArea()Z
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "bool"
        }
    .end annotation
.end method

.method public native filterByCircularity(Z)Lcom/googlecode/javacv/cpp/opencv_features2d$SimpleBlobDetector$Params;
.end method

.method public native filterByCircularity()Z
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "bool"
        }
    .end annotation
.end method

.method public native filterByColor(Z)Lcom/googlecode/javacv/cpp/opencv_features2d$SimpleBlobDetector$Params;
.end method

.method public native filterByColor()Z
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "bool"
        }
    .end annotation
.end method

.method public native filterByConvexity(Z)Lcom/googlecode/javacv/cpp/opencv_features2d$SimpleBlobDetector$Params;
.end method

.method public native filterByConvexity()Z
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "bool"
        }
    .end annotation
.end method

.method public native filterByInertia(Z)Lcom/googlecode/javacv/cpp/opencv_features2d$SimpleBlobDetector$Params;
.end method

.method public native filterByInertia()Z
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "bool"
        }
    .end annotation
.end method

.method public native maxArea()F
.end method

.method public native maxArea(F)Lcom/googlecode/javacv/cpp/opencv_features2d$SimpleBlobDetector$Params;
.end method

.method public native maxCircularity()F
.end method

.method public native maxCircularity(F)Lcom/googlecode/javacv/cpp/opencv_features2d$SimpleBlobDetector$Params;
.end method

.method public native maxConvexity()F
.end method

.method public native maxConvexity(F)Lcom/googlecode/javacv/cpp/opencv_features2d$SimpleBlobDetector$Params;
.end method

.method public native maxInertiaRatio()F
.end method

.method public native maxInertiaRatio(F)Lcom/googlecode/javacv/cpp/opencv_features2d$SimpleBlobDetector$Params;
.end method

.method public native maxThreshold()F
.end method

.method public native maxThreshold(F)Lcom/googlecode/javacv/cpp/opencv_features2d$SimpleBlobDetector$Params;
.end method

.method public native minArea()F
.end method

.method public native minArea(F)Lcom/googlecode/javacv/cpp/opencv_features2d$SimpleBlobDetector$Params;
.end method

.method public native minCircularity()F
.end method

.method public native minCircularity(F)Lcom/googlecode/javacv/cpp/opencv_features2d$SimpleBlobDetector$Params;
.end method

.method public native minConvexity()F
.end method

.method public native minConvexity(F)Lcom/googlecode/javacv/cpp/opencv_features2d$SimpleBlobDetector$Params;
.end method

.method public native minDistBetweenBlobs()F
.end method

.method public native minDistBetweenBlobs(F)Lcom/googlecode/javacv/cpp/opencv_features2d$SimpleBlobDetector$Params;
.end method

.method public native minInertiaRatio()F
.end method

.method public native minInertiaRatio(F)Lcom/googlecode/javacv/cpp/opencv_features2d$SimpleBlobDetector$Params;
.end method

.method public native minRepeatability()J
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "size_t"
        }
    .end annotation
.end method

.method public native minRepeatability(J)Lcom/googlecode/javacv/cpp/opencv_features2d$SimpleBlobDetector$Params;
.end method

.method public native minThreshold()F
.end method

.method public native minThreshold(F)Lcom/googlecode/javacv/cpp/opencv_features2d$SimpleBlobDetector$Params;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 525
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_features2d$SimpleBlobDetector$Params;->position(I)Lcom/googlecode/javacv/cpp/opencv_features2d$SimpleBlobDetector$Params;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_features2d$SimpleBlobDetector$Params;
    .locals 1
    .parameter "position"

    .prologue
    .line 534
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_features2d$SimpleBlobDetector$Params;

    return-object v0
.end method

.method public native read(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Adapter;
            argc = 0x2
            value = "FileNodeAdapter"
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public native thresholdStep()F
.end method

.method public native thresholdStep(F)Lcom/googlecode/javacv/cpp/opencv_features2d$SimpleBlobDetector$Params;
.end method

.method public native write(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Adapter;
            value = "FileStorageAdapter"
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
.end method
