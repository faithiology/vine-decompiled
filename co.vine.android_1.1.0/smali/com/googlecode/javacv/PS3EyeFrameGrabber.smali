.class public Lcom/googlecode/javacv/PS3EyeFrameGrabber;
.super Lcom/googlecode/javacv/FrameGrabber;
.source "PS3EyeFrameGrabber.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/PS3EyeFrameGrabber$1;,
        Lcom/googlecode/javacv/PS3EyeFrameGrabber$Triggered;
    }
.end annotation


# static fields
.field private static loadingException:Lcom/googlecode/javacv/FrameGrabber$Exception;


# instance fields
.field camera:Lcl/eye/CLCamera;

.field cameraIndex:I

.field image_1ch:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

.field image_4ch:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

.field ipl_frame:[B

.field ps3_frame:[I

.field stat:Ljava/lang/String;

.field protected triggered:Lcom/googlecode/javacv/PS3EyeFrameGrabber$Triggered;

.field uuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    sput-object v0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->loadingException:Lcom/googlecode/javacv/FrameGrabber$Exception;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/googlecode/javacv/PS3EyeFrameGrabber;-><init>(I)V

    .line 115
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .parameter "cameraIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 121
    const/16 v0, 0x280

    const/16 v1, 0x1e0

    const/16 v2, 0x3c

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/googlecode/javacv/PS3EyeFrameGrabber;-><init>(IIII)V

    .line 122
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 6
    .parameter "cameraIndex"
    .parameter "imageWidth"
    .parameter "imageHeight"
    .parameter "framerate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 125
    const/16 v2, 0x280

    const/16 v3, 0x1e0

    const/16 v4, 0x3c

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/googlecode/javacv/PS3EyeFrameGrabber;-><init>(IIIILjava/lang/Object;)V

    .line 126
    return-void
.end method

.method public constructor <init>(IIIILjava/lang/Object;)V
    .locals 7
    .parameter "cameraIndex"
    .parameter "imageWidth"
    .parameter "imageHeight"
    .parameter "framerate"
    .parameter "applet"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 137
    invoke-direct {p0}, Lcom/googlecode/javacv/FrameGrabber;-><init>()V

    .line 94
    iput v6, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->cameraIndex:I

    .line 95
    iput-object v4, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->ps3_frame:[I

    .line 96
    iput-object v4, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->ipl_frame:[B

    .line 98
    iput-object v4, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->image_4ch:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 99
    iput-object v4, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->image_1ch:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 107
    sget-object v3, Lcom/googlecode/javacv/PS3EyeFrameGrabber$Triggered;->NO_TRIGGER:Lcom/googlecode/javacv/PS3EyeFrameGrabber$Triggered;

    iput-object v3, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->triggered:Lcom/googlecode/javacv/PS3EyeFrameGrabber$Triggered;

    .line 138
    iput-object v4, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->camera:Lcl/eye/CLCamera;

    .line 140
    invoke-static {}, Lcl/eye/CLCamera;->IsLibraryLoaded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 141
    new-instance v3, Lcom/googlecode/javacv/FrameGrabber$Exception;

    const-string v4, "CLEye multicam dll not loaded"

    invoke-direct {v3, v4}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 147
    :cond_0
    :try_start_0
    const-class v3, Lcl/eye/CLCamera;

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcl/eye/CLCamera;

    iput-object v3, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->camera:Lcl/eye/CLCamera;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    iput p1, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->cameraIndex:I

    .line 165
    const-string v3, "created"

    iput-object v3, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->stat:Ljava/lang/String;

    .line 166
    invoke-static {p1}, Lcl/eye/CLCamera;->cameraUUID(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->uuid:Ljava/lang/String;

    .line 168
    const/16 v3, 0x280

    if-ne p2, v3, :cond_1

    const/16 v3, 0x1e0

    if-eq p3, v3, :cond_2

    :cond_1
    const/16 v3, 0x140

    if-ne p2, v3, :cond_4

    const/16 v3, 0xf0

    if-ne p3, v3, :cond_4

    .line 170
    :cond_2
    invoke-virtual {p0, p2}, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->setImageWidth(I)V

    .line 171
    invoke-virtual {p0, p3}, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->setImageHeight(I)V

    .line 175
    sget-object v3, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->COLOR:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    invoke-virtual {p0, v3}, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->setImageMode(Lcom/googlecode/javacv/FrameGrabber$ImageMode;)V

    .line 176
    int-to-double v3, p4

    invoke-virtual {p0, v3, v4}, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->setFrameRate(D)V

    .line 177
    const/16 v3, 0x3e8

    div-int/2addr v3, p4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->setTimeout(I)V

    .line 178
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->setBitsPerPixel(I)V

    .line 179
    invoke-virtual {p0, v6}, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->setTriggerMode(Z)V

    .line 180
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->setNumBuffers(I)V

    .line 181
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, t:Ljava/lang/Throwable;
    if-nez p5, :cond_3

    .line 152
    :try_start_1
    const-class v3, Lsun/misc/Unsafe;

    const-string v4, "theUnsafe"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 153
    .local v2, unsafeField:Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 154
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/misc/Unsafe;

    .line 155
    .local v1, unsafe:Lsun/misc/Unsafe;
    const-class v3, Lcl/eye/CLCamera;

    invoke-virtual {v1, v3}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcl/eye/CLCamera;

    iput-object v3, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->camera:Lcl/eye/CLCamera;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 160
    .end local v1           #unsafe:Lsun/misc/Unsafe;
    .end local v2           #unsafeField:Ljava/lang/reflect/Field;
    :catch_1
    move-exception v0

    .line 161
    new-instance v3, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to construct "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Lcom/googlecode/javacv/PS3EyeFrameGrabber;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 157
    :cond_3
    :try_start_2
    const-class v3, Lcl/eye/CLCamera;

    invoke-virtual {v3}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p5, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcl/eye/CLCamera;

    iput-object v3, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->camera:Lcl/eye/CLCamera;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 173
    .end local v0           #t:Ljava/lang/Throwable;
    :cond_4
    new-instance v3, Lcom/googlecode/javacv/FrameGrabber$Exception;

    const-string v4, "Only 640x480 or 320x240 images supported"

    invoke-direct {v3, v4}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static createDefault(I)Lcom/googlecode/javacv/PS3EyeFrameGrabber;
    .locals 1
    .parameter "deviceNumber"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;

    invoke-direct {v0, p0}, Lcom/googlecode/javacv/PS3EyeFrameGrabber;-><init>(I)V

    return-object v0
.end method

.method public static createDefault(Ljava/io/File;)Lcom/googlecode/javacv/PS3EyeFrameGrabber;
    .locals 1
    .parameter "deviceFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public static createDefault(Ljava/lang/String;)Lcom/googlecode/javacv/PS3EyeFrameGrabber;
    .locals 1
    .parameter "devicePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getCameraCount()I
    .locals 1

    .prologue
    .line 187
    invoke-static {}, Lcl/eye/CLCamera;->cameraCount()I

    move-result v0

    return v0
.end method

.method public static getDeviceDescriptions()[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 68
    invoke-static {}, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->tryLoad()V

    .line 69
    invoke-static {}, Lcl/eye/CLCamera;->cameraCount()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    .line 70
    .local v0, descriptions:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 71
    invoke-static {v1}, Lcl/eye/CLCamera;->cameraUUID(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    :cond_0
    return-object v0
.end method

.method public static listPS3Cameras()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 196
    invoke-static {}, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->getCameraCount()I

    move-result v0

    .line 198
    .local v0, no:I
    if-lez v0, :cond_0

    .line 199
    new-array v1, v0, [Ljava/lang/String;

    .line 200
    .local v1, uuids:[Ljava/lang/String;
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-static {v0}, Lcl/eye/CLCamera;->cameraUUID(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 203
    .end local v1           #uuids:[Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .parameter "argv"

    .prologue
    .line 396
    invoke-static {}, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->listPS3Cameras()[Ljava/lang/String;

    move-result-object v1

    .line 397
    .local v1, uuids:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 398
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 397
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 399
    :cond_0
    return-void
.end method

.method public static tryLoad()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 82
    sget-object v1, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->loadingException:Lcom/googlecode/javacv/FrameGrabber$Exception;

    if-eqz v1, :cond_0

    .line 83
    sget-object v1, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->loadingException:Lcom/googlecode/javacv/FrameGrabber$Exception;

    throw v1

    .line 86
    :cond_0
    :try_start_0
    invoke-static {}, Lcl/eye/CLCamera;->IsLibraryLoaded()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, t:Ljava/lang/Throwable;
    new-instance v1, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/googlecode/javacv/PS3EyeFrameGrabber;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sput-object v1, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->loadingException:Lcom/googlecode/javacv/FrameGrabber$Exception;

    throw v1
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->release()V

    .line 361
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 364
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 365
    invoke-virtual {p0}, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->release()V

    .line 366
    return-void
.end method

.method public getCamera()Lcl/eye/CLCamera;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->camera:Lcl/eye/CLCamera;

    return-object v0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public grab()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, img:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    sget-object v1, Lcom/googlecode/javacv/PS3EyeFrameGrabber$1;->$SwitchMap$com$googlecode$javacv$PS3EyeFrameGrabber$Triggered:[I

    iget-object v2, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->triggered:Lcom/googlecode/javacv/PS3EyeFrameGrabber$Triggered;

    invoke-virtual {v2}, Lcom/googlecode/javacv/PS3EyeFrameGrabber$Triggered;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 282
    new-instance v1, Lcom/googlecode/javacv/FrameGrabber$Exception;

    const-string v2, "Int. error - unknown triggering state"

    invoke-direct {v1, v2}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 272
    :pswitch_0
    invoke-virtual {p0}, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->grab_RGB4()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v0

    .line 284
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    sget-object v2, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->GRAY:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    if-ne v1, v2, :cond_0

    .line 285
    iget-object v1, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->image_1ch:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvCvtColor(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V

    .line 286
    iget-object v0, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->image_1ch:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    :cond_0
    move-object v1, v0

    .line 288
    :goto_1
    return-object v1

    .line 275
    :pswitch_1
    sget-object v1, Lcom/googlecode/javacv/PS3EyeFrameGrabber$Triggered;->NO_TRIGGER:Lcom/googlecode/javacv/PS3EyeFrameGrabber$Triggered;

    iput-object v1, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->triggered:Lcom/googlecode/javacv/PS3EyeFrameGrabber$Triggered;

    .line 276
    iget-object v1, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->ps3_frame:[I

    invoke-virtual {p0, v1}, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->makeImage([I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v0

    .line 277
    goto :goto_0

    .line 279
    :pswitch_2
    sget-object v1, Lcom/googlecode/javacv/PS3EyeFrameGrabber$Triggered;->NO_TRIGGER:Lcom/googlecode/javacv/PS3EyeFrameGrabber$Triggered;

    iput-object v1, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->triggered:Lcom/googlecode/javacv/PS3EyeFrameGrabber$Triggered;

    .line 280
    const/4 v1, 0x0

    goto :goto_1

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public grab_RGB4()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 4

    .prologue
    .line 253
    iget-object v0, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->camera:Lcl/eye/CLCamera;

    iget-object v1, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->ps3_frame:[I

    iget v2, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->timeout:I

    invoke-virtual {v0, v1, v2}, Lcl/eye/CLCamera;->getCameraFrame([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->timestamp:J

    .line 255
    iget-object v0, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->image_4ch:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->ps3_frame:[I

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 256
    iget-object v0, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->image_4ch:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 258
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public grab_raw()[I
    .locals 3

    .prologue
    .line 224
    iget-object v0, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->camera:Lcl/eye/CLCamera;

    iget-object v1, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->ps3_frame:[I

    iget v2, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->timeout:I

    invoke-virtual {v0, v1, v2}, Lcl/eye/CLCamera;->getCameraFrame([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->ps3_frame:[I

    .line 227
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeImage([I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 2
    .parameter "frame"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->image_4ch:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->ps3_frame:[I

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 215
    iget-object v0, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->image_4ch:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    return-object v0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 336
    iget-object v0, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->camera:Lcl/eye/CLCamera;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->camera:Lcl/eye/CLCamera;

    invoke-virtual {v0}, Lcl/eye/CLCamera;->dispose()V

    .line 338
    iput-object v1, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->camera:Lcl/eye/CLCamera;

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->image_4ch:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->image_4ch:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->release()V

    .line 343
    iput-object v1, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->image_4ch:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->image_1ch:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    if-eqz v0, :cond_2

    .line 347
    iget-object v0, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->image_1ch:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->release()V

    .line 348
    iput-object v1, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->image_1ch:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 351
    :cond_2
    iget-object v0, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->ipl_frame:[B

    if-eqz v0, :cond_3

    iput-object v1, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->ipl_frame:[B

    .line 352
    :cond_3
    iget-object v0, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->ps3_frame:[I

    if-eqz v0, :cond_4

    iput-object v1, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->ps3_frame:[I

    .line 354
    :cond_4
    const-string v0, "released"

    iput-object v0, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->stat:Ljava/lang/String;

    .line 355
    return-void
.end method

.method public start()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 299
    iget-object v1, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->ps3_frame:[I

    if-nez v1, :cond_0

    .line 300
    iget v1, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->imageWidth:I

    iget v2, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->imageHeight:I

    mul-int/2addr v1, v2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->ps3_frame:[I

    .line 301
    iget v1, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->imageWidth:I

    iget v2, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->imageHeight:I

    const/4 v3, 0x4

    invoke-static {v1, v2, v4, v3}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v1

    iput-object v1, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->image_4ch:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 302
    iget v1, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->imageWidth:I

    iget v2, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->imageHeight:I

    const/4 v3, 0x1

    invoke-static {v1, v2, v4, v3}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v1

    iput-object v1, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->image_1ch:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 305
    :cond_0
    iget-object v3, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->camera:Lcl/eye/CLCamera;

    iget v4, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->cameraIndex:I

    iget-object v1, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    sget-object v2, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->GRAY:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    if-ne v1, v2, :cond_1

    sget v1, Lcl/eye/CLCamera;->CLEYE_MONO_PROCESSED:I

    :goto_0
    iget v2, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->imageWidth:I

    const/16 v5, 0x140

    if-ne v2, v5, :cond_2

    iget v2, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->imageHeight:I

    const/16 v5, 0xf0

    if-ne v2, v5, :cond_2

    sget v2, Lcl/eye/CLCamera;->CLEYE_QVGA:I

    :goto_1
    iget-wide v5, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->frameRate:D

    double-to-int v5, v5

    invoke-virtual {v3, v4, v1, v2, v5}, Lcl/eye/CLCamera;->createCamera(IIII)Z

    move-result v0

    .line 311
    .local v0, b:Z
    if-nez v0, :cond_3

    new-instance v1, Lcom/googlecode/javacv/FrameGrabber$Exception;

    const-string v2, "Low level createCamera() failed"

    invoke-direct {v1, v2}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 305
    .end local v0           #b:Z
    :cond_1
    sget v1, Lcl/eye/CLCamera;->CLEYE_COLOR_PROCESSED:I

    goto :goto_0

    :cond_2
    sget v2, Lcl/eye/CLCamera;->CLEYE_VGA:I

    goto :goto_1

    .line 313
    .restart local v0       #b:Z
    :cond_3
    iget-object v1, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->camera:Lcl/eye/CLCamera;

    invoke-virtual {v1}, Lcl/eye/CLCamera;->startCamera()Z

    move-result v0

    .line 314
    if-nez v0, :cond_4

    new-instance v1, Lcom/googlecode/javacv/FrameGrabber$Exception;

    const-string v2, "Camera start() failed"

    invoke-direct {v1, v2}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 315
    :cond_4
    const-string v1, "started"

    iput-object v1, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->stat:Ljava/lang/String;

    .line 316
    return-void
.end method

.method public stop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 324
    iget-object v1, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->camera:Lcl/eye/CLCamera;

    invoke-virtual {v1}, Lcl/eye/CLCamera;->stopCamera()Z

    move-result v0

    .line 325
    .local v0, b:Z
    if-eqz v0, :cond_0

    const-string v1, "stopped"

    iput-object v1, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->stat:Ljava/lang/String;

    .line 327
    return-void

    .line 326
    :cond_0
    new-instance v1, Lcom/googlecode/javacv/FrameGrabber$Exception;

    const-string v2, "Camera stop() failed"

    invoke-direct {v1, v2}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UUID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->stat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->timeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->camera:Lcl/eye/CLCamera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->camera:Lcl/eye/CLCamera;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "<no camera>"

    goto :goto_0
.end method

.method public trigger()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 231
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->numBuffers:I

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->grab_raw()[I

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    :cond_0
    invoke-virtual {p0}, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->grab_raw()[I

    move-result-object v1

    iput-object v1, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->ps3_frame:[I

    if-eqz v1, :cond_1

    .line 236
    sget-object v1, Lcom/googlecode/javacv/PS3EyeFrameGrabber$Triggered;->HAS_FRAME:Lcom/googlecode/javacv/PS3EyeFrameGrabber$Triggered;

    iput-object v1, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->triggered:Lcom/googlecode/javacv/PS3EyeFrameGrabber$Triggered;

    .line 237
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->timestamp:J

    .line 241
    :goto_1
    return-void

    .line 240
    :cond_1
    sget-object v1, Lcom/googlecode/javacv/PS3EyeFrameGrabber$Triggered;->NO_FRAME:Lcom/googlecode/javacv/PS3EyeFrameGrabber$Triggered;

    iput-object v1, p0, Lcom/googlecode/javacv/PS3EyeFrameGrabber;->triggered:Lcom/googlecode/javacv/PS3EyeFrameGrabber$Triggered;

    goto :goto_1
.end method
