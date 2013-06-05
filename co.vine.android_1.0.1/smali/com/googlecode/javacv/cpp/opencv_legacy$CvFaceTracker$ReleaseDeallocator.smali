.class Lcom/googlecode/javacv/cpp/opencv_legacy$CvFaceTracker$ReleaseDeallocator;
.super Lcom/googlecode/javacv/cpp/opencv_legacy$CvFaceTracker;
.source "opencv_legacy.java"

# interfaces
.implements Lcom/googlecode/javacpp/Pointer$Deallocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy$CvFaceTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReleaseDeallocator"
.end annotation


# direct methods
.method constructor <init>(Lcom/googlecode/javacv/cpp/opencv_legacy$CvFaceTracker;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 1025
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvFaceTracker;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method


# virtual methods
.method public deallocate()V
    .locals 0

    .prologue
    .line 1026
    invoke-static {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy;->cvReleaseFaceTracker(Lcom/googlecode/javacv/cpp/opencv_legacy$CvFaceTracker;)V

    return-void
.end method
