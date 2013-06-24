.class public Lcom/googlecode/javacv/cpp/opencv_contrib$CvFuzzyFunction;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_contrib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_contrib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvFuzzyFunction"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 169
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_contrib$CvFuzzyFunction;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_contrib$CvFuzzyFunction;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native addCurve(Lcom/googlecode/javacv/cpp/opencv_contrib$CvFuzzyCurve;D)V
.end method

.method public native calcValue()D
.end method

.method public native curves()Lcom/googlecode/javacv/cpp/opencv_contrib$CvFuzzyCurve;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/NoOffset;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
    .end annotation
.end method

.method public native curves(Lcom/googlecode/javacv/cpp/opencv_contrib$CvFuzzyCurve;)Lcom/googlecode/javacv/cpp/opencv_contrib$CvFuzzyFunction;
.end method

.method public native newCurve()Lcom/googlecode/javacv/cpp/opencv_contrib$CvFuzzyCurve;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_contrib$CvFuzzyFunction;->position(I)Lcom/googlecode/javacv/cpp/opencv_contrib$CvFuzzyFunction;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_contrib$CvFuzzyFunction;
    .locals 1
    .parameter "position"

    .prologue
    .line 177
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_contrib$CvFuzzyFunction;

    return-object v0
.end method

.method public native resetValues()V
.end method
