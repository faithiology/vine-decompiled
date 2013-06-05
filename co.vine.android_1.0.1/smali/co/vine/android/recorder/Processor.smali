.class public final Lco/vine/android/recorder/Processor;
.super Ljava/lang/Object;
.source "Processor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/recorder/Processor$Rotation;
    }
.end annotation


# instance fields
.field private mCommand:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mInvoker:Lco/vine/android/recorder/FFmpegInvoke;

.field private mMetaData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNumCores:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "ffmpeginvoke"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lco/vine/android/recorder/FFmpegInvoke;

    invoke-direct {v0, p1}, Lco/vine/android/recorder/FFmpegInvoke;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lco/vine/android/recorder/Processor;->mInvoker:Lco/vine/android/recorder/FFmpegInvoke;

    .line 31
    invoke-static {}, Lco/vine/android/recorder/Processor;->getNumCores()I

    move-result v0

    iput v0, p0, Lco/vine/android/recorder/Processor;->mNumCores:I

    .line 32
    return-void
.end method

.method private static getNumCores()I
    .locals 4

    .prologue
    .line 198
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v3, "/sys/devices/system/cpu/"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, dir:Ljava/io/File;
    new-instance v3, Lco/vine/android/recorder/Processor$1CpuFilter;

    invoke-direct {v3}, Lco/vine/android/recorder/Processor$1CpuFilter;-><init>()V

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 202
    .local v2, files:[Ljava/io/File;
    array-length v3, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .end local v2           #files:[Ljava/io/File;
    :goto_0
    return v3

    .line 203
    :catch_0
    move-exception v1

    .line 205
    .local v1, e:Ljava/lang/Exception;
    const/4 v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addInputPath(Ljava/lang/String;)Lco/vine/android/recorder/Processor;
    .locals 2
    .parameter "path"

    .prologue
    .line 52
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    const-string v1, "-i"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    return-object p0
.end method

.method public addMetaData(Ljava/lang/String;Ljava/lang/String;)Lco/vine/android/recorder/Processor;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 47
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mMetaData:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-object p0
.end method

.method public enableOverwrite()Lco/vine/android/recorder/Processor;
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    const-string v1, "-y"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    return-object p0
.end method

.method public enableShortest()Lco/vine/android/recorder/Processor;
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    const-string v1, "-shortest"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    return-object p0
.end method

.method public filterCrop(II)Lco/vine/android/recorder/Processor;
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 139
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mFilters:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "crop="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    return-object p0
.end method

.method public filterRotation(Lco/vine/android/recorder/Processor$Rotation;)Lco/vine/android/recorder/Processor;
    .locals 3
    .parameter "rotation"

    .prologue
    .line 144
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mFilters:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "transpose="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lco/vine/android/recorder/Processor$Rotation;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    return-object p0
.end method

.method public newCommand()Lco/vine/android/recorder/Processor;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lco/vine/android/recorder/Processor;->mMetaData:Ljava/util/HashMap;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/vine/android/recorder/Processor;->mFilters:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    .line 42
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    const-string v1, "ffmpeg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    return-object p0
.end method

.method public varargs process([Ljava/lang/String;)I
    .locals 1
    .parameter "args"

    .prologue
    .line 35
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mInvoker:Lco/vine/android/recorder/FFmpegInvoke;

    invoke-virtual {v0, p1}, Lco/vine/android/recorder/FFmpegInvoke;->run([Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public processToOutput(Ljava/lang/String;)I
    .locals 8
    .parameter "output"

    .prologue
    .line 154
    iget-object v5, p0, Lco/vine/android/recorder/Processor;->mFilters:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 155
    iget-object v5, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    const-string v6, "-vf"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .local v1, filter:Ljava/lang/StringBuilder;
    iget-object v5, p0, Lco/vine/android/recorder/Processor;->mFilters:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 158
    .local v0, args:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 161
    .end local v0           #args:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, filterArg:Ljava/lang/String;
    iget-object v5, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    .end local v1           #filter:Ljava/lang/StringBuilder;
    .end local v2           #filterArg:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v5, p0, Lco/vine/android/recorder/Processor;->mMetaData:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 165
    .local v4, key:Ljava/lang/String;
    iget-object v5, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    const-string v6, "-metadata"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v6, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lco/vine/android/recorder/Processor;->mMetaData:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 169
    .end local v4           #key:Ljava/lang/String;
    :cond_2
    iget v5, p0, Lco/vine/android/recorder/Processor;->mNumCores:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_3

    .line 173
    :cond_3
    iget-object v5, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v5, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 175
    .restart local v0       #args:Ljava/lang/String;
    const-string v5, "Add arg \'{}\'"

    invoke-static {v5, v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 177
    .end local v0           #args:Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    iget-object v6, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {p0, v5}, Lco/vine/android/recorder/Processor;->process([Ljava/lang/String;)I

    move-result v5

    return v5
.end method

.method public setAudioCopy()Lco/vine/android/recorder/Processor;
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    const-string v1, "-acodec"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    const-string v1, "copy"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    return-object p0
.end method

.method public setBsfA(Ljava/lang/String;)Lco/vine/android/recorder/Processor;
    .locals 2
    .parameter "format"

    .prologue
    .line 76
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    const-string v1, "-bsf:a"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    return-object p0
.end method

.method public setBsfV(Ljava/lang/String;)Lco/vine/android/recorder/Processor;
    .locals 2
    .parameter "format"

    .prologue
    .line 70
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    const-string v1, "-bsf:v"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    return-object p0
.end method

.method public setCopy()Lco/vine/android/recorder/Processor;
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    const-string v1, "-c"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    const-string v1, "copy"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    return-object p0
.end method

.method public setFormat(Ljava/lang/String;)Lco/vine/android/recorder/Processor;
    .locals 2
    .parameter "format"

    .prologue
    .line 93
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    const-string v1, "-f"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    return-object p0
.end method

.method public setFrames(JI)Lco/vine/android/recorder/Processor;
    .locals 5
    .parameter "duration"
    .parameter "frameRate"

    .prologue
    .line 123
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    const-string v1, "-vframes"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    long-to-double v1, p1

    const-wide v3, 0x408f400000000000L

    div-double/2addr v1, v3

    int-to-double v3, p3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    return-object p0
.end method

.method public setMap(Ljava/lang/String;)Lco/vine/android/recorder/Processor;
    .locals 2
    .parameter "value"

    .prologue
    .line 82
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    const-string v1, "-map"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    return-object p0
.end method

.method public setMetaData(Ljava/util/HashMap;)Lco/vine/android/recorder/Processor;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lco/vine/android/recorder/Processor;"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, mMetaData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lco/vine/android/recorder/Processor;->mMetaData:Ljava/util/HashMap;

    .line 150
    return-object p0
.end method

.method public setShortest()Lco/vine/android/recorder/Processor;
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    const-string v1, "-shortest"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    return-object p0
.end method

.method public setStart(J)Lco/vine/android/recorder/Processor;
    .locals 5
    .parameter "start"

    .prologue
    .line 111
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    const-string v1, "-ss"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    long-to-double v1, p1

    const-wide v3, 0x408f400000000000L

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    return-object p0
.end method

.method public setTotalDuration(J)Lco/vine/android/recorder/Processor;
    .locals 5
    .parameter "duration"

    .prologue
    .line 117
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    const-string v1, "-t"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    long-to-double v1, p1

    const-wide v3, 0x408f400000000000L

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    return-object p0
.end method

.method public setVideoCopy()Lco/vine/android/recorder/Processor;
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    const-string v1, "-vcodec"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    const-string v1, "copy"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    return-object p0
.end method

.method public useX264()Lco/vine/android/recorder/Processor;
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    const-string v1, "-vcodec"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    const-string v1, "libx264"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    return-object p0
.end method
