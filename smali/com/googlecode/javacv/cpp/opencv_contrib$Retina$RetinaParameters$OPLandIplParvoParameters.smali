.class public Lcom/googlecode/javacv/cpp/opencv_contrib$Retina$RetinaParameters$OPLandIplParvoParameters;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_contrib.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/NoOffset;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_contrib$Retina$RetinaParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OPLandIplParvoParameters"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 922
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 923
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_contrib$Retina$RetinaParameters$OPLandIplParvoParameters;->allocate()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 924
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method


# virtual methods
.method public native colorMode(Z)Lcom/googlecode/javacv/cpp/opencv_contrib$Retina$RetinaParameters$OPLandIplParvoParameters;
.end method

.method public native colorMode()Z
.end method

.method public native ganglionCellsSensitivity()F
.end method

.method public native ganglionCellsSensitivity(F)Lcom/googlecode/javacv/cpp/opencv_contrib$Retina$RetinaParameters$OPLandIplParvoParameters;
.end method

.method public native hcellsSpatialConstant()F
.end method

.method public native hcellsSpatialConstant(F)Lcom/googlecode/javacv/cpp/opencv_contrib$Retina$RetinaParameters$OPLandIplParvoParameters;
.end method

.method public native hcellsTemporalConstant()F
.end method

.method public native hcellsTemporalConstant(F)Lcom/googlecode/javacv/cpp/opencv_contrib$Retina$RetinaParameters$OPLandIplParvoParameters;
.end method

.method public native horizontalCellsGain()F
.end method

.method public native horizontalCellsGain(F)Lcom/googlecode/javacv/cpp/opencv_contrib$Retina$RetinaParameters$OPLandIplParvoParameters;
.end method

.method public native normaliseOutput(Z)Lcom/googlecode/javacv/cpp/opencv_contrib$Retina$RetinaParameters$OPLandIplParvoParameters;
.end method

.method public native normaliseOutput()Z
.end method

.method public native photoreceptorsLocalAdaptationSensitivity()F
.end method

.method public native photoreceptorsLocalAdaptationSensitivity(F)Lcom/googlecode/javacv/cpp/opencv_contrib$Retina$RetinaParameters$OPLandIplParvoParameters;
.end method

.method public native photoreceptorsSpatialConstant()F
.end method

.method public native photoreceptorsSpatialConstant(F)Lcom/googlecode/javacv/cpp/opencv_contrib$Retina$RetinaParameters$OPLandIplParvoParameters;
.end method

.method public native photoreceptorsTemporalConstant()F
.end method

.method public native photoreceptorsTemporalConstant(F)Lcom/googlecode/javacv/cpp/opencv_contrib$Retina$RetinaParameters$OPLandIplParvoParameters;
.end method
