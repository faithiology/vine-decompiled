.class public Lcom/googlecode/javacv/cpp/opencv_legacy$BaseKeypoint;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_legacy.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv"
.end annotation

.annotation runtime Lcom/googlecode/javacpp/annotation/NoOffset;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseKeypoint"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1807
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1808
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$BaseKeypoint;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 1810
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$BaseKeypoint;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(IILcom/googlecode/javacv/cpp/opencv_core$IplImage;)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "image"

    .prologue
    .line 1809
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1, p2, p3}, Lcom/googlecode/javacv/cpp/opencv_legacy$BaseKeypoint;->allocate(IILcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 1811
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(IILcom/googlecode/javacv/cpp/opencv_core$IplImage;)V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native image()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method

.method public native image(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/opencv_legacy$BaseKeypoint;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1806
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$BaseKeypoint;->position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$BaseKeypoint;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$BaseKeypoint;
    .locals 1
    .parameter "position"

    .prologue
    .line 1817
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_legacy$BaseKeypoint;

    return-object v0
.end method

.method public native x()I
.end method

.method public native x(I)Lcom/googlecode/javacv/cpp/opencv_legacy$BaseKeypoint;
.end method

.method public native y()I
.end method

.method public native y(I)Lcom/googlecode/javacv/cpp/opencv_legacy$BaseKeypoint;
.end method
