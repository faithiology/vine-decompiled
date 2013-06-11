.class public Lcom/googlecode/javacv/cpp/opencv_legacy$RandomizedTree;
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
    name = "RandomizedTree"
.end annotation


# static fields
.field public static final DEFAULT_DEPTH:I = 0x9

.field public static final DEFAULT_REDUCED_NUM_DIM:I = 0xb0

.field public static final DEFAULT_VIEWS:I = 0x1388

.field public static final PATCH_SIZE:B = 0x20t


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1826
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1835
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$RandomizedTree;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 1836
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$RandomizedTree;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 1837
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public static native GET_LOWER_QUANT_PERC()F
.end method

.method public static native GET_UPPER_QUANT_PERC()F
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method

.method public static native quantizeVector([FII[FI)V
.end method

.method public static native quantizeVector([FII[FLcom/googlecode/javacpp/BytePointer;)V
    .parameter
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
                "uchar*"
            }
        .end annotation
    .end parameter
.end method


# virtual methods
.method public native applyQuantization(I)V
.end method

.method public native classes()I
.end method

.method public native depth()I
.end method

.method public native discardFloatPosteriors()V
.end method

.method public native getPosterior(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacpp/FloatPointer;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uchar*"
            }
        .end annotation
    .end parameter
.end method

.method public native getPosterior2(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacpp/BytePointer;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uchar*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "uchar*"
        }
    .end annotation
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1825
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$RandomizedTree;->position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$RandomizedTree;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$RandomizedTree;
    .locals 1
    .parameter "position"

    .prologue
    .line 1842
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_legacy$RandomizedTree;

    return-object v0
.end method

.method public native read(Lcom/googlecode/javacpp/Pointer;I)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "std::istream*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public native read(Ljava/lang/String;I)V
.end method

.method public native savePosteriors(Ljava/lang/String;Z)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
.end method

.method public native savePosteriors2(Ljava/lang/String;Z)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
.end method

.method public native train(Lcom/googlecode/javacv/cpp/opencv_legacy$BaseKeypoint;Lcom/googlecode/javacv/cpp/opencv_core$CvRNG;IIJI)V
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
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "size_t"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public native train(Lcom/googlecode/javacv/cpp/opencv_legacy$BaseKeypoint;Lcom/googlecode/javacv/cpp/opencv_core$CvRNG;Lcom/googlecode/javacv/cpp/opencv_legacy$PatchGenerator;IIJI)V
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
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "size_t"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
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
