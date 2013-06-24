.class public Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_core.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_core;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvGraphScanner"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner$ReleaseDeallocator;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 4168
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4169
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner;->allocate()V

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner;->zero()Lcom/googlecode/javacpp/Pointer;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 4170
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner;->allocateArray(I)V

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner;->zero()Lcom/googlecode/javacpp/Pointer;

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 4171
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method

.method public static create(Lcom/googlecode/javacv/cpp/opencv_core$CvGraph;Lcom/googlecode/javacv/cpp/opencv_core$CvGraphVtx;I)Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner;
    .locals 2
    .parameter "graph"
    .parameter "vtx"
    .parameter "mask"

    .prologue
    .line 4181
    invoke-static {p0, p1, p2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvCreateGraphScanner(Lcom/googlecode/javacv/cpp/opencv_core$CvGraph;Lcom/googlecode/javacv/cpp/opencv_core$CvGraphVtx;I)Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner;

    move-result-object v0

    .line 4182
    .local v0, g:Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner;
    if-eqz v0, :cond_0

    .line 4183
    new-instance v1, Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner$ReleaseDeallocator;

    invoke-direct {v1, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner$ReleaseDeallocator;-><init>(Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner;)V

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner;->deallocator(Lcom/googlecode/javacpp/Pointer$Deallocator;)Lcom/googlecode/javacpp/Pointer;

    .line 4185
    :cond_0
    return-object v0
.end method


# virtual methods
.method public native dst(Lcom/googlecode/javacv/cpp/opencv_core$CvGraphVtx;)Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner;
.end method

.method public native dst()Lcom/googlecode/javacv/cpp/opencv_core$CvGraphVtx;
.end method

.method public native edge()Lcom/googlecode/javacv/cpp/opencv_core$CvGraphEdge;
.end method

.method public native edge(Lcom/googlecode/javacv/cpp/opencv_core$CvGraphEdge;)Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner;
.end method

.method public native graph()Lcom/googlecode/javacv/cpp/opencv_core$CvGraph;
.end method

.method public native graph(Lcom/googlecode/javacv/cpp/opencv_core$CvGraph;)Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner;
.end method

.method public native index()I
.end method

.method public native index(I)Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner;
.end method

.method public native mask()I
.end method

.method public native mask(I)Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4167
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner;
    .locals 1
    .parameter "position"

    .prologue
    .line 4176
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner;

    return-object v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 4188
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner;->deallocate()V

    .line 4189
    return-void
.end method

.method public native stack(Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;)Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner;
.end method

.method public native stack()Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
.end method

.method public native vtx(Lcom/googlecode/javacv/cpp/opencv_core$CvGraphVtx;)Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner;
.end method

.method public native vtx()Lcom/googlecode/javacv/cpp/opencv_core$CvGraphVtx;
.end method
