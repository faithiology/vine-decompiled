.class public Lcom/googlecode/javacv/cpp/opencv_objdetect$Match;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_objdetect.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv::linemod"
.end annotation

.annotation runtime Lcom/googlecode/javacpp/annotation/NoOffset;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_objdetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Match"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 805
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 806
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_objdetect$Match;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 810
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_objdetect$Match;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(IIFLjava/lang/String;I)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "similarity"
    .parameter "class_id"
    .parameter "template_id"

    .prologue
    .line 807
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    .line 808
    invoke-direct/range {p0 .. p5}, Lcom/googlecode/javacv/cpp/opencv_objdetect$Match;->allocate(IIFLjava/lang/String;I)V

    .line 809
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 811
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(IIFLjava/lang/String;I)V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native class_id(Ljava/lang/String;)Lcom/googlecode/javacv/cpp/opencv_objdetect$Match;
.end method

.method public native class_id()Ljava/lang/String;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public native compare(Lcom/googlecode/javacv/cpp/opencv_objdetect$Match;)Z
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

.method public native equals(Lcom/googlecode/javacv/cpp/opencv_objdetect$Match;)Z
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
            "operator=="
        }
    .end annotation
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 804
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_objdetect$Match;->position(I)Lcom/googlecode/javacv/cpp/opencv_objdetect$Match;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_objdetect$Match;
    .locals 1
    .parameter "position"

    .prologue
    .line 817
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_objdetect$Match;

    return-object v0
.end method

.method public native similarity()F
.end method

.method public native similarity(F)Lcom/googlecode/javacv/cpp/opencv_objdetect$Match;
.end method

.method public native template_id()I
.end method

.method public native template_id(I)Lcom/googlecode/javacv/cpp/opencv_objdetect$Match;
.end method

.method public native x()I
.end method

.method public native x(I)Lcom/googlecode/javacv/cpp/opencv_objdetect$Match;
.end method

.method public native y()I
.end method

.method public native y(I)Lcom/googlecode/javacv/cpp/opencv_objdetect$Match;
.end method
