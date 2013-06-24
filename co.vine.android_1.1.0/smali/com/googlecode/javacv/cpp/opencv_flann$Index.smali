.class public Lcom/googlecode/javacv/cpp/opencv_flann$Index;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_flann.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv::flann"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_flann;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Index"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 240
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_flann$Index;->allocate()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/FloatPointer;Lcom/googlecode/javacv/cpp/opencv_flann$IndexParams;I)V
    .locals 0
    .parameter "features"
    .parameter "params"
    .parameter "distType"

    .prologue
    .line 245
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    .line 246
    invoke-direct {p0, p1, p2, p3}, Lcom/googlecode/javacv/cpp/opencv_flann$Index;->allocate(Lcom/googlecode/javacpp/FloatPointer;Lcom/googlecode/javacv/cpp/opencv_flann$IndexParams;I)V

    .line 247
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_flann$IndexParams;I)V
    .locals 0
    .parameter "features"
    .parameter "params"
    .parameter "distType"

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    .line 243
    invoke-direct {p0, p1, p2, p3}, Lcom/googlecode/javacv/cpp/opencv_flann$Index;->allocate(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_flann$IndexParams;I)V

    .line 244
    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(Lcom/googlecode/javacpp/FloatPointer;Lcom/googlecode/javacv/cpp/opencv_flann$IndexParams;I)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "cvflann::flann_distance_t"
            }
        .end annotation
    .end parameter
.end method

.method private native allocate(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_flann$IndexParams;I)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "cvflann::flann_distance_t"
            }
        .end annotation
    .end parameter
.end method


# virtual methods
.method public native build(Lcom/googlecode/javacpp/FloatPointer;Lcom/googlecode/javacv/cpp/opencv_flann$IndexParams;I)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "cvflann::flann_distance_t"
            }
        .end annotation
    .end parameter
.end method

.method public native build(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_flann$IndexParams;I)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "cvflann::flann_distance_t"
            }
        .end annotation
    .end parameter
.end method

.method public native getAlgorithm()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "cvflann::flann_algorithm_t"
        }
    .end annotation
.end method

.method public native getDistance()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "cvflann::flann_distance_t"
        }
    .end annotation
.end method

.method public native knnSearch(Lcom/googlecode/javacpp/FloatPointer;Lcom/googlecode/javacpp/IntPointer;Lcom/googlecode/javacpp/FloatPointer;ILcom/googlecode/javacv/cpp/opencv_flann$SearchParams;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$OutputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$OutputArray;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
.end method

.method public native knnSearch(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;ILcom/googlecode/javacv/cpp/opencv_flann$SearchParams;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$OutputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$OutputArray;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
.end method

.method public native load(Lcom/googlecode/javacpp/FloatPointer;Ljava/lang/String;)Z
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public native load(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Ljava/lang/String;)Z
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public native radiusSearch(Lcom/googlecode/javacpp/FloatPointer;Lcom/googlecode/javacpp/IntPointer;Lcom/googlecode/javacpp/FloatPointer;DILcom/googlecode/javacv/cpp/opencv_flann$SearchParams;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$OutputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$OutputArray;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
.end method

.method public native radiusSearch(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;DILcom/googlecode/javacv/cpp/opencv_flann$SearchParams;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$OutputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$OutputArray;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
.end method

.method public native release()V
.end method

.method public native save(Ljava/lang/String;)V
.end method
