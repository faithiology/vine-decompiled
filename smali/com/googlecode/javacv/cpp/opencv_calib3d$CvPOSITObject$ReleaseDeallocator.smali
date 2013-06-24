.class Lcom/googlecode/javacv/cpp/opencv_calib3d$CvPOSITObject$ReleaseDeallocator;
.super Lcom/googlecode/javacv/cpp/opencv_calib3d$CvPOSITObject;
.source "opencv_calib3d.java"

# interfaces
.implements Lcom/googlecode/javacpp/Pointer$Deallocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_calib3d$CvPOSITObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReleaseDeallocator"
.end annotation


# direct methods
.method constructor <init>(Lcom/googlecode/javacv/cpp/opencv_calib3d$CvPOSITObject;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_calib3d$CvPOSITObject;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method


# virtual methods
.method public deallocate()V
    .locals 0

    .prologue
    .line 114
    invoke-static {p0}, Lcom/googlecode/javacv/cpp/opencv_calib3d;->cvReleasePOSITObject(Lcom/googlecode/javacv/cpp/opencv_calib3d$CvPOSITObject;)V

    return-void
.end method
