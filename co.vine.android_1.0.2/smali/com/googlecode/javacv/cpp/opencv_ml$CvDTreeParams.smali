.class public Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeParams;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_ml.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/NoOffset;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_ml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvDTreeParams"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 760
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 761
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeParams;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 767
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeParams;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(IIFZIIZZ[F)V
    .locals 0
    .parameter "max_depth"
    .parameter "min_sample_count"
    .parameter "regression_accuracy"
    .parameter "use_surrogates"
    .parameter "max_categories"
    .parameter "cv_folds"
    .parameter "use_1se_rule"
    .parameter "truncate_pruned_tree"
    .parameter "priors"

    .prologue
    .line 763
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    .line 764
    invoke-direct/range {p0 .. p9}, Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeParams;->allocate(IIFZIIZZ[F)V

    .line 766
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 768
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(IIFZIIZZ[F)V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native cv_folds()I
.end method

.method public native cv_folds(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeParams;
.end method

.method public native max_categories()I
.end method

.method public native max_categories(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeParams;
.end method

.method public native max_depth()I
.end method

.method public native max_depth(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeParams;
.end method

.method public native min_sample_count()I
.end method

.method public native min_sample_count(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeParams;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 759
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeParams;->position(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeParams;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeParams;
    .locals 1
    .parameter "position"

    .prologue
    .line 775
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeParams;

    return-object v0
.end method

.method public native priors()Lcom/googlecode/javacpp/FloatPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public native priors(Lcom/googlecode/javacpp/FloatPointer;)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeParams;
.end method

.method public native regression_accuracy()F
.end method

.method public native regression_accuracy(F)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeParams;
.end method

.method public native truncate_pruned_tree(Z)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeParams;
.end method

.method public native truncate_pruned_tree()Z
.end method

.method public native use_1se_rule(Z)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeParams;
.end method

.method public native use_1se_rule()Z
.end method

.method public native use_surrogates(Z)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeParams;
.end method

.method public native use_surrogates()Z
.end method
