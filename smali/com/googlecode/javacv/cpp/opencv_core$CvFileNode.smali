.class public Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_core.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_core;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvFileNode"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 3432
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3433
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 3434
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 3435
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native data_f()D
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "data.f"
        }
    .end annotation
.end method

.method public native data_f(D)Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;
.end method

.method public native data_i()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "data.i"
        }
    .end annotation
.end method

.method public native data_i(I)Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;
.end method

.method public native data_map(Lcom/googlecode/javacv/cpp/opencv_core$CvFileNodeHash;)Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;
.end method

.method public native data_map()Lcom/googlecode/javacv/cpp/opencv_core$CvFileNodeHash;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "data.map"
        }
    .end annotation
.end method

.method public native data_seq(Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;)Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;
.end method

.method public native data_seq()Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "data.seq"
        }
    .end annotation
.end method

.method public native data_str(Lcom/googlecode/javacv/cpp/opencv_core$CvString;)Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;
.end method

.method public native data_str()Lcom/googlecode/javacv/cpp/opencv_core$CvString;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "data.str"
        }
    .end annotation
.end method

.method public native info(Lcom/googlecode/javacv/cpp/opencv_core$CvTypeInfo;)Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;
.end method

.method public native info()Lcom/googlecode/javacv/cpp/opencv_core$CvTypeInfo;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3431
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;
    .locals 1
    .parameter "position"

    .prologue
    .line 3440
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;

    return-object v0
.end method

.method public native tag()I
.end method

.method public native tag(I)Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;
.end method
