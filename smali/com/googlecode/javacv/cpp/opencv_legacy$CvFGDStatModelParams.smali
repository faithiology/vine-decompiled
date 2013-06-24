.class public Lcom/googlecode/javacv/cpp/opencv_legacy$CvFGDStatModelParams;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_legacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvFGDStatModelParams"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 2588
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2589
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvFGDStatModelParams;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 2590
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvFGDStatModelParams;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 2591
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native Lc()I
.end method

.method public native Lc(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvFGDStatModelParams;
.end method

.method public native Lcc()I
.end method

.method public native Lcc(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvFGDStatModelParams;
.end method

.method public native N1c()I
.end method

.method public native N1c(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvFGDStatModelParams;
.end method

.method public native N1cc()I
.end method

.method public native N1cc(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvFGDStatModelParams;
.end method

.method public native N2c()I
.end method

.method public native N2c(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvFGDStatModelParams;
.end method

.method public native N2cc()I
.end method

.method public native N2cc(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvFGDStatModelParams;
.end method

.method public native T()F
.end method

.method public native T(F)Lcom/googlecode/javacv/cpp/opencv_legacy$CvFGDStatModelParams;
.end method

.method public native alpha1()F
.end method

.method public native alpha1(F)Lcom/googlecode/javacv/cpp/opencv_legacy$CvFGDStatModelParams;
.end method

.method public native alpha2()F
.end method

.method public native alpha2(F)Lcom/googlecode/javacv/cpp/opencv_legacy$CvFGDStatModelParams;
.end method

.method public native alpha3()F
.end method

.method public native alpha3(F)Lcom/googlecode/javacv/cpp/opencv_legacy$CvFGDStatModelParams;
.end method

.method public native delta()F
.end method

.method public native delta(F)Lcom/googlecode/javacv/cpp/opencv_legacy$CvFGDStatModelParams;
.end method

.method public native is_obj_without_holes()I
.end method

.method public native is_obj_without_holes(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvFGDStatModelParams;
.end method

.method public native minArea()F
.end method

.method public native minArea(F)Lcom/googlecode/javacv/cpp/opencv_legacy$CvFGDStatModelParams;
.end method

.method public native perform_morphing()I
.end method

.method public native perform_morphing(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvFGDStatModelParams;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2587
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvFGDStatModelParams;->position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvFGDStatModelParams;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvFGDStatModelParams;
    .locals 1
    .parameter "position"

    .prologue
    .line 2596
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_legacy$CvFGDStatModelParams;

    return-object v0
.end method
