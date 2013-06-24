.class public Lcom/googlecode/javacv/cpp/opencv_stitching$FeatherBlender;
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
    name = "FeatherBlender"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1126
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1127
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_stitching$Blender;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_stitching$FeatherBlender;->allocate()V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0
    .parameter "sharpness"

    .prologue
    .line 1128
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_stitching$Blender;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_stitching$FeatherBlender;->allocate(F)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 1129
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_stitching$Blender;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(F)V
.end method


# virtual methods
.method public native createWeightMaps(Lcom/googlecode/javacv/cpp/opencv_core$MatVector;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;Lcom/googlecode/javacv/cpp/opencv_core$MatVector;)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
            value = "CvPoint,cv::Point"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public native setSharpness(F)V
.end method

.method public native sharpness()F
.end method
