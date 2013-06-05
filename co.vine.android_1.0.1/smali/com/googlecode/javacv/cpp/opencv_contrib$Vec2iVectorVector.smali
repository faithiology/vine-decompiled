.class public Lcom/googlecode/javacv/cpp/opencv_contrib$Vec2iVectorVector;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_contrib.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Name;
    value = {
        "std::vector<std::vector<cv::Vec2i> >"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_contrib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Vec2iVectorVector"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 335
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 336
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_contrib$Vec2iVectorVector;->allocate()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .parameter "n"

    .prologue
    .line 337
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/googlecode/javacv/cpp/opencv_contrib$Vec2iVectorVector;->allocate(J)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 338
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(J)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "size_t"
            }
        .end annotation
    .end parameter
.end method


# virtual methods
.method public native get(JJ)Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "size_t"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "size_t"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Index;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/ValueGetter;
    .end annotation
.end method

.method public native resize(J)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "size_t"
            }
        .end annotation
    .end parameter
.end method

.method public native resize(JJ)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "size_t"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "size_t"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Index;
    .end annotation
.end method

.method public native size()J
.end method

.method public native size(J)J
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "size_t"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Index;
    .end annotation
.end method
