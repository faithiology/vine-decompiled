.class public Lcom/googlecode/javacv/cpp/opencv_imgproc$CvChainPtReader;
.super Lcom/googlecode/javacv/cpp/opencv_core$CvSeqReader;
.source "opencv_imgproc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_imgproc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvChainPtReader"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 496
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 497
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvSeqReader;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvChainPtReader;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 498
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvSeqReader;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvChainPtReader;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 499
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvSeqReader;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native code()B
.end method

.method public native code(B)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvChainPtReader;
.end method

.method public native deltas(II)B
.end method

.method public native deltas(IIB)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvChainPtReader;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 495
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvChainPtReader;->position(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvChainPtReader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSeqReader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 495
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvChainPtReader;->position(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvChainPtReader;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvChainPtReader;
    .locals 1
    .parameter "position"

    .prologue
    .line 504
    invoke-super {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvSeqReader;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSeqReader;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvChainPtReader;

    return-object v0
.end method

.method public native pt()Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public native pt(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvChainPtReader;
.end method
