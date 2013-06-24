.class public Lcom/googlecode/javacv/cpp/opencv_contrib$IMatch;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_contrib.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv::of2"
.end annotation

.annotation runtime Lcom/googlecode/javacpp/annotation/NoOffset;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_contrib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IMatch"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1235
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1236
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_contrib$IMatch;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 1240
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_contrib$IMatch;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(IIDD)V
    .locals 0
    .parameter "_queryIdx"
    .parameter "_imgIdx"
    .parameter "_likelihood"
    .parameter "_match"

    .prologue
    .line 1237
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    .line 1238
    invoke-direct/range {p0 .. p6}, Lcom/googlecode/javacv/cpp/opencv_contrib$IMatch;->allocate(IIDD)V

    .line 1239
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 1241
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(IIDD)V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native compare(Lcom/googlecode/javacv/cpp/opencv_contrib$IMatch;)Z
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "operator<"
        }
    .end annotation
.end method

.method public native imgIdx()I
.end method

.method public native imgIdx(I)Lcom/googlecode/javacv/cpp/opencv_contrib$IMatch;
.end method

.method public native likelihood()D
.end method

.method public native likelihood(D)Lcom/googlecode/javacv/cpp/opencv_contrib$IMatch;
.end method

.method public native match()D
.end method

.method public native match(D)Lcom/googlecode/javacv/cpp/opencv_contrib$IMatch;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1234
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_contrib$IMatch;->position(I)Lcom/googlecode/javacv/cpp/opencv_contrib$IMatch;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_contrib$IMatch;
    .locals 1
    .parameter "position"

    .prologue
    .line 1247
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_contrib$IMatch;

    return-object v0
.end method

.method public native queryIdx()I
.end method

.method public native queryIdx(I)Lcom/googlecode/javacv/cpp/opencv_contrib$IMatch;
.end method
