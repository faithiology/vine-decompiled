.class public Lco/vine/android/recorder/FFmpegInvoke;
.super Ljava/lang/Object;
.source "FFmpegInvoke.java"


# instance fields
.field private mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/libencoding.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/recorder/FFmpegInvoke;->mPath:Ljava/lang/String;

    .line 14
    return-void
.end method

.method private native run(Ljava/lang/String;[Ljava/lang/String;)I
.end method


# virtual methods
.method public native YUVtoRBG([I[BII)V
.end method

.method public run([Ljava/lang/String;)I
    .locals 1
    .parameter "args"

    .prologue
    .line 17
    iget-object v0, p0, Lco/vine/android/recorder/FFmpegInvoke;->mPath:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lco/vine/android/recorder/FFmpegInvoke;->run(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
