.class public Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGCodeBookModel;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_legacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvBGCodeBookModel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGCodeBookModel$ReleaseDeallocator;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 2811
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2812
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGCodeBookModel;->allocate()V

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGCodeBookModel;->zero()Lcom/googlecode/javacpp/Pointer;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 2813
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGCodeBookModel;->allocateArray(I)V

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGCodeBookModel;->zero()Lcom/googlecode/javacpp/Pointer;

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 2814
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method

.method public static create()Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGCodeBookModel;
    .locals 2

    .prologue
    .line 2823
    invoke-static {}, Lcom/googlecode/javacv/cpp/opencv_legacy;->cvCreateBGCodeBookModel()Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGCodeBookModel;

    move-result-object v0

    .line 2824
    .local v0, m:Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGCodeBookModel;
    if-eqz v0, :cond_0

    .line 2825
    new-instance v1, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGCodeBookModel$ReleaseDeallocator;

    invoke-direct {v1, v0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGCodeBookModel$ReleaseDeallocator;-><init>(Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGCodeBookModel;)V

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGCodeBookModel;->deallocator(Lcom/googlecode/javacpp/Pointer$Deallocator;)Lcom/googlecode/javacpp/Pointer;

    .line 2827
    :cond_0
    return-object v0
.end method


# virtual methods
.method public native cbBounds(I)B
.end method

.method public native cbBounds(IB)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGCodeBookModel;
.end method

.method public native cbmap()Lcom/googlecode/javacpp/PointerPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "CvBGCodeBookElem**"
        }
    .end annotation
.end method

.method public native cbmap(Lcom/googlecode/javacpp/PointerPointer;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGCodeBookModel;
.end method

.method public native freeList()Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGCodeBookElem;
.end method

.method public native freeList(Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGCodeBookElem;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGCodeBookModel;
.end method

.method public native modMax(I)B
.end method

.method public native modMax(IB)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGCodeBookModel;
.end method

.method public native modMin(I)B
.end method

.method public native modMin(IB)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGCodeBookModel;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2810
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGCodeBookModel;->position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGCodeBookModel;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGCodeBookModel;
    .locals 1
    .parameter "position"

    .prologue
    .line 2819
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGCodeBookModel;

    return-object v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 2831
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGCodeBookModel;->deallocate()V

    .line 2832
    return-void
.end method

.method public native size()Lcom/googlecode/javacv/cpp/opencv_core$CvSize;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public native size(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGCodeBookModel;
.end method

.method public native storage()Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;
.end method

.method public native storage(Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGCodeBookModel;
.end method

.method public native t()I
.end method

.method public native t(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGCodeBookModel;
.end method
