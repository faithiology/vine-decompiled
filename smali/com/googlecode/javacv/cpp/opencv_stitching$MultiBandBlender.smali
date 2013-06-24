.class public Lcom/googlecode/javacv/cpp/opencv_stitching$MultiBandBlender;
.super Lcom/googlecode/javacv/cpp/opencv_stitching$Blender;
.source "opencv_stitching.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv::detail"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_stitching;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiBandBlender"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1145
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1146
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_stitching$Blender;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_stitching$MultiBandBlender;->allocate()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 1150
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_stitching$Blender;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 0
    .parameter "try_gpu"
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "int"
            }
        .end annotation
    .end parameter
    .parameter "num_bands"
    .end parameter
    .parameter "weight_type"
    .end parameter

    .prologue
    .line 1147
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_stitching$Blender;-><init>()V

    .line 1148
    invoke-direct {p0, p1, p2, p3}, Lcom/googlecode/javacv/cpp/opencv_stitching$MultiBandBlender;->allocate(ZII)V

    .line 1149
    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(ZII)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "int"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method


# virtual methods
.method public native numBands()I
.end method

.method public native setNumBands(I)V
.end method
