.class Lcom/googlecode/javacv/cpp/opencv_legacy$CvGLCM$ReleaseDeallocator;
.super Lcom/googlecode/javacv/cpp/opencv_legacy$CvGLCM;
.source "opencv_legacy.java"

# interfaces
.implements Lcom/googlecode/javacpp/Pointer$Deallocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy$CvGLCM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReleaseDeallocator"
.end annotation


# direct methods
.method constructor <init>(Lcom/googlecode/javacv/cpp/opencv_legacy$CvGLCM;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 990
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvGLCM;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method


# virtual methods
.method public deallocate()V
    .locals 1

    .prologue
    .line 991
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_legacy;->cvReleaseGLCM(Lcom/googlecode/javacv/cpp/opencv_legacy$CvGLCM;I)V

    return-void
.end method
