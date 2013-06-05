.class public Lcom/googlecode/javacv/cpp/opencv_calib3d$CvLevMarq;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_calib3d.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/NoOffset;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_calib3d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvLevMarq"
.end annotation


# static fields
.field public static final CALC_J:I = 0x2

.field public static final CHECK_ERR:I = 0x3

.field public static final DONE:I = 0x0

.field public static final STARTED:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 362
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_calib3d$CvLevMarq;->allocate()V

    return-void
.end method

.method public constructor <init>(IILcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;Z)V
    .locals 0
    .parameter "nparams"
    .end parameter
    .parameter "nerrs"
    .end parameter
    .parameter "criteria"
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter "completeSymmFlag"
    .end parameter

    .prologue
    .line 366
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    .line 367
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/googlecode/javacv/cpp/opencv_calib3d$CvLevMarq;->allocate(IILcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;Z)V

    .line 368
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 369
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(IILcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;Z)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method


# virtual methods
.method public native J(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_calib3d$CvLevMarq;
.end method

.method public native J()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native JtErr(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_calib3d$CvLevMarq;
.end method

.method public native JtErr()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native JtJ(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_calib3d$CvLevMarq;
.end method

.method public native JtJ()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native JtJN(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_calib3d$CvLevMarq;
.end method

.method public native JtJN()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native JtJV(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_calib3d$CvLevMarq;
.end method

.method public native JtJV()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native JtJW(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_calib3d$CvLevMarq;
.end method

.method public native JtJW()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native clear()V
.end method

.method public native completeSymmFlag(Z)Lcom/googlecode/javacv/cpp/opencv_calib3d$CvLevMarq;
.end method

.method public native completeSymmFlag()Z
.end method

.method public native criteria(Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;)Lcom/googlecode/javacv/cpp/opencv_calib3d$CvLevMarq;
.end method

.method public native criteria()Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public native err(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_calib3d$CvLevMarq;
.end method

.method public native err()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native errNorm()D
.end method

.method public native errNorm(D)Lcom/googlecode/javacv/cpp/opencv_calib3d$CvLevMarq;
.end method

.method public native init(IILcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;Z)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public native iters()I
.end method

.method public native iters(I)Lcom/googlecode/javacv/cpp/opencv_calib3d$CvLevMarq;
.end method

.method public native lambdaLg10()I
.end method

.method public native lambdaLg10(I)Lcom/googlecode/javacv/cpp/opencv_calib3d$CvLevMarq;
.end method

.method public native mask(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_calib3d$CvLevMarq;
.end method

.method public native mask()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native param(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_calib3d$CvLevMarq;
.end method

.method public native param()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native prevErrNorm()D
.end method

.method public native prevErrNorm(D)Lcom/googlecode/javacv/cpp/opencv_calib3d$CvLevMarq;
.end method

.method public native prevParam(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_calib3d$CvLevMarq;
.end method

.method public native prevParam()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native state()I
.end method

.method public native state(I)Lcom/googlecode/javacv/cpp/opencv_calib3d$CvLevMarq;
.end method

.method public native step()V
.end method

.method public native update(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Z
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const CvMat*&"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrRef;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrRef;
        .end annotation
    .end parameter
.end method

.method public native updateAlt(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacpp/DoublePointer;)Z
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const CvMat*&"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrRef;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrRef;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrRef;
        .end annotation
    .end parameter
.end method
