.class public Lcom/googlecode/javacv/cpp/opencv_features2d$BRISK;
.super Lcom/googlecode/javacv/cpp/opencv_features2d$Feature2D;
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
    name = "BRISK"
.end annotation


# static fields
.field public static final FAST_SCORE:I = 0x1

.field public static final HARRIS_SCORE:I = 0x0

.field public static final kBytes:I = 0x20


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 229
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d$Feature2D;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d$BRISK;->allocate()V

    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 0
    .parameter "thresh"
    .parameter "octaves"
    .parameter "patternScale"

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d$Feature2D;-><init>()V

    .line 234
    invoke-direct {p0, p1, p2, p3}, Lcom/googlecode/javacv/cpp/opencv_features2d$BRISK;->allocate(IIF)V

    .line 235
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_features2d$Feature2D;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public constructor <init>([F[IFF[I)V
    .locals 0
    .parameter "radiusList"
        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
        .end annotation
    .end parameter
    .parameter "numberList"
        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
        .end annotation
    .end parameter
    .parameter "dMax"
    .end parameter
    .parameter "dMin"
    .end parameter
    .parameter "indexChange"
        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
        .end annotation
    .end parameter

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d$Feature2D;-><init>()V

    .line 238
    invoke-direct/range {p0 .. p5}, Lcom/googlecode/javacv/cpp/opencv_features2d$BRISK;->allocate([F[IFF[I)V

    .line 239
    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(IIF)V
.end method

.method private native allocate([F[IFF[I)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
        .end annotation
    .end parameter
.end method


# virtual methods
.method public native compute(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_features2d$KeyPoint;)V
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

.method public native compute(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_features2d$KeyPoint;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Z)V
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
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "operator()"
        }
    .end annotation
.end method

.method public native descriptorSize()I
.end method

.method public native descriptorType()I
.end method

.method public native generateKernel([F[IFF[I)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
        .end annotation
    .end parameter
.end method

.method public native info()Lcom/googlecode/javacv/cpp/opencv_core$AlgorithmInfo;
.end method
