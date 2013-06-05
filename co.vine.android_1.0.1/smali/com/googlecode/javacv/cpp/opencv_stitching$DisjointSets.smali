.class public Lcom/googlecode/javacv/cpp/opencv_stitching$DisjointSets;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_stitching.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv::detail"
.end annotation

.annotation runtime Lcom/googlecode/javacpp/annotation/NoOffset;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_stitching;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisjointSets"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 775
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 776
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_stitching$DisjointSets;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "elem_count"

    .prologue
    .line 777
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_stitching$DisjointSets;->allocate(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 778
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(I)V
.end method


# virtual methods
.method public native createOneElemSets(I)V
.end method

.method public native findSetByElem(I)I
.end method

.method public native mergeSets(II)I
.end method

.method public native parent()Lcom/googlecode/javacpp/IntPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
    .end annotation
.end method

.method public native parent(Lcom/googlecode/javacpp/IntPointer;)Lcom/googlecode/javacv/cpp/opencv_stitching$DisjointSets;
.end method

.method public native size()Lcom/googlecode/javacpp/IntPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
    .end annotation
.end method

.method public native size(Lcom/googlecode/javacpp/IntPointer;)Lcom/googlecode/javacv/cpp/opencv_stitching$DisjointSets;
.end method
