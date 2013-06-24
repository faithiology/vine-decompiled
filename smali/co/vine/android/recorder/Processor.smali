.class public final Lco/vine/android/recorder/Processor;
.super Ljava/lang/Object;
.source "Processor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/recorder/Processor$Preset;,
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
    .line 21
    const-string v0, "ffmpeginvoke"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "nativeDir"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lco/vine/android/recorder/FFmpegInvoke;

    invoke-direct {v0, p1}, Lco/vine/android/recorder/FFmpegInvoke;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lco/vine/android/recorder/Processor;->mInvoker:Lco/vine/android/recorder/FFmpegInvoke;

    .line 32
    invoke-static {}, Lco/vine/android/recorder/Processor;->getNumCores()I

    move-result v0

    iput v0, p0, Lco/vine/android/recorder/Processor;->mNumCores:I

    .line 33
    return-void
.end method

.method private static getNumCores()I
    .locals 4

    .prologue
    .line 216
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v3, "/sys/devices/system/cpu/"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    .local v0, dir:Ljava/io/File;
    new-instance v3, Lco/vine/android/recorder/Processor$1CpuFilter;

    invoke-direct {v3}, Lco/vine/android/recorder/Processor$1CpuFilter;-><init>()V

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 220
    .local v2, files:[Ljava/io/File;
    array-length v3, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .end local v2           #files:[Ljava/io/File;
    :goto_0
    return v3

    .line 221
    :catch_0
    move-exception v1

    .line 223
    .local v1, e:Ljava/lang/Exception;
    const/4 v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addInputPath(Ljava/lang/String;)Lco/vine/android/recorder/Processor;
    .locals 2
    .parameter "path"

    .prologue
    .line 53
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    const-string v1, "-i"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    return-object p0
.end method

.method public addMetaData(Ljava/lang/String;Ljava/lang/String;)Lco/vine/android/recorder/Processor;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 48
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mMetaData:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-object p0
.end method

.method public enableOverwrite()Lco/vine/android/recorder/Processor;
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    const-string v1, "-y"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    return-object p0
.end method

.method public enableShortest()Lco/vine/android/recorder/Processor;
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    const-string v1, "-shortest"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    return-object p0
.end method

.method public filterCrop(II)Lco/vine/android/recorder/Processor;
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 146
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

    .line 147
    return-object p0
.end method

.method public filterRotation(Lco/vine/android/recorder/Processor$Rotation;)Lco/vine/android/recorder/Processor;
    .locals 3
    .parameter "rotation"

    .prologue
    .line 151
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

    .line 152
    return-object p0
.end method

.method public newCommand()Lco/vine/android/recorder/Processor;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lco/vine/android/recorder/Processor;->mMetaData:Ljava/util/HashMap;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/vine/android/recorder/Processor;->mFilters:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    .line 43
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    const-string v1, "ffmpeg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    return-object p0
.end method

.method public varargs process([Ljava/lang/String;)I
    .locals 1
    .parameter "args"

    .prologue
    .line 36
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mInvoker:Lco/vine/android/recorder/FFmpegInvoke;

    invoke-virtual {v0, p1}, Lco/vine/android/recorder/FFmpegInvoke;->run([Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public processToOutput(Ljava/lang/String;)I
    .locals 8
    .parameter "output"

    .prologue
    .line 161
    iget-object v5, p0, Lco/vine/android/recorder/Processor;->mFilters:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 162
    iget-object v5, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    const-string v6, "-vf"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
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

    .line 165
    .local v0, args:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 168
    .end local v0           #args:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, filterArg:Ljava/lang/String;
    iget-object v5, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
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

    .line 172
    .local v4, key:Ljava/lang/String;
    iget-object v5, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    const-string v6, "-metadata"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
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

    .line 176
    .end local v4           #key:Ljava/lang/String;
    :cond_2
    iget v5, p0, Lco/vine/android/recorder/Processor;->mNumCores:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_3

    .line 180
    :cond_3
    iget-object v5, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
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

    .line 182
    .restart local v0       #args:Ljava/lang/String;
    const-string v5, "Add arg \'{}\'"

    invoke-static {v5, v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 184
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
    .line 106
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    const-string v1, "-acodec"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    const-string v1, "copy"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    return-object p0
.end method

.method public setBsfA(Ljava/lang/String;)Lco/vine/android/recorder/Processor;
    .locals 2
    .parameter "format"

    .prologue
    .line 77
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    const-string v1, "-bsf:a"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    return-object p0
.end method

.method public setBsfV(Ljava/lang/String;)Lco/vine/android/recorder/Processor;
    .locals 2
    .parameter "format"

    .prologue
    .line 71
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    const-string v1, "-bsf:v"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    return-object p0
.end method

.method public setCopy()Lco/vine/android/recorder/Processor;
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    const-string v1, "-c"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    const-string v1, "copy"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    return-object p0
.end method

.method public setFormat(Ljava/lang/String;)Lco/vine/android/recorder/Processor;
    .locals 2
    .parameter "format"

    .prologue
    .line 94
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    const-string v1, "-f"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    return-object p0
.end method

.method public setFrames(JI)Lco/vine/android/recorder/Processor;
    .locals 5
    .parameter "duration"
    .parameter "frameRate"

    .prologue
    .line 130
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    const-string v1, "-vframes"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
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

    .line 132
    return-object p0
.end method

.method public setMap(Ljava/lang/String;)Lco/vine/android/recorder/Processor;
    .locals 2
    .parameter "value"

    .prologue
    .line 83
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    const-string v1, "-map"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
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
    .line 156
    .local p1, mMetaData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lco/vine/android/recorder/Processor;->mMetaData:Ljava/util/HashMap;

    .line 157
    return-object p0
.end method

.method public setPreset(Lco/vine/android/recorder/Processor$Preset;)Lco/vine/android/recorder/Processor;
    .locals 3
    .parameter "preset"

    .prologue
    .line 112
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    const-string v1, "-preset"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lco/vine/android/recorder/Processor$Preset;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    return-object p0
.end method

.method public setShortest()Lco/vine/android/recorder/Processor;
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    const-string v1, "-shortest"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    return-object p0
.end method

.method public setStart(J)Lco/vine/android/recorder/Processor;
    .locals 5
    .parameter "start"

    .prologue
    .line 118
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    const-string v1, "-ss"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    long-to-double v1, p1

    const-wide v3, 0x408f400000000000L

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    return-object p0
.end method

.method public setTotalDuration(J)Lco/vine/android/recorder/Processor;
    .locals 5
    .parameter "duration"

    .prologue
    .line 124
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    const-string v1, "-t"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    long-to-double v1, p1

    const-wide v3, 0x408f400000000000L

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    return-object p0
.end method

.method public setVideoCopy()Lco/vine/android/recorder/Processor;
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    const-string v1, "-vcodec"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    const-string v1, "copy"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    return-object p0
.end method

.method public useX264()Lco/vine/android/recorder/Processor;
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    const-string v1, "-vcodec"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lco/vine/android/recorder/Processor;->mCommand:Ljava/util/ArrayList;

    const-string v1, "libx264"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    return-object p0
.end method
