.class public Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeNode;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_ml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_ml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvDTreeNode"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 717
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 718
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeNode;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 719
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeNode;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 720
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native Tn()I
.end method

.method public native Tn(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeNode;
.end method

.method public native alpha()D
.end method

.method public native alpha(D)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeNode;
.end method

.method public native buf_idx()I
.end method

.method public native buf_idx(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeNode;
.end method

.method public native class_idx()I
.end method

.method public native class_idx(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeNode;
.end method

.method public native complexity()I
.end method

.method public native complexity(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeNode;
.end method

.method public native cv_Tn()Lcom/googlecode/javacpp/IntPointer;
.end method

.method public native cv_Tn(Lcom/googlecode/javacpp/IntPointer;)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeNode;
.end method

.method public native cv_node_error()Lcom/googlecode/javacpp/DoublePointer;
.end method

.method public native cv_node_error(Lcom/googlecode/javacpp/DoublePointer;)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeNode;
.end method

.method public native cv_node_risk()Lcom/googlecode/javacpp/DoublePointer;
.end method

.method public native cv_node_risk(Lcom/googlecode/javacpp/DoublePointer;)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeNode;
.end method

.method public native depth()I
.end method

.method public native depth(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeNode;
.end method

.method public native get_num_valid(I)I
.end method

.method public native left()Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeNode;
.end method

.method public native left(Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeNode;)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeNode;
.end method

.method public native maxlr()D
.end method

.method public native maxlr(D)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeNode;
.end method

.method public native node_risk()D
.end method

.method public native node_risk(D)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeNode;
.end method

.method public native num_valid()Lcom/googlecode/javacpp/IntPointer;
.end method

.method public native num_valid(Lcom/googlecode/javacpp/IntPointer;)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeNode;
.end method

.method public native offset()I
.end method

.method public native offset(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeNode;
.end method

.method public native parent()Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeNode;
.end method

.method public native parent(Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeNode;)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeNode;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 716
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeNode;->position(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeNode;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeNode;
    .locals 1
    .parameter "position"

    .prologue
    .line 725
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeNode;

    return-object v0
.end method

.method public native right()Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeNode;
.end method

.method public native right(Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeNode;)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeNode;
.end method

.method public native sample_count()I
.end method

.method public native sample_count(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeNode;
.end method

.method public native set_num_valid(II)V
.end method

.method public native split(Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeSplit;)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeNode;
.end method

.method public native split()Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeSplit;
.end method

.method public native tree_error()D
.end method

.method public native tree_error(D)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeNode;
.end method

.method public native tree_risk()D
.end method

.method public native tree_risk(D)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeNode;
.end method

.method public native value()D
.end method

.method public native value(D)Lcom/googlecode/javacv/cpp/opencv_ml$CvDTreeNode;
.end method
