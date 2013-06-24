.class public Lcom/googlecode/javacv/cpp/opencv_ml$CvGBTreesParams;
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
    name = "CvGBTreesParams"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1244
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1245
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeParams;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_ml$CvGBTreesParams;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 1250
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeParams;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_ml$CvGBTreesParams;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(IIFFIZ)V
    .locals 0
    .parameter "loss_function_type"
    .parameter "weak_count"
    .parameter "shrinkage"
    .parameter "subsample_portion"
    .parameter "max_depth"
    .parameter "use_surrogates"

    .prologue
    .line 1247
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeParams;-><init>()V

    .line 1248
    invoke-direct/range {p0 .. p6}, Lcom/googlecode/javacv/cpp/opencv_ml$CvGBTreesParams;->allocate(IIFFIZ)V

    .line 1249
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 1251
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeParams;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(IIFFIZ)V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native loss_function_type()I
.end method

.method public native loss_function_type(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvGBTreesParams;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1243
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_ml$CvGBTreesParams;->position(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvGBTreesParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1243
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_ml$CvGBTreesParams;->position(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvGBTreesParams;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvGBTreesParams;
    .locals 1
    .parameter "position"

    .prologue
    .line 1258
    invoke-super {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeParams;->position(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeParams;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_ml$CvGBTreesParams;

    return-object v0
.end method

.method public native shrinkage()F
.end method

.method public native shrinkage(F)Lcom/googlecode/javacv/cpp/opencv_ml$CvGBTreesParams;
.end method

.method public native subsample_portion()F
.end method

.method public native subsample_portion(F)Lcom/googlecode/javacv/cpp/opencv_ml$CvGBTreesParams;
.end method

.method public native weak_count()I
.end method

.method public native weak_count(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvGBTreesParams;
.end method
