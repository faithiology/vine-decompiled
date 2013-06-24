.class public Lcom/googlecode/javacv/cpp/opencv_legacy$RTreeClassifier;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_legacy.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RTreeClassifier"
.end annotation


# static fields
.field public static final DEFAULT_NUM_QUANT_BITS:I = 0x4

.field public static final DEFAULT_TREES:I = 0x30


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1887
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1892
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$RTreeClassifier;->allocate()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 1893
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method public static native countNonZeroElements([FID)I
.end method


# virtual methods
.method public native classes()I
.end method

.method public native countZeroElements()F
.end method

.method public native discardFloatPosteriors()V
.end method

.method public native getFloatSignature(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;[F)V
.end method

.method public native getSignature(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;[B)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uchar*"
            }
        .end annotation
    .end parameter
.end method

.method public native getSignature(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;[F)V
.end method

.method public native getSparseSignature(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;[FF)V
.end method

.method public native original_num_classes()I
.end method

.method public native read(Lcom/googlecode/javacpp/Pointer;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "std::istream*"
            }
        .end annotation
    .end parameter
.end method

.method public native read(Ljava/lang/String;)V
.end method

.method public native saveAllBytePosteriors(Ljava/lang/String;)V
.end method

.method public native saveAllFloatPosteriors(Ljava/lang/String;)V
.end method

.method public native setFloatPosteriorsFromTextfile_176(Ljava/lang/String;)V
.end method

.method public native setQuantization(I)V
.end method

.method public native train(Lcom/googlecode/javacv/cpp/opencv_legacy$BaseKeypoint;Lcom/googlecode/javacv/cpp/opencv_core$CvRNG;IIIJI)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Adapter;
            value = "RNGAdapter"
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "size_t"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public native train(Lcom/googlecode/javacv/cpp/opencv_legacy$BaseKeypoint;Lcom/googlecode/javacv/cpp/opencv_core$CvRNG;Lcom/googlecode/javacv/cpp/opencv_legacy$PatchGenerator;IIIJI)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Adapter;
            value = "RNGAdapter"
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "size_t"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public native trees_(Lcom/googlecode/javacv/cpp/opencv_legacy$RandomizedTree;)Lcom/googlecode/javacv/cpp/opencv_legacy$RTreeClassifier;
.end method

.method public native trees_()Lcom/googlecode/javacv/cpp/opencv_legacy$RandomizedTree;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/NoOffset;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
    .end annotation
.end method

.method public native write(Lcom/googlecode/javacpp/Pointer;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "std::ostream*"
            }
        .end annotation
    .end parameter
.end method

.method public native write(Ljava/lang/String;)V
.end method
