.class public Lcom/googlecode/javacv/cpp/opencv_contrib$Retina$RetinaParameters$IplMagnoParameters;
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
    name = "IplMagnoParameters"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 938
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 939
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_contrib$Retina$RetinaParameters$IplMagnoParameters;->allocate()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 940
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method


# virtual methods
.method public native V0CompressionParameter()F
.end method

.method public native V0CompressionParameter(F)Lcom/googlecode/javacv/cpp/opencv_contrib$Retina$RetinaParameters$IplMagnoParameters;
.end method

.method public native amacrinCellsTemporalCutFrequency()F
.end method

.method public native amacrinCellsTemporalCutFrequency(F)Lcom/googlecode/javacv/cpp/opencv_contrib$Retina$RetinaParameters$IplMagnoParameters;
.end method

.method public native localAdaptintegration_k()F
.end method

.method public native localAdaptintegration_k(F)Lcom/googlecode/javacv/cpp/opencv_contrib$Retina$RetinaParameters$IplMagnoParameters;
.end method

.method public native localAdaptintegration_tau()F
.end method

.method public native localAdaptintegration_tau(F)Lcom/googlecode/javacv/cpp/opencv_contrib$Retina$RetinaParameters$IplMagnoParameters;
.end method

.method public native normaliseOutput(Z)Lcom/googlecode/javacv/cpp/opencv_contrib$Retina$RetinaParameters$IplMagnoParameters;
.end method

.method public native normaliseOutput()Z
.end method

.method public native parasolCells_beta()F
.end method

.method public native parasolCells_beta(F)Lcom/googlecode/javacv/cpp/opencv_contrib$Retina$RetinaParameters$IplMagnoParameters;
.end method

.method public native parasolCells_k()F
.end method

.method public native parasolCells_k(F)Lcom/googlecode/javacv/cpp/opencv_contrib$Retina$RetinaParameters$IplMagnoParameters;
.end method

.method public native parasolCells_tau()F
.end method

.method public native parasolCells_tau(F)Lcom/googlecode/javacv/cpp/opencv_contrib$Retina$RetinaParameters$IplMagnoParameters;
.end method
