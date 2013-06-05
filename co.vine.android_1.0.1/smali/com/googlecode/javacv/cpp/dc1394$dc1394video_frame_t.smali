.class public Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;
.super Lcom/googlecode/javacpp/Pointer;
.source "dc1394.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/dc1394;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dc1394video_frame_t"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 822
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 823
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 824
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 825
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native allocated_image_bytes()J
.end method

.method public native allocated_image_bytes(J)Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;
.end method

.method public native camera()Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;
.end method

.method public native camera(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;)Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;
.end method

.method public native color_coding()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394color_coding_t"
        }
    .end annotation
.end method

.method public native color_coding(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;
.end method

.method public native color_filter()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394color_filter_t"
        }
    .end annotation
.end method

.method public native color_filter(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;
.end method

.method public native data_depth()I
.end method

.method public native data_depth(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;
.end method

.method public native data_in_padding()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394bool_t"
        }
    .end annotation
.end method

.method public native data_in_padding(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;
.end method

.method public native frames_behind()I
.end method

.method public native frames_behind(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 3

    .prologue
    .line 862
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;->image()Lcom/googlecode/javacpp/BytePointer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;->total_bytes()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/BytePointer;->capacity(I)Lcom/googlecode/javacpp/BytePointer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/googlecode/javacpp/BytePointer;->asByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public native id()I
.end method

.method public native id(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;
.end method

.method public native image()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned char*"
        }
    .end annotation
.end method

.method public native image(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;
.end method

.method public native image_bytes()I
.end method

.method public native image_bytes(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;
.end method

.method public native little_endian()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394bool_t"
        }
    .end annotation
.end method

.method public native little_endian(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;
.end method

.method public native packet_size()I
.end method

.method public native packet_size(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;
.end method

.method public native packets_per_frame()I
.end method

.method public native packets_per_frame(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;
.end method

.method public native padding_bytes()I
.end method

.method public native padding_bytes(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;
.end method

.method public native pos(I)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "position"
        }
    .end annotation
.end method

.method public native pos(II)Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 821
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;->position(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;
    .locals 1
    .parameter "position"

    .prologue
    .line 830
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    return-object v0
.end method

.method public native size(I)I
.end method

.method public native size(II)Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;
.end method

.method public native stride()I
.end method

.method public native stride(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;
.end method

.method public native timestamp()J
.end method

.method public native timestamp(J)Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;
.end method

.method public native total_bytes()J
.end method

.method public native total_bytes(J)Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;
.end method

.method public native video_mode()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394video_mode_t"
        }
    .end annotation
.end method

.method public native video_mode(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;
.end method

.method public native yuv_byte_order()I
.end method

.method public native yuv_byte_order(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;
.end method
