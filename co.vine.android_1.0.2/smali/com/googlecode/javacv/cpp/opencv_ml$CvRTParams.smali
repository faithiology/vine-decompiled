.class public Lcom/googlecode/javacv/cpp/opencv_ml$CvRTParams;
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
    name = "CvRTParams"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 986
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 987
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeParams;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_ml$CvRTParams;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 995
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeParams;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_ml$CvRTParams;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(IIFZI[FZIIFI)V
    .locals 0
    .parameter "max_depth"
    .parameter "min_sample_count"
    .parameter "regression_accuracy"
    .parameter "use_surrogates"
    .parameter "max_categories"
    .parameter "priors"
    .parameter "calc_var_importance"
    .parameter "nactive_vars"
    .parameter "max_num_of_trees_in_the_forest"
    .parameter "forest_accuracy"
    .parameter "termcrit_type"

    .prologue
    .line 990
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeParams;-><init>()V

    .line 991
    invoke-direct/range {p0 .. p11}, Lcom/googlecode/javacv/cpp/opencv_ml$CvRTParams;->allocate(IIFZI[FZIIFI)V

    .line 994
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 996
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeParams;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(IIFZI[FZIIFI)V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native calc_var_importance(Z)Lcom/googlecode/javacv/cpp/opencv_ml$CvRTParams;
.end method

.method public native calc_var_importance()Z
.end method

.method public native nactive_vars()I
.end method

.method public native nactive_vars(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvRTParams;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 985
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_ml$CvRTParams;->position(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvRTParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 985
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_ml$CvRTParams;->position(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvRTParams;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvRTParams;
    .locals 1
    .parameter "position"

    .prologue
    .line 1004
    invoke-super {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeParams;->position(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeParams;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_ml$CvRTParams;

    return-object v0
.end method

.method public native term_crit()Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public native term_crit(Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;)Lcom/googlecode/javacv/cpp/opencv_ml$CvRTParams;
.end method
