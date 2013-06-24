.class public Lcom/googlecode/javacv/cpp/freenect$freenect_frame_mode;
.super Lcom/googlecode/javacpp/Pointer;
.source "freenect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/freenect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "freenect_frame_mode"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 184
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/freenect$freenect_frame_mode;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/freenect$freenect_frame_mode;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native bytes()I
.end method

.method public native bytes(I)Lcom/googlecode/javacv/cpp/freenect$freenect_frame_mode;
.end method

.method public native data_bits_per_pixel()B
.end method

.method public native data_bits_per_pixel(B)Lcom/googlecode/javacv/cpp/freenect$freenect_frame_mode;
.end method

.method public native depth_format()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "freenect_depth_format"
        }
    .end annotation
.end method

.method public native depth_format(I)Lcom/googlecode/javacv/cpp/freenect$freenect_frame_mode;
.end method

.method public native framerate()B
.end method

.method public native framerate(B)Lcom/googlecode/javacv/cpp/freenect$freenect_frame_mode;
.end method

.method public native height(S)Lcom/googlecode/javacv/cpp/freenect$freenect_frame_mode;
.end method

.method public native height()S
.end method

.method public native is_valid()B
.end method

.method public native is_valid(B)Lcom/googlecode/javacv/cpp/freenect$freenect_frame_mode;
.end method

.method public native padding_bits_per_pixel()B
.end method

.method public native padding_bits_per_pixel(B)Lcom/googlecode/javacv/cpp/freenect$freenect_frame_mode;
.end method

.method public native reserved()I
.end method

.method public native reserved(I)Lcom/googlecode/javacv/cpp/freenect$freenect_frame_mode;
.end method

.method public native resolution()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "freenect_resolution"
        }
    .end annotation
.end method

.method public native resolution(I)Lcom/googlecode/javacv/cpp/freenect$freenect_frame_mode;
.end method

.method public native video_format()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "freenect_video_format"
        }
    .end annotation
.end method

.method public native video_format(I)Lcom/googlecode/javacv/cpp/freenect$freenect_frame_mode;
.end method

.method public native width(S)Lcom/googlecode/javacv/cpp/freenect$freenect_frame_mode;
.end method

.method public native width()S
.end method
