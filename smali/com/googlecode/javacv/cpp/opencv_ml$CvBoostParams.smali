.class public Lcom/googlecode/javacv/cpp/opencv_ml$CvBoostParams;
.super Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeParams;
.source "opencv_ml.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/NoOffset;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_ml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvBoostParams"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1118
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1119
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeParams;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_ml$CvBoostParams;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 1124
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeParams;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_ml$CvBoostParams;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(IIDIZ[F)V
    .locals 0
    .parameter "boost_type"
    .parameter "weak_count"
    .parameter "weight_trim_rate"
    .parameter "max_depth"
    .parameter "use_surrogates"
    .parameter "priors"

    .prologue
    .line 1121
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeParams;-><init>()V

    .line 1122
    invoke-direct/range {p0 .. p7}, Lcom/googlecode/javacv/cpp/opencv_ml$CvBoostParams;->allocate(IIDIZ[F)V

    .line 1123
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 1125
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeParams;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(IIDIZ[F)V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native boost_type()I
.end method

.method public native boost_type(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvBoostParams;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1117
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_ml$CvBoostParams;->position(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvBoostParams;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvBoostParams;
    .locals 1
    .parameter "position"

    .prologue
    .line 1132
    invoke-super {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeParams;->position(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeParams;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_ml$CvBoostParams;

    return-object v0
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1117
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_ml$CvBoostParams;->position(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvBoostParams;

    move-result-object v0

    return-object v0
.end method

.method public native split_criteria()I
.end method

.method public native split_criteria(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvBoostParams;
.end method

.method public native weak_count()I
.end method

.method public native weak_count(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvBoostParams;
.end method

.method public native weight_trim_rate()D
.end method

.method public native weight_trim_rate(D)Lcom/googlecode/javacv/cpp/opencv_ml$CvBoostParams;
.end method
