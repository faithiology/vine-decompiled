.class public Lcom/googlecode/javacv/cpp/opencv_legacy$CvContourTree;
.super Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
.source "opencv_legacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvContourTree"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 905
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 906
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvContourTree;->allocate()V

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvContourTree;->zero()Lcom/googlecode/javacpp/Pointer;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 907
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvContourTree;->allocateArray(I)V

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvContourTree;->zero()Lcom/googlecode/javacpp/Pointer;

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 908
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native p1()Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public native p1(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvContourTree;
.end method

.method public native p2()Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public native p2(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvContourTree;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 904
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvContourTree;->position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvContourTree;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
    .locals 1
    .parameter "x0"

    .prologue
    .line 904
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvContourTree;->position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvContourTree;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvContourTree;
    .locals 1
    .parameter "position"

    .prologue
    .line 913
    invoke-super {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_legacy$CvContourTree;

    return-object v0
.end method
