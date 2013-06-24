.class public Lcom/googlecode/javacv/cpp/opencv_legacy$CvCliqueFinder;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_legacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvCliqueFinder"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 573
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 574
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvCliqueFinder;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 575
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvCliqueFinder;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 576
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native All()Lcom/googlecode/javacpp/PointerPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "int**"
        }
    .end annotation
.end method

.method public native All(Lcom/googlecode/javacpp/PointerPointer;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvCliqueFinder;
.end method

.method public native N()I
.end method

.method public native N(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvCliqueFinder;
.end method

.method public native adj_matr()Lcom/googlecode/javacpp/PointerPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "int**"
        }
    .end annotation
.end method

.method public native adj_matr(Lcom/googlecode/javacpp/PointerPointer;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvCliqueFinder;
.end method

.method public native best_score()I
.end method

.method public native best_score(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvCliqueFinder;
.end method

.method public native best_weight()F
.end method

.method public native best_weight(F)Lcom/googlecode/javacv/cpp/opencv_legacy$CvCliqueFinder;
.end method

.method public native cand_weight()Lcom/googlecode/javacpp/FloatPointer;
.end method

.method public native cand_weight(Lcom/googlecode/javacpp/FloatPointer;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvCliqueFinder;
.end method

.method public native ce()Lcom/googlecode/javacpp/IntPointer;
.end method

.method public native ce(Lcom/googlecode/javacpp/IntPointer;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvCliqueFinder;
.end method

.method public native cur_weight()Lcom/googlecode/javacpp/FloatPointer;
.end method

.method public native cur_weight(Lcom/googlecode/javacpp/FloatPointer;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvCliqueFinder;
.end method

.method public native current_comp()Lcom/googlecode/javacpp/IntPointer;
.end method

.method public native current_comp(Lcom/googlecode/javacpp/IntPointer;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvCliqueFinder;
.end method

.method public native edge_weights()Lcom/googlecode/javacpp/FloatPointer;
.end method

.method public native edge_weights(Lcom/googlecode/javacpp/FloatPointer;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvCliqueFinder;
.end method

.method public native fixp()Lcom/googlecode/javacpp/IntPointer;
.end method

.method public native fixp(Lcom/googlecode/javacpp/IntPointer;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvCliqueFinder;
.end method

.method public native graph()Lcom/googlecode/javacv/cpp/opencv_core$CvGraph;
.end method

.method public native graph(Lcom/googlecode/javacv/cpp/opencv_core$CvGraph;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvCliqueFinder;
.end method

.method public native k()I
.end method

.method public native k(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvCliqueFinder;
.end method

.method public native ne()Lcom/googlecode/javacpp/IntPointer;
.end method

.method public native ne(Lcom/googlecode/javacpp/IntPointer;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvCliqueFinder;
.end method

.method public native nod()Lcom/googlecode/javacpp/IntPointer;
.end method

.method public native nod(Lcom/googlecode/javacpp/IntPointer;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvCliqueFinder;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 572
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvCliqueFinder;->position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvCliqueFinder;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvCliqueFinder;
    .locals 1
    .parameter "position"

    .prologue
    .line 581
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_legacy$CvCliqueFinder;

    return-object v0
.end method

.method public native s()Lcom/googlecode/javacpp/IntPointer;
.end method

.method public native s(Lcom/googlecode/javacpp/IntPointer;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvCliqueFinder;
.end method

.method public native status()I
.end method

.method public native status(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvCliqueFinder;
.end method

.method public native vertex_weights()Lcom/googlecode/javacpp/FloatPointer;
.end method

.method public native vertex_weights(Lcom/googlecode/javacpp/FloatPointer;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvCliqueFinder;
.end method

.method public native weighted()I
.end method

.method public native weighted(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvCliqueFinder;
.end method

.method public native weighted_edges()I
.end method

.method public native weighted_edges(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvCliqueFinder;
.end method
