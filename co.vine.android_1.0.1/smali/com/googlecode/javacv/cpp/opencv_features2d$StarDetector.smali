.class public Lcom/googlecode/javacv/cpp/opencv_features2d$StarDetector;
.super Lcom/googlecode/javacv/cpp/opencv_features2d$FeatureDetector;
.source "opencv_features2d.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_features2d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StarDetector"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 444
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 445
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d$FeatureDetector;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d$StarDetector;->allocate()V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0
    .parameter "_maxSize"
    .parameter "_responseThreshold"
    .parameter "_lineThresholdProjected"
    .parameter "_lineThresholdBinarized"
    .parameter "_suppressNonmaxSize"

    .prologue
    .line 448
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d$FeatureDetector;-><init>()V

    .line 449
    invoke-direct/range {p0 .. p5}, Lcom/googlecode/javacv/cpp/opencv_features2d$StarDetector;->allocate(IIIII)V

    .line 450
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 446
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_features2d$FeatureDetector;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(IIIII)V
.end method


# virtual methods
.method public native detect(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_features2d$KeyPoint;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputMat;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
        .end annotation
    .end parameter
.end method
