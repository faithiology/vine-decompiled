.class public Lcom/googlecode/javacv/ImageTransformer$Data;
.super Ljava/lang/Object;
.source "ImageTransformer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/ImageTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field public dstCount:I

.field public dstCountOutlier:I

.field public dstCountZero:I

.field public dstDstDot:Ljava/nio/DoubleBuffer;

.field public dstImg:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

.field public mask:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

.field public outlierThreshold:D

.field public pyramidLevel:I

.field public srcDotImg:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

.field public srcDstDot:D

.field public srcImg:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

.field public subImg:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

.field public transImg:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

.field public zeroThreshold:D


# direct methods
.method public constructor <init>()V
    .locals 13

    .prologue
    const/4 v9, 0x0

    const-wide/16 v5, 0x0

    const/4 v1, 0x0

    .line 36
    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-wide v7, v5

    move-object v10, v1

    move-object v11, v1

    move v12, v9

    invoke-direct/range {v0 .. v12}, Lcom/googlecode/javacv/ImageTransformer$Data;-><init>(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;DDILcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;DDILcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;I)V
    .locals 2
    .parameter "srcImg"
    .parameter "subImg"
    .parameter "srcDotImg"
    .parameter "mask"
    .parameter "zeroThreshold"
    .parameter "outlierThreshold"
    .parameter "pyramidLevel"
    .parameter "transImg"
    .parameter "dstImg"
    .parameter "dstDstDotLength"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/googlecode/javacv/ImageTransformer$Data;->srcImg:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 41
    iput-object p2, p0, Lcom/googlecode/javacv/ImageTransformer$Data;->subImg:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 42
    iput-object p3, p0, Lcom/googlecode/javacv/ImageTransformer$Data;->srcDotImg:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 43
    iput-object p4, p0, Lcom/googlecode/javacv/ImageTransformer$Data;->mask:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 44
    iput-wide p5, p0, Lcom/googlecode/javacv/ImageTransformer$Data;->zeroThreshold:D

    .line 45
    iput-wide p7, p0, Lcom/googlecode/javacv/ImageTransformer$Data;->outlierThreshold:D

    .line 46
    iput p9, p0, Lcom/googlecode/javacv/ImageTransformer$Data;->pyramidLevel:I

    .line 47
    iput-object p10, p0, Lcom/googlecode/javacv/ImageTransformer$Data;->transImg:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 48
    iput-object p11, p0, Lcom/googlecode/javacv/ImageTransformer$Data;->dstImg:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 49
    if-nez p12, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/googlecode/javacv/ImageTransformer$Data;->dstDstDot:Ljava/nio/DoubleBuffer;

    .line 52
    return-void

    .line 49
    :cond_0
    mul-int/lit8 v0, p12, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v0

    goto :goto_0
.end method
