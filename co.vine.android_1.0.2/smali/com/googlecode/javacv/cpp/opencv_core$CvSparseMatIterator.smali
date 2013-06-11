.class public Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMatIterator;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_core.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_core;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvSparseMatIterator"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1993
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1994
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMatIterator;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 1995
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMatIterator;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 1996
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native curidx()I
.end method

.method public native curidx(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMatIterator;
.end method

.method public native mat()Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMat;
.end method

.method public native mat(Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMat;)Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMatIterator;
.end method

.method public native node(Lcom/googlecode/javacv/cpp/opencv_core$CvSparseNode;)Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMatIterator;
.end method

.method public native node()Lcom/googlecode/javacv/cpp/opencv_core$CvSparseNode;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1992
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMatIterator;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMatIterator;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMatIterator;
    .locals 1
    .parameter "position"

    .prologue
    .line 2001
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_core$CvSparseMatIterator;

    return-object v0
.end method
