.class public Lcom/googlecode/javacv/cpp/videoInputLib$videoDevice;
.super Lcom/googlecode/javacpp/Pointer;
.source "videoInputLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/videoInputLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "videoDevice"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 135
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/videoInputLib$videoDevice;->allocate()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method


# virtual methods
.method public native NukeDownstream(Lcom/googlecode/javacv/cpp/videoInputLib$IBaseFilter;)V
.end method

.method public native autoReconnect(Z)Lcom/googlecode/javacv/cpp/videoInputLib$videoDevice;
.end method

.method public native autoReconnect()Z
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "bool"
        }
    .end annotation
.end method

.method public native connection()I
.end method

.method public native connection(I)Lcom/googlecode/javacv/cpp/videoInputLib$videoDevice;
.end method

.method public native destroyGraph()V
.end method

.method public native formatType()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "long"
        }
    .end annotation
.end method

.method public native formatType(I)Lcom/googlecode/javacv/cpp/videoInputLib$videoDevice;
.end method

.method public native height()I
.end method

.method public native height(I)Lcom/googlecode/javacv/cpp/videoInputLib$videoDevice;
.end method

.method public native myID()I
.end method

.method public native myID(I)Lcom/googlecode/javacv/cpp/videoInputLib$videoDevice;
.end method

.method public native nDeviceName()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "char*"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public native nFramesForReconnect()I
.end method

.method public native nFramesForReconnect(I)Lcom/googlecode/javacv/cpp/videoInputLib$videoDevice;
.end method

.method public native nFramesRunning()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned long"
        }
    .end annotation
.end method

.method public native nFramesRunning(I)Lcom/googlecode/javacv/cpp/videoInputLib$videoDevice;
.end method

.method public native pAmMediaType()Lcom/googlecode/javacv/cpp/videoInputLib$_AMMediaType;
.end method

.method public native pAmMediaType(Lcom/googlecode/javacv/cpp/videoInputLib$_AMMediaType;)Lcom/googlecode/javacv/cpp/videoInputLib$videoDevice;
.end method

.method public native pBuffer()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "char*"
        }
    .end annotation
.end method

.method public native pBuffer(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/videoInputLib$videoDevice;
.end method

.method public native pCaptureGraph()Lcom/googlecode/javacv/cpp/videoInputLib$ICaptureGraphBuilder2;
.end method

.method public native pCaptureGraph(Lcom/googlecode/javacv/cpp/videoInputLib$ICaptureGraphBuilder2;)Lcom/googlecode/javacv/cpp/videoInputLib$videoDevice;
.end method

.method public native pControl()Lcom/googlecode/javacv/cpp/videoInputLib$IMediaControl;
.end method

.method public native pControl(Lcom/googlecode/javacv/cpp/videoInputLib$IMediaControl;)Lcom/googlecode/javacv/cpp/videoInputLib$videoDevice;
.end method

.method public native pDestFilter()Lcom/googlecode/javacv/cpp/videoInputLib$IBaseFilter;
.end method

.method public native pDestFilter(Lcom/googlecode/javacv/cpp/videoInputLib$IBaseFilter;)Lcom/googlecode/javacv/cpp/videoInputLib$videoDevice;
.end method

.method public native pGrabber()Lcom/googlecode/javacv/cpp/videoInputLib$ISampleGrabber;
.end method

.method public native pGrabber(Lcom/googlecode/javacv/cpp/videoInputLib$ISampleGrabber;)Lcom/googlecode/javacv/cpp/videoInputLib$videoDevice;
.end method

.method public native pGrabberF()Lcom/googlecode/javacv/cpp/videoInputLib$IBaseFilter;
.end method

.method public native pGrabberF(Lcom/googlecode/javacv/cpp/videoInputLib$IBaseFilter;)Lcom/googlecode/javacv/cpp/videoInputLib$videoDevice;
.end method

.method public native pGraph()Lcom/googlecode/javacv/cpp/videoInputLib$IGraphBuilder;
.end method

.method public native pGraph(Lcom/googlecode/javacv/cpp/videoInputLib$IGraphBuilder;)Lcom/googlecode/javacv/cpp/videoInputLib$videoDevice;
.end method

.method public native pMediaEvent()Lcom/googlecode/javacv/cpp/videoInputLib$IMediaEventEx;
.end method

.method public native pMediaEvent(Lcom/googlecode/javacv/cpp/videoInputLib$IMediaEventEx;)Lcom/googlecode/javacv/cpp/videoInputLib$videoDevice;
.end method

.method public native pVideoInputFilter()Lcom/googlecode/javacv/cpp/videoInputLib$IBaseFilter;
.end method

.method public native pVideoInputFilter(Lcom/googlecode/javacv/cpp/videoInputLib$IBaseFilter;)Lcom/googlecode/javacv/cpp/videoInputLib$videoDevice;
.end method

.method public native pixels()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned char*"
        }
    .end annotation
