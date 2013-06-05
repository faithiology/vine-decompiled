.class public Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
.super Lcom/googlecode/javacv/cpp/opencv_core$CvArr;
.source "opencv_core.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_core;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvSeq"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2920
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvArr;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;->allocate()V

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;->zero()Lcom/googlecode/javacpp/Pointer;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 2921
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvArr;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;->allocateArray(I)V

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;->zero()Lcom/googlecode/javacpp/Pointer;

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 2922
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvArr;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method

.method public static create(IIILcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;)Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
    .locals 2
    .parameter "seq_flags"
    .parameter "header_size"
    .parameter "elem_size"
    .parameter "storage"

    .prologue
    .line 2932
    int-to-long v0, p1

    invoke-static {p0, v0, v1, p2, p3}, Lcom/googlecode/javacv/cpp/opencv_core;->cvCreateSeq(IJILcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;)Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public native block_max()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "schar*"
        }
    .end annotation
.end method

.method public native block_max(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
.end method

.method public native delta_elems()I
.end method

.method public native delta_elems(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
.end method

.method public native elem_size()I
.end method

.method public native elem_size(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
.end method

.method public native first(Lcom/googlecode/javacv/cpp/opencv_core$CvSeqBlock;)Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
.end method

.method public native first()Lcom/googlecode/javacv/cpp/opencv_core$CvSeqBlock;
.end method

.method public native flags()I
.end method

.method public native flags(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
.end method

.method public native free_blocks(Lcom/googlecode/javacv/cpp/opencv_core$CvSeqBlock;)Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
.end method

.method public native free_blocks()Lcom/googlecode/javacv/cpp/opencv_core$CvSeqBlock;
.end method

.method public native h_next()Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
.end method

.method public native h_next(Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;)Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
.end method

.method public native h_prev()Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
.end method

.method public native h_prev(Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;)Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
.end method

.method public native header_size()I
.end method

.method public native header_size(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2919
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
    .locals 1
    .parameter "position"

    .prologue
    .line 2927
    invoke-super {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvArr;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;

    return-object v0
.end method

.method public native ptr()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "schar*"
        }
    .end annotation
.end method

.method public native ptr(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
.end method

.method public native storage()Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;
.end method

.method public native storage(Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;)Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
.end method

.method public native total()I
.end method

.method public native total(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
.end method

.method public native v_next()Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
.end method

.method public native v_next(Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;)Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
.end method

.method public native v_prev()Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
.end method

.method public native v_prev(Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;)Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
.end method
