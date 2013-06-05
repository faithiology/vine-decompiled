.class public Lcom/googlecode/javacv/cpp/opencv_features2d$KeyPoint;
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
    name = "KeyPoint"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 101
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d$KeyPoint;->allocate()V

    return-void
.end method

.method public constructor <init>(FFFFFII)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "_size"
    .parameter "_angle"
    .parameter "_response"
    .parameter "_octave"
    .parameter "_class_id"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    .line 110
    invoke-direct/range {p0 .. p7}, Lcom/googlecode/javacv/cpp/opencv_features2d$KeyPoint;->allocate(FFFFFII)V

    .line 111
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_features2d$KeyPoint;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;FFFII)V
    .locals 0
    .parameter "_pt"
    .parameter "_size"
    .parameter "_angle"
    .parameter "_response"
    .parameter "_octave"
    .parameter "_class_id"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    .line 106
    invoke-direct/range {p0 .. p6}, Lcom/googlecode/javacv/cpp/opencv_features2d$KeyPoint;->allocate(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;FFFII)V

    .line 107
    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(FFFFFII)V
.end method

.method private native allocate(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;FFFII)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method private native allocateArray(I)V
.end method

.method public static native convert(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;Lcom/googlecode/javacv/cpp/opencv_features2d$KeyPoint;FFII)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
            value = "CvPoint2D32f,cv::Point2f"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native convert(Lcom/googlecode/javacv/cpp/opencv_features2d$KeyPoint;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;[I)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
            value = "CvPoint2D32f,cv::Point2f"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
        .end annotation
    .end parameter
.end method

.method public static native overlap(Lcom/googlecode/javacv/cpp/opencv_features2d$KeyPoint;Lcom/googlecode/javacv/cpp/opencv_features2d$KeyPoint;)F
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
.end method


# virtual methods
.method public native angle()F
.end method

.method public native angle(F)Lcom/googlecode/javacv/cpp/opencv_features2d$KeyPoint;
.end method

.method public native class_id()I
.end method

.method public native class_id(I)Lcom/googlecode/javacv/cpp/opencv_features2d$KeyPoint;
.end method

.method public native hash()J
.end method

.method public native octave()I
.end method

.method public native octave(I)Lcom/googlecode/javacv/cpp/opencv_features2d$KeyPoint;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_features2d$KeyPoint;->position(I)Lcom/googlecode/javacv/cpp/opencv_features2d$KeyPoint;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_features2d$KeyPoint;
    .locals 1
    .parameter "position"

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_features2d$KeyPoint;

    return-object v0
.end method

.method public native pt()Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public native pt(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;)Lcom/googlecode/javacv/cpp/opencv_features2d$KeyPoint;
.end method

.method public native pt_x()F
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "pt.x"
        }
    .end annotation
.end method

.method public native pt_x(F)Lcom/googlecode/javacv/cpp/opencv_features2d$KeyPoint;
.end method

.method public native pt_y()F
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "pt.y"
        }
    .end annotation
.end method

.method public native pt_y(F)Lcom/googlecode/javacv/cpp/opencv_features2d$KeyPoint;
.end method

.method public native response()F
.end method

.method public native response(F)Lcom/googlecode/javacv/cpp/opencv_features2d$KeyPoint;
.end method

.method public native size()F
.end method

.method public native size(F)Lcom/googlecode/javacv/cpp/opencv_features2d$KeyPoint;
.end method
