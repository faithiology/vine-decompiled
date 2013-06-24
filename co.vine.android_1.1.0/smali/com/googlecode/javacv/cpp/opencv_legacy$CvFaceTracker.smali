.class public Lcom/googlecode/javacv/cpp/opencv_legacy$CvFaceTracker;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_legacy.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Opaque;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvFaceTracker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvFaceTracker$ReleaseDeallocator;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1008
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1009
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 1010
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public static create(Lcom/googlecode/javacv/cpp/opencv_legacy$CvFaceTracker;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvFaceTracker;
    .locals 2
    .parameter "pFaceTracking"
    .parameter "imgGray"
    .parameter "pRects"
    .parameter "nRects"

    .prologue
    .line 1014
    new-instance v1, Lcom/googlecode/javacv/cpp/opencv_legacy$CvFaceTracker;

    invoke-direct {v1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvFaceTracker;-><init>()V

    invoke-static {v1, p1, p2, p3}, Lcom/googlecode/javacv/cpp/opencv_legacy;->cvInitFaceTracker(Lcom/googlecode/javacv/cpp/opencv_legacy$CvFaceTracker;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvFaceTracker;

    move-result-object v0

    .line 1015
    .local v0, p:Lcom/googlecode/javacv/cpp/opencv_legacy$CvFaceTracker;
    if-eqz v0, :cond_0

    .line 1016
    new-instance v1, Lcom/googlecode/javacv/cpp/opencv_legacy$CvFaceTracker$ReleaseDeallocator;

    invoke-direct {v1, v0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvFaceTracker$ReleaseDeallocator;-><init>(Lcom/googlecode/javacv/cpp/opencv_legacy$CvFaceTracker;)V

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvFaceTracker;->deallocator(Lcom/googlecode/javacpp/Pointer$Deallocator;)Lcom/googlecode/javacpp/Pointer;

    .line 1018
    :cond_0
    return-object v0
.end method


# virtual methods
.method public release()V
    .locals 0

    .prologue
    .line 1022
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvFaceTracker;->deallocate()V

    .line 1023
    return-void
.end method
