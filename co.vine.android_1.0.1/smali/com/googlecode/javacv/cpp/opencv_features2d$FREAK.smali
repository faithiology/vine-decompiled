.class public Lcom/googlecode/javacv/cpp/opencv_features2d$FREAK;
.super Lcom/googlecode/javacv/cpp/opencv_features2d$DescriptorExtractor;
.source "opencv_features2d.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_features2d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FREAK"
.end annotation


# static fields
.field public static final FAST_SCORE:I = 0x1

.field public static final HARRIS_SCORE:I = 0x0

.field public static final NB_ORIENPAIRS:I = 0x2d

.field public static final NB_PAIRS:I = 0x200

.field public static final NB_SCALES:I = 0x40

.field public static final kBytes:I = 0x20


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 342
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d$DescriptorExtractor;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d$FREAK;->allocate()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 345
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_features2d$DescriptorExtractor;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public constructor <init>(ZZFILcom/googlecode/javacpp/IntPointer;)V
    .locals 0
    .parameter "orientationNormalized"
    .end parameter
    .parameter "scaleNormalized"
    .end parameter
    .parameter "patternScale"
    .end parameter
    .parameter "nOctaves"
    .end parameter
    .parameter "selectedPairs"
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
        .end annotation
    .end parameter

    .prologue
    .line 348
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d$DescriptorExtractor;-><init>()V

    .line 349
    invoke-direct/range {p0 .. p5}, Lcom/googlecode/javacv/cpp/opencv_features2d$FREAK;->allocate(ZZFILcom/googlecode/javacpp/IntPointer;)V

    .line 350
    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(ZZFILcom/googlecode/javacpp/IntPointer;)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
        .end annotation
    .end parameter
.end method


# virtual methods
.method public native selectPairs(Lcom/googlecode/javacv/cpp/opencv_core$MatVector;Lcom/googlecode/javacv/cpp/opencv_features2d$KeyPointVectorVector;DZ)Lcom/googlecode/javacpp/IntPointer;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
    .end annotation
.end method
