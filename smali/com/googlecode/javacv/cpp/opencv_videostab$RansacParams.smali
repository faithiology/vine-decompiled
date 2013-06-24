.class public Lcom/googlecode/javacv/cpp/opencv_videostab$RansacParams;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_videostab.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv::videostab"
.end annotation

.annotation runtime Lcom/googlecode/javacpp/annotation/NoOffset;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_videostab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RansacParams"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 188
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IFFF)V
    .locals 0
    .parameter "size"
    .parameter "thresh"
    .parameter "eps"
    .parameter "prob"

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    .line 190
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/googlecode/javacv/cpp/opencv_videostab$RansacParams;->allocate(IFFF)V

    .line 191
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method static affine2dMotionStd()Lcom/googlecode/javacv/cpp/opencv_videostab$RansacParams;
    .locals 4

    .prologue
    const/high16 v3, 0x3f00

    .line 203
    new-instance v0, Lcom/googlecode/javacv/cpp/opencv_videostab$RansacParams;

    const/4 v1, 0x6

    const v2, 0x3f7d70a4

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/googlecode/javacv/cpp/opencv_videostab$RansacParams;-><init>(IFFF)V

    return-object v0
.end method

.method private native allocate(IFFF)V
.end method

.method static linearSimilarityMotionStd()Lcom/googlecode/javacv/cpp/opencv_videostab$RansacParams;
    .locals 4

    .prologue
    const/high16 v3, 0x3f00

    .line 202
    new-instance v0, Lcom/googlecode/javacv/cpp/opencv_videostab$RansacParams;

    const/4 v1, 0x4

    const v2, 0x3f7d70a4

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/googlecode/javacv/cpp/opencv_videostab$RansacParams;-><init>(IFFF)V

    return-object v0
.end method

.method static translationAndScale2dMotionStd()Lcom/googlecode/javacv/cpp/opencv_videostab$RansacParams;
    .locals 4

    .prologue
    const/high16 v3, 0x3f00

    .line 201
    new-instance v0, Lcom/googlecode/javacv/cpp/opencv_videostab$RansacParams;

    const/4 v1, 0x3

    const v2, 0x3f7d70a4

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/googlecode/javacv/cpp/opencv_videostab$RansacParams;-><init>(IFFF)V

    return-object v0
.end method

.method static translationMotionStd()Lcom/googlecode/javacv/cpp/opencv_videostab$RansacParams;
    .locals 4

    .prologue
    const/high16 v3, 0x3f00

    .line 200
    new-instance v0, Lcom/googlecode/javacv/cpp/opencv_videostab$RansacParams;

    const/4 v1, 0x2

    const v2, 0x3f7d70a4

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/googlecode/javacv/cpp/opencv_videostab$RansacParams;-><init>(IFFF)V

    return-object v0
.end method


# virtual methods
.method public native eps()F
.end method

.method public native eps(F)Lcom/googlecode/javacv/cpp/opencv_videostab$RansacParams;
.end method

.method public native prob()F
.end method

.method public native prob(F)Lcom/googlecode/javacv/cpp/opencv_videostab$RansacParams;
.end method

.method public native size()I
.end method

.method public native size(I)Lcom/googlecode/javacv/cpp/opencv_videostab$RansacParams;
.end method

.method public native thresh()F
.end method

.method public native thresh(F)Lcom/googlecode/javacv/cpp/opencv_videostab$RansacParams;
.end method
