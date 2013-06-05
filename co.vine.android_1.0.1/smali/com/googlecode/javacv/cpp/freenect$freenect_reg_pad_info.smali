.class public Lcom/googlecode/javacv/cpp/freenect$freenect_reg_pad_info;
.super Lcom/googlecode/javacpp/Pointer;
.source "freenect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/freenect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "freenect_reg_pad_info"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 393
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/freenect$freenect_reg_pad_info;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 395
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/freenect$freenect_reg_pad_info;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 396
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native cropping_lines(S)Lcom/googlecode/javacv/cpp/freenect$freenect_reg_pad_info;
.end method

.method public native cropping_lines()S
.end method

.method public native end_lines(S)Lcom/googlecode/javacv/cpp/freenect$freenect_reg_pad_info;
.end method

.method public native end_lines()S
.end method

.method public native start_lines(S)Lcom/googlecode/javacv/cpp/freenect$freenect_reg_pad_info;
.end method

.method public native start_lines()S
.end method
