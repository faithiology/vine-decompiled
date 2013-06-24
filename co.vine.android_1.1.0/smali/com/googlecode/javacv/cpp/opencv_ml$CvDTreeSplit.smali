.class public Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeSplit;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_ml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_ml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvDTreeSplit"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 693
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 694
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeSplit;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 695
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeSplit;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 696
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native condensed_idx()I
.end method

.method public native condensed_idx(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeSplit;
.end method

.method public native inversed()I
.end method

.method public native inversed(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeSplit;
.end method

.method public native next()Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeSplit;
.end method

.method public native next(Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeSplit;)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeSplit;
.end method

.method public native ord_c()F
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "ord.c"
        }
    .end annotation
.end method

.method public native ord_c(F)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeSplit;
.end method

.method public native ord_split_point()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "ord.split_point"
        }
    .end annotation
.end method

.method public native ord_split_point(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeSplit;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 692
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeSplit;->position(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeSplit;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeSplit;
    .locals 1
    .parameter "position"

    .prologue
    .line 701
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeSplit;

    return-object v0
.end method

.method public native quality()F
.end method

.method public native quality(F)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeSplit;
.end method

.method public native subset(I)I
.end method

.method public native subset(II)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeSplit;
.end method

.method public native var_idx()I
.end method

.method public native var_idx(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeSplit;
.end method
