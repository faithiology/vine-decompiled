.class Lcom/googlecode/javacv/cpp/opencv_calib3d$CvStereoBMState$ReleaseDeallocator;
.super Lcom/googlecode/javacv/cpp/opencv_calib3d$CvStereoBMState;
.source "opencv_calib3d.java"

# interfaces
.implements Lcom/googlecode/javacpp/Pointer$Deallocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_calib3d$CvStereoBMState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReleaseDeallocator"
.end annotation


# direct methods
.method constructor <init>(Lcom/googlecode/javacv/cpp/opencv_calib3d$CvStereoBMState;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 307
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_calib3d$CvStereoBMState;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method


# virtual methods
.method public deallocate()V
    .locals 0

    .prologue
    .line 308
    invoke-static {p0}, Lcom/googlecode/javacv/cpp/opencv_calib3d;->cvReleaseStereoBMState(Lcom/googlecode/javacv/cpp/opencv_calib3d$CvStereoBMState;)V

    return-void
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 306
    invoke-super {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_calib3d$CvStereoBMState;->position(I)Lcom/googlecode/javacv/cpp/opencv_calib3d$CvStereoBMState;

    move-result-object v0

    return-object v0
.end method
