.class public Lcom/googlecode/javacv/cpp/opencv_calib3d$StereoBM;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_calib3d.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv"
.end annotation

.annotation runtime Lcom/googlecode/javacpp/annotation/NoOffset;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_calib3d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StereoBM"
.end annotation


# static fields
.field public static final BASIC_PRESET:I = 0x0

.field public static final FISH_EYE_PRESET:I = 0x1

.field public static final NARROW_PRESET:I = 0x2

.field public static final PREFILTER_NORMALIZED_RESPONSE:I = 0x0

.field public static final PREFILTER_XSOBEL:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 442
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 443
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_calib3d$StereoBM;->allocate()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .parameter "preset"
    .parameter "ndisparities"
    .parameter "SADWindowSize"

    .prologue
    .line 444
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    .line 445
    invoke-direct {p0, p1, p2, p3}, Lcom/googlecode/javacv/cpp/opencv_calib3d$StereoBM;->allocate(III)V

    .line 446
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 447
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(III)V
.end method


# virtual methods
.method public native compute(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "operator()"
        }
    .end annotation
.end method

.method public native init(III)V
.end method

.method public native state()Lcom/googlecode/javacv/cpp/opencv_calib3d$CvStereoBMState;
.end method

.method public native state(Lcom/googlecode/javacv/cpp/opencv_calib3d$CvStereoBMState;)Lcom/googlecode/javacv/cpp/opencv_calib3d$StereoBM;
.end method
