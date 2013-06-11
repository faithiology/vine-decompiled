.class public Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;
.super Lcom/googlecode/javacpp/Pointer;
.source "videoInputLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/videoInputLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "videoInput"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 193
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;->allocate()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method public static native getDeviceName(I)Ljava/lang/String;
.end method

.method public static listDevices()I
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;->listDevices(Z)I

    move-result v0

    return v0
.end method

.method public static native listDevices(Z)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
.end method

.method public static native setVerbose(Z)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
.end method


# virtual methods
.method public native devicesFound()I
.end method

.method public native devicesFound(I)Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;
.end method

.method public native getHeight(I)I
.end method

.method public getPixels(I)Lcom/googlecode/javacpp/BytePointer;
    .locals 2
    .parameter "deviceID"

    .prologue
    .line 217
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;->getPixels(IZZ)Lcom/googlecode/javacpp/BytePointer;

    move-result-object v0

    return-object v0
.end method

.method public native getPixels(IZZ)Lcom/googlecode/javacpp/BytePointer;
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned char*"
        }
    .end annotation
.end method

.method public getPixels(ILcom/googlecode/javacpp/BytePointer;)Z
    .locals 2
    .parameter "id"
    .parameter "pixels"

    .prologue
    .line 221
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;->getPixels(ILcom/googlecode/javacpp/BytePointer;ZZ)Z

    move-result v0

    return v0
.end method

.method public native getPixels(ILcom/googlecode/javacpp/BytePointer;ZZ)Z
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
.end method

.method public native getSize(I)I
.end method

.method public native getVideoSettingCamera(II[I[I[I[I[I[I)Z
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "long"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "long*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "long*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "long*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "long*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "long*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "long*"
            }
        .end annotation
    .end parameter
.end method

.method public native getVideoSettingFilter(II[I[I[I[I[I[I)Z
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "long"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "long*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "long*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "long*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "long*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "long*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "long*"
            }
        .end annotation
    .end parameter
.end method

.method public native getWidth(I)I
.end method

.method public native isDeviceSetup(I)Z
.end method

.method public native isFrameNew(I)Z
.end method

.method public native propBacklightCompensation()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "long"
        }
    .end annotation
.end method

.method public native propBacklightCompensation(I)Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;
.end method

.method public native propBrightness()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "long"
        }
    .end annotation
.end method

.method public native propBrightness(I)Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;
.end method

.method public native propColorEnable()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "long"
        }
    .end annotation
.end method

.method public native propColorEnable(I)Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;
.end method

.method public native propContrast()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "long"
        }
    .end annotation
.end method

.method public native propContrast(I)Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;
.end method

.method public native propExposure()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "long"
        }
    .end annotation
.end method

.method public native propExposure(I)Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;
.end method

.method public native propFocus()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "long"
        }
    .end annotation
.end method

.method public native propFocus(I)Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;
.end method

.method public native propGain()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "long"
        }
    .end annotation
.end method

.method public native propGain(I)Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;
.end method

.method public native propGamma()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "long"
        }
    .end annotation
.end method

.method public native propGamma(I)Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;
.end method

.method public native propHue()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "long"
        }
    .end annotation
.end method

.method public native propHue(I)Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;
.end method

.method public native propIris()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "long"
        }
    .end annotation
.end method

.method public native propIris(I)Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;
.end method

.method public native propPan()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "long"
        }
    .end annotation
.end method

.method public native propPan(I)Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;
.end method

.method public native propRoll()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "long"
        }
    .end annotation
.end method

.method public native propRoll(I)Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;
.end method

.method public native propSaturation()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "long"
        }
    .end annotation
.end method

.method public native propSaturation(I)Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;
.end method

.method public native propSharpness()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "long"
        }
    .end annotation
.end method

.method public native propSharpness(I)Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;
.end method

.method public native propTilt()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "long"
        }
    .end annotation
.end method

.method public native propTilt(I)Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;
.end method

.method public native propWhiteBalance()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "long"
        }
    .end annotation
.end method

.method public native propWhiteBalance(I)Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;
.end method

.method public native propZoom()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "long"
        }
    .end annotation
.end method

.method public native propZoom(I)Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;
.end method

.method public native restartDevice(I)Z
.end method

.method public native setAutoReconnectOnFreeze(IZI)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public native setFormat(II)Z
.end method

.method public native setIdealFramerate(II)V
.end method

.method public native setUseCallback(Z)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
.end method

.method public native setVideoSettingCamera(IIIIZ)Z
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "long"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "long"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "long"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
.end method

.method public native setVideoSettingCameraPct(IIFI)Z
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "long"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "long"
            }
        .end annotation
    .end parameter
.end method

.method public native setVideoSettingFilter(IIIIZ)Z
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "long"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "long"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "long"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
.end method

.method public native setVideoSettingFilterPct(IIFI)Z
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "long"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "long"
            }
        .end annotation
    .end parameter
.end method

.method public native setupDevice(I)Z
.end method

.method public native setupDevice(II)Z
.end method

.method public native setupDevice(III)Z
.end method

.method public native setupDevice(IIII)Z
.end method

.method public native showSettingsWindow(I)V
.end method

.method public native stopDevice(I)V
.end method
