.class public Lcom/googlecode/javacv/cpp/opencv_features2d$DMatch;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_features2d.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv"
.end annotation

.annotation runtime Lcom/googlecode/javacpp/annotation/NoOffset;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_features2d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DMatch"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 841
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 842
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d$DMatch;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 849
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_features2d$DMatch;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 0
    .parameter "_queryIdx"
    .parameter "_trainIdx"
    .parameter "_distance"

    .prologue
    .line 843
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    .line 844
    invoke-direct {p0, p1, p2, p3}, Lcom/googlecode/javacv/cpp/opencv_features2d$DMatch;->allocate(IIF)V

    .line 845
    return-void
.end method

.method public constructor <init>(IIIF)V
    .locals 0
    .parameter "_queryIdx"
    .parameter "_trainIdx"
    .parameter "_imgIdx"
    .parameter "_distance"

    .prologue
    .line 846
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    .line 847
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/googlecode/javacv/cpp/opencv_features2d$DMatch;->allocate(IIIF)V

    .line 848
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 850
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(IIF)V
.end method

.method private native allocate(IIIF)V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native compare(Lcom/googlecode/javacv/cpp/opencv_features2d$DMatch;)Z
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

.method public native distance()F
.end method

.method public native distance(F)Lcom/googlecode/javacv/cpp/opencv_features2d$DMatch;
.end method

.method public native imgIdx()I
.end method

.method public native imgIdx(I)Lcom/googlecode/javacv/cpp/opencv_features2d$DMatch;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 840
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_features2d$DMatch;->position(I)Lcom/googlecode/javacv/cpp/opencv_features2d$DMatch;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_features2d$DMatch;
    .locals 1
    .parameter "position"

    .prologue
    .line 857
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_features2d$DMatch;

    return-object v0
.end method

.method public native queryIdx()I
.end method

.method public native queryIdx(I)Lcom/googlecode/javacv/cpp/opencv_features2d$DMatch;
.end method

.method public native trainIdx()I
.end method

.method public native trainIdx(I)Lcom/googlecode/javacv/cpp/opencv_features2d$DMatch;
.end method
