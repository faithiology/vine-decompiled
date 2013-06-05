.class public Lcom/googlecode/javacv/cpp/opencv_legacy$RTreeNode;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_legacy.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv"
.end annotation

.annotation runtime Lcom/googlecode/javacpp/annotation/NoOffset;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RTreeNode"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1874
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1875
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$RTreeNode;->allocate()V

    return-void
.end method

.method public constructor <init>(BBBB)V
    .locals 0
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 1876
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/googlecode/javacv/cpp/opencv_legacy$RTreeNode;->allocate(BBBB)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(BBBB)V
.end method


# virtual methods
.method public native compare(Lcom/googlecode/javacpp/BytePointer;)Z
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uchar*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "operator()"
        }
    .end annotation
.end method

.method public native offset1(S)Lcom/googlecode/javacv/cpp/opencv_legacy$RTreeNode;
.end method

.method public native offset1()S
.end method

.method public native offset2(S)Lcom/googlecode/javacv/cpp/opencv_legacy$RTreeNode;
.end method

.method public native offset2()S
.end method
