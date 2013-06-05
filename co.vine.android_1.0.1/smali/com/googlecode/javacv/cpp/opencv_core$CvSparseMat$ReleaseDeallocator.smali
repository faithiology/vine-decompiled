.class public Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMat$ReleaseDeallocator;
.super Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMat;
.source "opencv_core.java"

# interfaces
.implements Lcom/googlecode/javacpp/Pointer$Deallocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ReleaseDeallocator"
.end annotation


# direct methods
.method constructor <init>(Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMat;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 1952
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMat;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1951
    invoke-super {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMat;->clone()Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMat;

    move-result-object v0

    return-object v0
.end method

.method public deallocate()V
    .locals 0

    .prologue
    .line 1953
    invoke-static {p0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvReleaseSparseMat(Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMat;)V

    return-void
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1951
    invoke-super {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMat;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMat;

    move-result-object v0

    return-object v0
.end method
