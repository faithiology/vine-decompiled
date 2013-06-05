.class public Lcom/googlecode/javacv/cpp/opencv_stitching$DpSeamFinder;
.super Lcom/googlecode/javacv/cpp/opencv_stitching$SeamFinder;
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
    name = "DpSeamFinder"
.end annotation


# static fields
.field public static final COLOR:I = 0x0

.field public static final COLOR_GRAD:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1047
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1052
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_stitching$SeamFinder;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_stitching$DpSeamFinder;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "costFunc"

    .prologue
    .line 1053
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_stitching$SeamFinder;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_stitching$DpSeamFinder;->allocate(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 1054
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_stitching$SeamFinder;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(I)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "cv::detail::DpSeamFinder::CostFunction"
            }
        .end annotation
    .end parameter
.end method


# virtual methods
.method public native costFunction()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "cv::detail::DpSeamFinder::CostFunction"
        }
    .end annotation
.end method

.method public native setCostFunction(I)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "cv::detail::DpSeamFinder::CostFunction"
            }
        .end annotation
    .end parameter
.end method
