.class public Lcom/googlecode/javacv/cpp/opencv_legacy$CvConDensation;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_legacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvConDensation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvConDensation$ReleaseDeallocator;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1365
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1366
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvConDensation;->allocate()V

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvConDensation;->zero()Lcom/googlecode/javacpp/Pointer;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 1367
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvConDensation;->allocateArray(I)V

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvConDensation;->zero()Lcom/googlecode/javacpp/Pointer;

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 1368
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method

.method public static create(III)Lcom/googlecode/javacv/cpp/opencv_legacy$CvConDensation;
    .locals 2
    .parameter "dynam_params"
    .parameter "measure_params"
    .parameter "sample_count"

    .prologue
    .line 1378
    invoke-static {p0, p1, p2}, Lcom/googlecode/javacv/cpp/opencv_legacy;->cvCreateConDensation(III)Lcom/googlecode/javacv/cpp/opencv_legacy$CvConDensation;

    move-result-object v0

    .line 1379
    .local v0, c:Lcom/googlecode/javacv/cpp/opencv_legacy$CvConDensation;
    if-eqz v0, :cond_0

    .line 1380
    new-instance v1, Lcom/googlecode/javacv/cpp/opencv_legacy$CvConDensation$ReleaseDeallocator;

    invoke-direct {v1, v0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvConDensation$ReleaseDeallocator;-><init>(Lcom/googlecode/javacv/cpp/opencv_legacy$CvConDensation;)V

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvConDensation;->deallocator(Lcom/googlecode/javacpp/Pointer$Deallocator;)Lcom/googlecode/javacpp/Pointer;

    .line 1382
    :cond_0
    return-object v0
.end method


# virtual methods
.method public native DP()I
.end method

.method public native DP(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvConDensation;
.end method

.method public native DynamMatr()Lcom/googlecode/javacpp/FloatPointer;
.end method

.method public native DynamMatr(Lcom/googlecode/javacpp/FloatPointer;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvConDensation;
.end method

.method public native MP()I
.end method

.method public native MP(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvConDensation;
.end method

.method public native RandS(Lcom/googlecode/javacv/cpp/opencv_legacy$CvRandState;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvConDensation;
.end method

.method public native RandS()Lcom/googlecode/javacv/cpp/opencv_legacy$CvRandState;
.end method

.method public native RandomSample()Lcom/googlecode/javacpp/FloatPointer;
.end method

.method public native RandomSample(Lcom/googlecode/javacpp/FloatPointer;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvConDensation;
.end method

.method public native SamplesNum()I
.end method

.method public native SamplesNum(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvConDensation;
.end method

.method public native State()Lcom/googlecode/javacpp/FloatPointer;
.end method

.method public native State(Lcom/googlecode/javacpp/FloatPointer;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvConDensation;
.end method

.method public native Temp()Lcom/googlecode/javacpp/FloatPointer;
.end method

.method public native Temp(Lcom/googlecode/javacpp/FloatPointer;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvConDensation;
.end method

.method public native flConfidence()Lcom/googlecode/javacpp/FloatPointer;
.end method

.method public native flConfidence(Lcom/googlecode/javacpp/FloatPointer;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvConDensation;
.end method

.method public native flCumulative()Lcom/googlecode/javacpp/FloatPointer;
.end method

.method public native flCumulative(Lcom/googlecode/javacpp/FloatPointer;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvConDensation;
.end method

.method public native flNewSamples()Lcom/googlecode/javacpp/PointerPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "float**"
        }
    .end annotation
.end method

.method public native flNewSamples(Lcom/googlecode/javacpp/PointerPointer;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvConDensation;
.end method

.method public native flSamples()Lcom/googlecode/javacpp/PointerPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "float**"
        }
    .end annotation
.end method

.method public native flSamples(Lcom/googlecode/javacpp/PointerPointer;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvConDensation;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1364
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvConDensation;->position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvConDensation;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvConDensation;
    .locals 1
    .parameter "position"

    .prologue
    .line 1373
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_legacy$CvConDensation;

    return-object v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 1386
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvConDensation;->deallocate()V

    .line 1387
    return-void
.end method
