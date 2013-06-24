.class public Lcom/googlecode/javacv/cpp/opencv_contrib$StereoVar;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_contrib.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv"
.end annotation

.annotation runtime Lcom/googlecode/javacpp/annotation/NoOffset;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_contrib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StereoVar"
.end annotation


# static fields
.field public static final CYCLE_O:I = 0x0

.field public static final CYCLE_V:I = 0x1

.field public static final PENALIZATION_CHARBONNIER:I = 0x1

.field public static final PENALIZATION_PERONA_MALIK:I = 0x2

.field public static final PENALIZATION_TICHONOV:I = 0x0

.field public static final USE_AUTO_PARAMS:I = 0x8

.field public static final USE_EQUALIZE_HIST:I = 0x2

.field public static final USE_INITIAL_DISPARITY:I = 0x1

.field public static final USE_MEDIAN_FILTERING:I = 0x10

.field public static final USE_SMART_ID:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 598
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 599
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_contrib$StereoVar;->allocate()V

    return-void
.end method

.method public constructor <init>(IDIIIIDFFIII)V
    .locals 0
    .parameter "levels"
    .parameter "pyrScale"
    .parameter "nIt"
    .parameter "minDisp"
    .parameter "maxDisp"
    .parameter "poly_n"
    .parameter "poly_sigma"
    .parameter "fi"
    .parameter "lambda"
    .parameter "penalization"
    .parameter "cycle"
    .parameter "flags"

    .prologue
    .line 601
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    .line 602
    invoke-direct/range {p0 .. p14}, Lcom/googlecode/javacv/cpp/opencv_contrib$StereoVar;->allocate(IDIIIIDFFIII)V

    .line 603
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 604
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(IDIIIIDFFIII)V
.end method


# virtual methods
.method public native compute(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputMat;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputMat;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputMat;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "operator()"
        }
    .end annotation
.end method

.method public native cycle()I
.end method

.method public native cycle(I)Lcom/googlecode/javacv/cpp/opencv_contrib$StereoVar;
.end method

.method public native fi()F
.end method

.method public native fi(F)Lcom/googlecode/javacv/cpp/opencv_contrib$StereoVar;
.end method

.method public native flags()I
.end method

.method public native flags(I)Lcom/googlecode/javacv/cpp/opencv_contrib$StereoVar;
.end method

.method public native lambda()F
.end method

.method public native lambda(F)Lcom/googlecode/javacv/cpp/opencv_contrib$StereoVar;
.end method

.method public native levels()I
.end method

.method public native levels(I)Lcom/googlecode/javacv/cpp/opencv_contrib$StereoVar;
.end method

.method public native maxDisp()I
.end method

.method public native maxDisp(I)Lcom/googlecode/javacv/cpp/opencv_contrib$StereoVar;
.end method

.method public native minDisp()I
.end method

.method public native minDisp(I)Lcom/googlecode/javacv/cpp/opencv_contrib$StereoVar;
.end method

.method public native nIt()I
.end method

.method public native nIt(I)Lcom/googlecode/javacv/cpp/opencv_contrib$StereoVar;
.end method

.method public native penalization()I
.end method

.method public native penalization(I)Lcom/googlecode/javacv/cpp/opencv_contrib$StereoVar;
.end method

.method public native poly_n()I
.end method

.method public native poly_n(I)Lcom/googlecode/javacv/cpp/opencv_contrib$StereoVar;
.end method

.method public native poly_sigma()D
.end method

.method public native poly_sigma(D)Lcom/googlecode/javacv/cpp/opencv_contrib$StereoVar;
.end method

.method public native pyrScale()D
.end method

.method public native pyrScale(D)Lcom/googlecode/javacv/cpp/opencv_contrib$StereoVar;
.end method
