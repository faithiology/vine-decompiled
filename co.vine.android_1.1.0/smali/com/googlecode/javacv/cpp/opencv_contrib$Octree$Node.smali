.class public Lcom/googlecode/javacv/cpp/opencv_contrib$Octree$Node;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_contrib.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/NoOffset;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_contrib$Octree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Node"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 261
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_contrib$Octree$Node;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_contrib$Octree$Node;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native begin()I
.end method

.method public native begin(I)Lcom/googlecode/javacv/cpp/opencv_contrib$Octree$Node;
.end method

.method public native children(I)I
.end method

.method public native children(II)Lcom/googlecode/javacv/cpp/opencv_contrib$Octree$Node;
.end method

.method public native end()I
.end method

.method public native end(I)Lcom/googlecode/javacv/cpp/opencv_contrib$Octree$Node;
.end method

.method public native isLeaf(Z)Lcom/googlecode/javacv/cpp/opencv_contrib$Octree$Node;
.end method

.method public native isLeaf()Z
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "bool"
        }
    .end annotation
.end method

.method public native maxLevels()I
.end method

.method public native maxLevels(I)Lcom/googlecode/javacv/cpp/opencv_contrib$Octree$Node;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 260
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_contrib$Octree$Node;->position(I)Lcom/googlecode/javacv/cpp/opencv_contrib$Octree$Node;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_contrib$Octree$Node;
    .locals 1
    .parameter "position"

    .prologue
    .line 269
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_contrib$Octree$Node;

    return-object v0
.end method

.method public native x_max()F
.end method

.method public native x_max(F)Lcom/googlecode/javacv/cpp/opencv_contrib$Octree$Node;
.end method

.method public native x_min()F
.end method

.method public native x_min(F)Lcom/googlecode/javacv/cpp/opencv_contrib$Octree$Node;
.end method

.method public native y_max()F
.end method

.method public native y_max(F)Lcom/googlecode/javacv/cpp/opencv_contrib$Octree$Node;
.end method

.method public native y_min()F
.end method

.method public native y_min(F)Lcom/googlecode/javacv/cpp/opencv_contrib$Octree$Node;
.end method

.method public native z_max()F
.end method

.method public native z_max(F)Lcom/googlecode/javacv/cpp/opencv_contrib$Octree$Node;
.end method

.method public native z_min()F
.end method

.method public native z_min(F)Lcom/googlecode/javacv/cpp/opencv_contrib$Octree$Node;
.end method
