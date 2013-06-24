.class public Lcom/googlecode/javacv/cpp/opencv_ml$CvTrainTestSplit;
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
    name = "CvTrainTestSplit"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1446
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1447
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_ml$CvTrainTestSplit;->allocate()V

    return-void
.end method

.method public constructor <init>(FZ)V
    .locals 0
    .parameter "train_sample_portion"
    .parameter "mix"

    .prologue
    .line 1449
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/googlecode/javacv/cpp/opencv_ml$CvTrainTestSplit;->allocate(FZ)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 1450
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_ml$CvTrainTestSplit;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0
    .parameter "train_sample_count"
    .parameter "mix"

    .prologue
    .line 1448
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/googlecode/javacv/cpp/opencv_ml$CvTrainTestSplit;->allocate(IZ)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 1451
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(FZ)V
.end method

.method private native allocate(IZ)V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native mix(Z)Lcom/googlecode/javacv/cpp/opencv_ml$CvTrainTestSplit;
.end method

.method public native mix()Z
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1445
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_ml$CvTrainTestSplit;->position(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvTrainTestSplit;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvTrainTestSplit;
    .locals 1
    .parameter "position"

    .prologue
    .line 1458
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_ml$CvTrainTestSplit;

    return-object v0
.end method

.method public native train_sample_part_count()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "train_sample_part.count"
        }
    .end annotation
.end method

.method public native train_sample_part_count(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvTrainTestSplit;
.end method

.method public native train_sample_part_mode()I
.end method

.method public native train_sample_part_mode(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvTrainTestSplit;
.end method

.method public native train_sample_part_portion()F
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "train_sample_part.portion"
        }
    .end annotation
.end method

.method public native train_sample_part_portion(F)Lcom/googlecode/javacv/cpp/opencv_ml$CvTrainTestSplit;
.end method
