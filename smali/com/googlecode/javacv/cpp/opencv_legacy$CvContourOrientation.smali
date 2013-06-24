.class public Lcom/googlecode/javacv/cpp/opencv_legacy$CvContourOrientation;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_legacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvContourOrientation"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 730
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 731
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvContourOrientation;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 732
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvContourOrientation;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 733
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native egvals(I)F
.end method

.method public native egvals(IF)Lcom/googlecode/javacv/cpp/opencv_legacy$CvContourOrientation;
.end method

.method public native egvects(I)F
.end method

.method public native egvects(IF)Lcom/googlecode/javacv/cpp/opencv_legacy$CvContourOrientation;
.end method

.method public native imax()I
.end method

.method public native imax(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvContourOrientation;
.end method

.method public native imin()I
.end method

.method public native imin(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvContourOrientation;
.end method

.method public native max()F
.end method

.method public native max(F)Lcom/googlecode/javacv/cpp/opencv_legacy$CvContourOrientation;
.end method

.method public native min()F
.end method

.method public native min(F)Lcom/googlecode/javacv/cpp/opencv_legacy$CvContourOrientation;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 729
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvContourOrientation;->position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvContourOrientation;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvContourOrientation;
    .locals 1
    .parameter "position"

    .prologue
    .line 738
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_legacy$CvContourOrientation;

    return-object v0
.end method