.end method

.method public native pixels(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/videoInputLib$videoDevice;
.end method

.method public native readyToCapture(Z)Lcom/googlecode/javacv/cpp/videoInputLib$videoDevice;
.end method

.method public native readyToCapture()Z
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "bool"
        }
    .end annotation
.end method

.method public native requestedFrameTime()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "long"
        }
    .end annotation
.end method

.method public native requestedFrameTime(I)Lcom/googlecode/javacv/cpp/videoInputLib$videoDevice;
.end method

.method public native setSize(II)V
.end method

.method public native setupStarted(Z)Lcom/googlecode/javacv/cpp/videoInputLib$videoDevice;
.end method

.method public native setupStarted()Z
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "bool"
        }
    .end annotation
.end method

.method public native sgCallback()Lcom/googlecode/javacv/cpp/videoInputLib$SampleGrabberCallback;
.end method

.method public native sgCallback(Lcom/googlecode/javacv/cpp/videoInputLib$SampleGrabberCallback;)Lcom/googlecode/javacv/cpp/videoInputLib$videoDevice;
.end method

.method public native sizeSet(Z)Lcom/googlecode/javacv/cpp/videoInputLib$videoDevice;
.end method

.method public native sizeSet()Z
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "bool"
        }
    .end annotation
.end method

.method public native specificFormat(Z)Lcom/googlecode/javacv/cpp/videoInputLib$videoDevice;
.end method

.method public native specificFormat()Z
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "bool"
        }
    .end annotation
.end method

.method public native storeConn()I
.end method

.method public native storeConn(I)Lcom/googlecode/javacv/cpp/videoInputLib$videoDevice;
.end method

.method public native streamConf()Lcom/googlecode/javacv/cpp/videoInputLib$IAMStreamConfig;
.end method

.method public native streamConf(Lcom/googlecode/javacv/cpp/videoInputLib$IAMStreamConfig;)Lcom/googlecode/javacv/cpp/videoInputLib$videoDevice;
.end method

.method public native tryDiffSize(Z)Lcom/googlecode/javacv/cpp/videoInputLib$videoDevice;
.end method

.method public native tryDiffSize()Z
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "bool"
        }
    .end annotation
.end method

.method public native tryHeight()I
.end method

.method public native tryHeight(I)Lcom/googlecode/javacv/cpp/videoInputLib$videoDevice;
.end method

.method public native tryWidth()I
.end method

.method public native tryWidth(I)Lcom/googlecode/javacv/cpp/videoInputLib$videoDevice;
.end method

.method public native useCrossbar(Z)Lcom/googlecode/javacv/cpp/videoInputLib$videoDevice;
.end method

.method public native useCrossbar()Z
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "bool"
        }
    .end annotation
.end method

.method public native videoSize()I
.end method

.method public native videoSize(I)Lcom/googlecode/javacv/cpp/videoInputLib$videoDevice;
.end method

.method public native videoType()Lcom/googlecode/javacv/cpp/videoInputLib$GUID;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public native videoType(Lcom/googlecode/javacv/cpp/videoInputLib$GUID;)Lcom/googlecode/javacv/cpp/videoInputLib$videoDevice;
.end method

.method public native wDeviceName()Lcom/googlecode/javacpp/CharPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "WCHAR*"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public native width()I
.end method

.method public native width(I)Lcom/googlecode/javacv/cpp/videoInputLib$videoDevice;
.end method
