.class public Lcom/googlecode/javacv/cpp/opencv_legacy$CvTracksTimePos;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_legacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvTracksTimePos"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 3409
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3410
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvTracksTimePos;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 3411
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvTracksTimePos;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 3412
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native beg1()I
.end method

.method public native beg1(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvTracksTimePos;
.end method

.method public native beg2()I
.end method

.method public native beg2(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvTracksTimePos;
.end method

.method public native comLen()I
.end method

.method public native comLen(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvTracksTimePos;
.end method

.method public native end1()I
.end method

.method public native end1(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvTracksTimePos;
.end method

.method public native end2()I
.end method

.method public native end2(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvTracksTimePos;
.end method

.method public native len1()I
.end method

.method public native len1(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvTracksTimePos;
.end method

.method public native len2()I
.end method

.method public native len2(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvTracksTimePos;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3408
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvTracksTimePos;->position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvTracksTimePos;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvTracksTimePos;
    .locals 1
    .parameter "position"

    .prologue
    .line 3417
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_legacy$CvTracksTimePos;

    return-object v0
.end method

.method public native shift1()I
.end method

.method public native shift1(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvTracksTimePos;
.end method

.method public native shift2()I
.end method

.method public native shift2(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvTracksTimePos;
.end method
