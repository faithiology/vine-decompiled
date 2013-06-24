.class public Lcom/googlecode/javacv/cpp/opencv_features2d$ORB;
.super Lcom/googlecode/javacv/cpp/opencv_features2d$Feature2D;
.source "opencv_features2d.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv"
.end annotation

.annotation runtime Lcom/googlecode/javacpp/annotation/NoOffset;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_features2d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ORB"
.end annotation


# static fields
.field public static final FAST_SCORE:I = 0x1

.field public static final HARRIS_SCORE:I = 0x0

.field public static final kBytes:I = 0x20


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 306
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 308
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d$Feature2D;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d$ORB;->allocate()V

    return-void
.end method

.method public constructor <init>(IFIIIIII)V
    .locals 0
    .parameter "nfeatures"
    .parameter "scaleFactor"
    .parameter "nlevels"
    .parameter "edgeThreshold"
    .parameter "firstLevel"
    .parameter "WTA_K"
    .parameter "scoreType"
    .parameter "patchSize"

    .prologue
    .line 311
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d$Feature2D;-><init>()V

    .line 312
    invoke-direct/range {p0 .. p8}, Lcom/googlecode/javacv/cpp/opencv_features2d$ORB;->allocate(IFIIIIII)V

    .line 313
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 309
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_features2d$Feature2D;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(IFIIIIII)V
.end method


# virtual methods
.method public native descriptorSize()I
.end method

.method public native descriptorType()I
.end method

.method public native detect(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_features2d$KeyPoint;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "operator()"
        }
    .end annotation
.end method

.method public native detect(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_features2d$KeyPoint;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Z)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$OutputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "operator()"
        }
    .end annotation
.end method

.method public native info()Lcom/googlecode/javacv/cpp/opencv_core$AlgorithmInfo;
.end method
