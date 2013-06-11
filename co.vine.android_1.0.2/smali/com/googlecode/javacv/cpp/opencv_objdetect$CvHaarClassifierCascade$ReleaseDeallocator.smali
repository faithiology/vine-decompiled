.class Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarClassifierCascade$ReleaseDeallocator;
.super Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarClassifierCascade;
.source "opencv_objdetect.java"

# interfaces
.implements Lcom/googlecode/javacpp/Pointer$Deallocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarClassifierCascade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReleaseDeallocator"
.end annotation


# direct methods
.method constructor <init>(Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarClassifierCascade;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarClassifierCascade;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method


# virtual methods
.method public deallocate()V
    .locals 0

    .prologue
    .line 202
    invoke-static {p0}, Lcom/googlecode/javacv/cpp/opencv_objdetect;->cvReleaseHaarClassifierCascade(Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarClassifierCascade;)V

    return-void
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    invoke-super {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarClassifierCascade;->position(I)Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarClassifierCascade;

    move-result-object v0

    return-object v0
.end method
