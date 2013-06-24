.class public Lcom/googlecode/javacv/cpp/opencv_contrib$CvFuzzyMeanShiftTracker;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_contrib.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/NoOffset;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_contrib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvFuzzyMeanShiftTracker"
.end annotation


# static fields
.field public static final MinKernelMass:I = 0x3e8

.field public static final rmEdgeDensityFuzzy:I = 0x1

.field public static final rmEdgeDensityLinear:I = 0x0

.field public static final rmInnerDensity:I = 0x2

.field public static final tsDisabled:I = 0xa

.field public static final tsNone:I = 0x0

.field public static final tsSearching:I = 0x1

.field public static final tsSetWindow:I = 0x3

.field public static final tsTracking:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 223
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_contrib$CvFuzzyMeanShiftTracker;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_contrib$CvFuzzyMeanShiftTracker;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native kernel()Lcom/googlecode/javacpp/Pointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 222
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_contrib$CvFuzzyMeanShiftTracker;->position(I)Lcom/googlecode/javacv/cpp/opencv_contrib$CvFuzzyMeanShiftTracker;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_contrib$CvFuzzyMeanShiftTracker;
    .locals 1
    .parameter "position"

    .prologue
    .line 231
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_contrib$CvFuzzyMeanShiftTracker;

    return-object v0
.end method

.method public native searchMode()I
.end method

.method public native searchMode(I)Lcom/googlecode/javacv/cpp/opencv_contrib$CvFuzzyMeanShiftTracker;
.end method

.method public native track(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;IZI)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method
