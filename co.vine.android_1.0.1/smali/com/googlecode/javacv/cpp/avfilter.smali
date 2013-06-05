.class public Lcom/googlecode/javacv/cpp/avfilter;
.super Ljava/lang/Object;
.source "avfilter.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Properties;
    value = {
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            cinclude = {
                "<libavfilter/avfilter.h>",
                "<libavfilter/buffersink.h>",
                "<libavfilter/buffersrc.h>",
                "<libavfilter/avcodec.h>",
                "<libavfilter/avfiltergraph.h>"
            }
            define = {
                "__STDC_CONSTANT_MACROS"
            }
            includepath = {
                "/usr/local/include/ffmpeg/:/usr/local/include/:/opt/local/include/ffmpeg/:/opt/local/include/:/usr/include/ffmpeg/"
            }
            link = {
                "avfilter@.3",
                "swscale@.2",
                "swresample@.0",
                "postproc@.52",
                "avformat@.54",
                "avcodec@.54",
                "avutil@.52"
            }
            linkpath = {
                "/usr/local/lib/:/usr/local/lib64/:/opt/local/lib/:/opt/local/lib64/"
            }
        .end subannotation,
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            includepath = {
                "C:/MinGW/local/include/ffmpeg/;C:/MinGW/include/ffmpeg/;C:/MinGW/local/include/;src/main/resources/com/googlecode/javacv/cpp/"
            }
            linkpath = {
                "C:/MinGW/local/lib/;C:/MinGW/lib/"
            }
            preload = {
                "avfilter-3"
            }
            preloadpath = {
                "C:/MinGW/local/bin/;C:/MinGW/bin/"
            }
            value = {
                "windows"
            }
        .end subannotation,
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            includepath = {
                "../include/"
            }
            linkpath = {
                "../lib/"
            }
            value = {
                "android"
            }
        .end subannotation
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/cpp/avfilter$AVFilterInOut;,
        Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;,
        Lcom/googlecode/javacv/cpp/avfilter$AVABufferSinkParams;,
        Lcom/googlecode/javacv/cpp/avfilter$AVBufferSinkParams;,
        Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;,
        Lcom/googlecode/javacv/cpp/avfilter$AVFilterChannelLayouts;,
        Lcom/googlecode/javacv/cpp/avfilter$AVFilterPool;,
        Lcom/googlecode/javacv/cpp/avfilter$AVFilterCommand;,
        Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;,
        Lcom/googlecode/javacv/cpp/avfilter$AVFilter;,
        Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad;,
        Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRef;,
        Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRefVideoProps;,
        Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRefAudioProps;,
        Lcom/googlecode/javacv/cpp/avfilter$AVFilterBuffer;
    }
.end annotation


# static fields
.field public static final AVFILTER_AUTO_CONVERT_ALL:I = 0x0

.field public static final AVFILTER_AUTO_CONVERT_NONE:I = -0x1

.field public static final AVFILTER_CMD_FLAG_FAST:I = 0x2

.field public static final AVFILTER_CMD_FLAG_ONE:I = 0x1

.field public static final AV_BUFFERSINK_FLAG_NO_REQUEST:I = 0x2

.field public static final AV_BUFFERSINK_FLAG_PEEK:I = 0x1

.field public static final AV_BUFFERSRC_FLAG_NO_CHECK_FORMAT:I = 0x1

.field public static final AV_BUFFERSRC_FLAG_NO_COPY:I = 0x2

.field public static final AV_BUFFERSRC_FLAG_PUSH:I = 0x4

.field public static final AV_PERM_ALIGN:I = 0x40

.field public static final AV_PERM_NEG_LINESIZES:I = 0x20

.field public static final AV_PERM_PRESERVE:I = 0x4

.field public static final AV_PERM_READ:I = 0x1

.field public static final AV_PERM_REUSE:I = 0x8

.field public static final AV_PERM_REUSE2:I = 0x10

.field public static final AV_PERM_WRITE:I = 0x2

#the value of this static final field might be set in the static constructor
.field public static final LIBAVFILTER_BUILD:I = 0x0

.field public static final LIBAVFILTER_IDENT:Ljava/lang/String; = null

.field public static final LIBAVFILTER_VERSION:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field public static final LIBAVFILTER_VERSION_INT:I = 0x0

.field public static final LIBAVFILTER_VERSION_MAJOR:I = 0x3

