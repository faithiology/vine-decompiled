.class public Lcom/googlecode/javacv/cpp/opencv_legacy$CvGaussBGValues;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_legacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvGaussBGValues"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 2734
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2735
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvGaussBGValues;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 2736
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvGaussBGValues;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 2737
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native match_sum()I
.end method

.method public native match_sum(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvGaussBGValues;
.end method

.method public native mean(I)D
.end method

.method public native mean(ID)Lcom/googlecode/javacv/cpp/opencv_legacy$CvGaussBGValues;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2733
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvGaussBGValues;->position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvGaussBGValues;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvGaussBGValues;
    .locals 1
    .parameter "position"

    .prologue
    .line 2742
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_legacy$CvGaussBGValues;

    return-object v0
.end method

.method public native variance(I)D
.end method

.method public native variance(ID)Lcom/googlecode/javacv/cpp/opencv_legacy$CvGaussBGValues;
.end method

.method public native weight()D
.end method

.method public native weight(D)Lcom/googlecode/javacv/cpp/opencv_legacy$CvGaussBGValues;
.end method
