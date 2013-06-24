.class public Lcom/googlecode/javacv/cpp/avcodec$AVFrame;
.super Lcom/googlecode/javacv/cpp/avcodec$AVPicture;
.source "avcodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/avcodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AVFrame"
.end annotation


# static fields
.field public static final AV_NUM_DATA_POINTERS:I = 0x8

.field public static final FF_DECODE_ERROR_INVALID_BITSTREAM:I = 0x1

.field public static final FF_DECODE_ERROR_MISSING_REFERENCE:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1223
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1224
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avcodec$AVPicture;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avcodec$AVFrame;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 1225
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avcodec$AVPicture;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/avcodec$AVFrame;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 1226
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/avcodec$AVPicture;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native base(I)Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "uint8_t*"
        }
    .end annotation
.end method

.method public native base(ILcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;
.end method

.method public native best_effort_timestamp()J
.end method

.method public native best_effort_timestamp(J)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;
.end method

.method public native buffer_hints()I
.end method

.method public native buffer_hints(I)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;
.end method

.method public native channel_layout()J
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "uint64_t"
        }
    .end annotation
.end method

.method public native channel_layout(J)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;
.end method

.method public native channels()I
.end method

.method public native channels(I)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;
.end method

.method public native coded_picture_number()I
.end method

.method public native coded_picture_number(I)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;
.end method

.method public native dct_coeff()Lcom/googlecode/javacpp/ShortPointer;
.end method

.method public native dct_coeff(Lcom/googlecode/javacpp/ShortPointer;)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;
.end method

.method public native decode_error_flags()I
.end method

.method public native decode_error_flags(I)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;
.end method

.method public native display_picture_number()I
.end method

.method public native display_picture_number(I)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;
.end method

.method public native error(J)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "uint64_t"
        }
    .end annotation
.end method

.method public native error(JI)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;
.end method

.method public native extended_data()Lcom/googlecode/javacpp/PointerPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "uint8_t**"
        }
    .end annotation
.end method

.method public native extended_data(Lcom/googlecode/javacpp/PointerPointer;)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;
.end method

.method public native format()I
.end method

.method public native format(I)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;
.end method

.method public native height()I
.end method

.method public native height(I)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;
.end method

.method public native hwaccel_picture_private()Lcom/googlecode/javacpp/Pointer;
.end method

.method public native hwaccel_picture_private(Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;
.end method

.method public native interlaced_frame()I
.end method

.method public native interlaced_frame(I)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;
.end method

.method public native key_frame()I
.end method

.method public native key_frame(I)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;
.end method

.method public native mb_type()Lcom/googlecode/javacpp/IntPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "uint32_t*"
        }
    .end annotation
.end method

.method public native mb_type(Lcom/googlecode/javacpp/IntPointer;)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;
.end method

.method public native mbskip_table()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "uint8_t*"
        }
    .end annotation
.end method

.method public native mbskip_table(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;
.end method

.method public native metadata(Lcom/googlecode/javacv/cpp/avutil$AVDictionary;)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;
.end method

.method public native metadata()Lcom/googlecode/javacv/cpp/avutil$AVDictionary;
.end method

.method public native motion_subsample_log2()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "uint8_t"
        }
    .end annotation
.end method

.method public native motion_subsample_log2(I)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;
.end method

.method public native motion_val(I)Lcom/googlecode/javacpp/PointerPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "int16_t (*)[2]"
        }
    .end annotation
.end method

.method public native motion_val(IIIS)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;
.end method

.method public native motion_val(ILcom/googlecode/javacpp/PointerPointer;)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;
.end method

.method public native motion_val(III)S
.end method

.method public native nb_samples()I
.end method

.method public native nb_samples(I)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;
.end method

.method public native opaque()Lcom/googlecode/javacpp/Pointer;
.end method

.method public native opaque(Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;
.end method

.method public native owner()Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native owner(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;
.end method

.method public native palette_has_changed()I
.end method

.method public native palette_has_changed(I)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;
.end method

.method public native pan_scan(Lcom/googlecode/javacv/cpp/avcodec$AVPanScan;)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;
.end method

.method public native pan_scan()Lcom/googlecode/javacv/cpp/avcodec$AVPanScan;
.end method

.method public native pict_type()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVPictureType"
        }
    .end annotation
.end method

.method public native pict_type(I)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;
.end method

.method public native pkt_dts()J
.end method

.method public native pkt_dts(J)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;
.end method

.method public native pkt_duration()J
.end method

.method public native pkt_duration(J)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;
.end method

.method public native pkt_pos()J
.end method

.method public native pkt_pos(J)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;
.end method

.method public native pkt_pts()J
.end method

.method public native pkt_pts(J)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;
.end method

.method public native pkt_size()I
.end method

.method public native pkt_size(I)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1222
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/avcodec$AVFrame;->position(I)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;
    .locals 1
    .parameter "position"

    .prologue
    .line 1231
    invoke-super {p0, p1}, Lcom/googlecode/javacv/cpp/avcodec$AVPicture;->position(I)Lcom/googlecode/javacv/cpp/avcodec$AVPicture;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    return-object v0
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacv/cpp/avcodec$AVPicture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1222
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/avcodec$AVFrame;->position(I)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    move-result-object v0

    return-object v0
.end method

.method public native pts()J
.end method

.method public native pts(J)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;
.end method

.method public native qscale_table()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "int8_t*"
        }
    .end annotation
.end method

.method public native qscale_table(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;
.end method

.method public native qscale_type()I
.end method

.method public native qscale_type(I)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;
.end method

.method public native qstride()I
.end method

.method public native qstride(I)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;
.end method

.method public native quality()I
.end method

.method public native quality(I)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;
.end method

.method public native ref_index(I)Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "int8_t*"
        }
    .end annotation
.end method

.method public native ref_index(ILcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;
.end method

.method public native reference()I
.end method

.method public native reference(I)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;
.end method

.method public native repeat_pict()I
.end method

.method public native repeat_pict(I)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;
.end method

.method public native sample_aspect_ratio(Lcom/googlecode/javacv/cpp/avutil$AVRational;)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;
.end method

.method public native sample_aspect_ratio()Lcom/googlecode/javacv/cpp/avutil$AVRational;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public native sample_rate()I
.end method

.method public native sample_rate(I)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;
.end method

.method public native thread_opaque()Lcom/googlecode/javacpp/Pointer;
.end method

.method public native thread_opaque(Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;
.end method

.method public native top_field_first()I
.end method

.method public native top_field_first(I)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;
.end method

.method public native type()I
.end method

.method public native type(I)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;
.end method

.method public native width()I
.end method

.method public native width(I)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;
.end method