.field public static final LIBAVFILTER_VERSION_MICRO:I = 0x67

.field public static final LIBAVFILTER_VERSION_MINOR:I = 0x2a


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x67

    const/16 v2, 0x2a

    const/4 v1, 0x3

    .line 79
    const-class v0, Lcom/googlecode/javacv/cpp/avformat;

    invoke-static {v0}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    const-class v0, Lcom/googlecode/javacv/cpp/postproc;

    invoke-static {v0}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    const-class v0, Lcom/googlecode/javacv/cpp/swresample;

    invoke-static {v0}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    const-class v0, Lcom/googlecode/javacv/cpp/swscale;

    invoke-static {v0}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    .line 91
    invoke-static {v1, v2, v3}, Lcom/googlecode/javacv/cpp/avutil;->AV_VERSION_INT(III)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avfilter;->LIBAVFILTER_VERSION_INT:I

    .line 94
    invoke-static {v1, v2, v3}, Lcom/googlecode/javacv/cpp/avutil;->AV_VERSION(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacv/cpp/avfilter;->LIBAVFILTER_VERSION:Ljava/lang/String;

    .line 97
    sget v0, Lcom/googlecode/javacv/cpp/avfilter;->LIBAVFILTER_VERSION_INT:I

    sput v0, Lcom/googlecode/javacv/cpp/avfilter;->LIBAVFILTER_BUILD:I

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Lavu"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/googlecode/javacv/cpp/avfilter;->LIBAVFILTER_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacv/cpp/avfilter;->LIBAVFILTER_IDENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1358
    return-void
.end method

.method public static native av_abuffersink_params_alloc()Lcom/googlecode/javacv/cpp/avfilter$AVABufferSinkParams;
.end method

.method public static native av_buffersink_get_buffer_ref(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRef;I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_buffersink_get_frame_rate(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;)Lcom/googlecode/javacv/cpp/avutil$AVRational;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public static native av_buffersink_params_alloc()Lcom/googlecode/javacv/cpp/avfilter$AVBufferSinkParams;
.end method

.method public static native av_buffersink_poll_frame(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;)I
.end method

.method public static native av_buffersink_read(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRef;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native av_buffersink_read_samples(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRef;I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_buffersink_set_frame_size(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;I)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_buffersrc_add_frame(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;Lcom/googlecode/javacv/cpp/avcodec$AVFrame;I)I
.end method

.method public static native av_buffersrc_add_ref(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRef;I)I
.end method

.method public static native av_buffersrc_buffer(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRef;)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native av_buffersrc_get_nb_failed_requests(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned"
        }
    .end annotation
.end method

.method public static native av_buffersrc_write_frame(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;Lcom/googlecode/javacv/cpp/avcodec$AVFrame;)I
.end method

.method public static native av_filter_next(Lcom/googlecode/javacv/cpp/avfilter$AVFilter;)Lcom/googlecode/javacv/cpp/avfilter$AVFilter;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
    .end annotation
.end method

.method public static native avfilter_config_links(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;)I
.end method

.method public static native avfilter_configuration()Ljava/lang/String;
.end method

.method public static native avfilter_copy_buf_props(Lcom/googlecode/javacv/cpp/avcodec$AVFrame;Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRef;)I
.end method

.method public static native avfilter_copy_buffer_ref_props(Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRef;Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRef;)V
.end method

.method public static native avfilter_copy_frame_props(Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRef;Lcom/googlecode/javacv/cpp/avcodec$AVFrame;)I
.end method

.method public static native avfilter_fill_frame_from_audio_buffer_ref(Lcom/googlecode/javacv/cpp/avcodec$AVFrame;Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRef;)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native avfilter_fill_frame_from_buffer_ref(Lcom/googlecode/javacv/cpp/avcodec$AVFrame;Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRef;)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native avfilter_fill_frame_from_video_buffer_ref(Lcom/googlecode/javacv/cpp/avcodec$AVFrame;Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRef;)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native avfilter_free(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;)V
.end method

.method public static native avfilter_get_audio_buffer_ref_from_arrays(Lcom/googlecode/javacpp/PointerPointer;IIIIJ)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRef;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint64_t"
            }
        .end annotation
    .end parameter
.end method

.method public static native avfilter_get_audio_buffer_ref_from_arrays_channels(Lcom/googlecode/javacpp/PointerPointer;IIIIIJ)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRef;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "enum AVSampleFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint64_t"
            }
        .end annotation
    .end parameter
.end method

.method public static native avfilter_get_audio_buffer_ref_from_frame(Lcom/googlecode/javacv/cpp/avcodec$AVFrame;I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRef;
.end method

.method public static native avfilter_get_buffer_ref_from_frame(ILcom/googlecode/javacv/cpp/avcodec$AVFrame;I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRef;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVMediaType"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native avfilter_get_by_name(Ljava/lang/String;)Lcom/googlecode/javacv/cpp/avfilter$AVFilter;
.end method

.method public static native avfilter_get_class()Lcom/googlecode/javacv/cpp/avutil$AVClass;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public static native avfilter_get_video_buffer_ref_from_arrays(Lcom/googlecode/javacpp/PointerPointer;[IIIII)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRef;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
.end method

.method public static native avfilter_get_video_buffer_ref_from_frame(Lcom/googlecode/javacv/cpp/avcodec$AVFrame;I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRef;
.end method

.method public static native avfilter_graph_add_filter(Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;)I
.end method

.method public static native avfilter_graph_alloc()Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;
.end method

.method public static native avfilter_graph_config(Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;Lcom/googlecode/javacpp/Pointer;)I
.end method

.method public static native avfilter_graph_create_filter(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;Lcom/googlecode/javacv/cpp/avfilter$AVFilter;Ljava/lang/String;Ljava/lang/String;Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native avfilter_graph_dump(Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;Ljava/lang/String;)Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "char*"
        }
    .end annotation
.end method

.method public static native avfilter_graph_free(Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native avfilter_graph_get_filter(Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;Ljava/lang/String;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
.end method

.method public static native avfilter_graph_parse(Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;Ljava/lang/String;Lcom/googlecode/javacv/cpp/avfilter$AVFilterInOut;Lcom/googlecode/javacv/cpp/avfilter$AVFilterInOut;Lcom/googlecode/javacpp/Pointer;)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native avfilter_graph_parse2(Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;Ljava/lang/String;Lcom/googlecode/javacv/cpp/avfilter$AVFilterInOut;Lcom/googlecode/javacv/cpp/avfilter$AVFilterInOut;)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native avfilter_graph_queue_command(Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ID)I
.end method

.method public static native avfilter_graph_request_oldest(Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;)I
.end method

.method public static native avfilter_graph_send_command(Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BII)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native avfilter_graph_set_auto_convert(Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;I)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned"
            }
        .end annotation
    .end parameter
.end method

.method public static native avfilter_init_filter(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;Ljava/lang/String;Lcom/googlecode/javacpp/Pointer;)I
.end method

.method public static native avfilter_inout_alloc()Lcom/googlecode/javacv/cpp/avfilter$AVFilterInOut;
.end method

.method public static native avfilter_inout_free(Lcom/googlecode/javacv/cpp/avfilter$AVFilterInOut;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native avfilter_insert_filter(Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;II)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned"
            }
        .end annotation
    .end parameter
.end method

.method public static native avfilter_license()Ljava/lang/String;
.end method

.method public static native avfilter_link(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;ILcom/googlecode/javacv/cpp/avfilter$AVFilterContext;I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned"
            }
        .end annotation
    .end parameter
.end method

.method public static native avfilter_link_free(Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native avfilter_link_get_channels(Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;)I
.end method

.method public static native avfilter_link_set_closed(Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;I)V
.end method

.method public static native avfilter_open(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;Lcom/googlecode/javacv/cpp/avfilter$AVFilter;Ljava/lang/String;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native avfilter_pad_get_name(Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad;I)Ljava/lang/String;
.end method

.method public static native avfilter_pad_get_type(Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad;I)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVMediaType"
        }
    .end annotation
.end method

.method public static native avfilter_process_command(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;Ljava/lang/String;Ljava/lang/String;[BII)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native avfilter_ref_buffer(Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRef;I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRef;
.end method

.method public static native avfilter_ref_get_channels(Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRef;)I
.end method

.method public static native avfilter_register(Lcom/googlecode/javacv/cpp/avfilter$AVFilter;)I
.end method

.method public static native avfilter_register_all()V
.end method

.method public static native avfilter_uninit()V
.end method

.method public static native avfilter_unref_buffer(Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRef;)V
.end method

.method public static native avfilter_unref_bufferp(Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRef;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native avfilter_version()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned"
        }
    .end annotation
.end method
