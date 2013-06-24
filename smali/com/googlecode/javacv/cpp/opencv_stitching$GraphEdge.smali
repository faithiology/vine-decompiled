.class public Lcom/googlecode/javacv/cpp/opencv_stitching$GraphEdge;
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
    name = "GraphEdge"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 791
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 0
    .parameter "from"
    .parameter "to"
    .parameter "weight"

    .prologue
    .line 792
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1, p2, p3}, Lcom/googlecode/javacv/cpp/opencv_stitching$GraphEdge;->allocate(IIF)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 793
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate(IIF)V
.end method


# virtual methods
.method public native from()I
.end method

.method public native from(I)Lcom/googlecode/javacv/cpp/opencv_stitching$GraphEdge;
.end method

.method public native greaterThan(Lcom/googlecode/javacv/cpp/opencv_stitching$GraphEdge;)Z
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "bool"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "operator>"
        }
    .end annotation
.end method

.method public native lessThan(Lcom/googlecode/javacv/cpp/opencv_stitching$GraphEdge;)Z
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "bool"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "operator<"
        }
    .end annotation
.end method

.method public native to()I
.end method

.method public native to(I)Lcom/googlecode/javacv/cpp/opencv_stitching$GraphEdge;
.end method

.method public native weight()F
.end method

.method public native weight(F)Lcom/googlecode/javacv/cpp/opencv_stitching$GraphEdge;
.end method
