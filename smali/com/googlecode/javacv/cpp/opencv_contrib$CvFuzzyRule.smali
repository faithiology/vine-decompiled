.class public Lcom/googlecode/javacv/cpp/opencv_contrib$CvFuzzyRule;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_contrib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_contrib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvFuzzyRule"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 190
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_contrib$CvFuzzyRule;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_contrib$CvFuzzyRule;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native calcValue(DD)D
.end method

.method public native getOutputCurve()Lcom/googlecode/javacv/cpp/opencv_contrib$CvFuzzyCurve;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 189
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_contrib$CvFuzzyRule;->position(I)Lcom/googlecode/javacv/cpp/opencv_contrib$CvFuzzyRule;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_contrib$CvFuzzyRule;
    .locals 1
    .parameter "position"

    .prologue
    .line 198
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_contrib$CvFuzzyRule;

    return-object v0
.end method

.method public native setRule(Lcom/googlecode/javacv/cpp/opencv_contrib$CvFuzzyCurve;Lcom/googlecode/javacv/cpp/opencv_contrib$CvFuzzyCurve;Lcom/googlecode/javacv/cpp/opencv_contrib$CvFuzzyCurve;)V
.end method
