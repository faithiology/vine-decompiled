.class public abstract Lcom/googlecode/javacv/FrameRecorder;
.super Ljava/lang/Object;
.source "FrameRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/FrameRecorder$Exception;
    }
.end annotation


# static fields
.field public static final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected audioBitrate:I

.field protected audioChannels:I

.field protected audioCodec:I

.field protected audioOptions:Ljava/util/HashMap;
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

.field protected audioQuality:D

.field protected format:Ljava/lang/String;

.field protected frameNumber:I

.field protected frameRate:D

.field protected imageHeight:I

.field protected imageWidth:I

.field protected interleaved:Z

.field protected pixelFormat:I

.field protected sampleFormat:I

.field protected sampleRate:I

.field protected timestamp:J

.field protected videoBitrate:I

.field protected videoCodec:I

.field protected videoOptions:Ljava/util/HashMap;
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

.field protected videoQuality:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 39
    new-instance v0, Ljava/util/LinkedList;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "FFmpeg"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "OpenCV"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/googlecode/javacv/FrameRecorder;->list:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/high16 v0, -0x4010

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-wide v0, p0, Lcom/googlecode/javacv/FrameRecorder;->videoQuality:D

    .line 110
    iput-wide v0, p0, Lcom/googlecode/javacv/FrameRecorder;->audioQuality:D

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/googlecode/javacv/FrameRecorder;->videoOptions:Ljava/util/HashMap;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/googlecode/javacv/FrameRecorder;->audioOptions:Ljava/util/HashMap;

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/googlecode/javacv/FrameRecorder;->frameNumber:I

    .line 115
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/googlecode/javacv/FrameRecorder;->timestamp:J

    .line 250
    return-void
.end method

.method public static create(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;II)Lcom/googlecode/javacv/FrameRecorder;
    .locals 6
    .parameter
    .parameter "p"
    .parameter "o"
    .parameter "w"
    .parameter "h"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/googlecode/javacv/FrameRecorder;",
            ">;",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            "II)",
            "Lcom/googlecode/javacv/FrameRecorder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameRecorder$Exception;
        }
    .end annotation

    .prologue
    .line 74
    .local p0, c:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/googlecode/javacv/FrameRecorder;>;"
    const/4 v0, 0x0

    .line 76
    .local v0, cause:Ljava/lang/Throwable;
    const/4 v2, 0x3

    :try_start_0
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/googlecode/javacv/FrameRecorder;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    return-object v2

    .line 77
    :catch_0
    move-exception v1

    .line 78
    .local v1, ex:Ljava/lang/InstantiationException;
    move-object v0, v1

    .line 88
    .end local v1           #ex:Ljava/lang/InstantiationException;
    :goto_0
    new-instance v2, Lcom/googlecode/javacv/FrameRecorder$Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create new "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/googlecode/javacv/FrameRecorder$Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 79
    :catch_1
    move-exception v1

    .line 80
    .local v1, ex:Ljava/lang/IllegalAccessException;
    move-object v0, v1

    .line 87
    goto :goto_0

    .line 81
    .end local v1           #ex:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 82
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    move-object v0, v1

    .line 87
    goto :goto_0

    .line 83
    .end local v1           #ex:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 84
    .local v1, ex:Ljava/lang/NoSuchMethodException;
    move-object v0, v1

    .line 87
    goto :goto_0

    .line 85
    .end local v1           #ex:Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v1

    .line 86
    .local v1, ex:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0
.end method

.method public static create(Ljava/lang/String;Ljava/io/File;II)Lcom/googlecode/javacv/FrameRecorder;
    .locals 2
    .parameter "className"
    .parameter "file"
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameRecorder$Exception;
        }
    .end annotation

    .prologue
    .line 99
    invoke-static {p0}, Lcom/googlecode/javacv/FrameRecorder;->get(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/io/File;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/googlecode/javacv/FrameRecorder;->create(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;II)Lcom/googlecode/javacv/FrameRecorder;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;II)Lcom/googlecode/javacv/FrameRecorder;
    .locals 2
    .parameter "className"
    .parameter "filename"
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameRecorder$Exception;
        }
    .end annotation

    .prologue
    .line 102
    invoke-static {p0}, Lcom/googlecode/javacv/FrameRecorder;->get(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/googlecode/javacv/FrameRecorder;->create(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;II)Lcom/googlecode/javacv/FrameRecorder;

    move-result-object v0

    return-object v0
.end method

.method public static createDefault(Ljava/io/File;II)Lcom/googlecode/javacv/FrameRecorder;
    .locals 2
    .parameter "file"
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameRecorder$Exception;
        }
    .end annotation

    .prologue
    .line 92
    invoke-static {}, Lcom/googlecode/javacv/FrameRecorder;->getDefault()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/io/File;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/googlecode/javacv/FrameRecorder;->create(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;II)Lcom/googlecode/javacv/FrameRecorder;

    move-result-object v0

    return-object v0
.end method

.method public static createDefault(Ljava/lang/String;II)Lcom/googlecode/javacv/FrameRecorder;
    .locals 2
    .parameter "filename"
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameRecorder$Exception;
        }
    .end annotation

    .prologue
    .line 95
    invoke-static {}, Lcom/googlecode/javacv/FrameRecorder;->getDefault()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/googlecode/javacv/FrameRecorder;->create(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;II)Lcom/googlecode/javacv/FrameRecorder;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/Class;
    .locals 6
    .parameter "className"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lcom/googlecode/javacv/FrameRecorder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameRecorder$Exception;
        }
    .end annotation

    .prologue
    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lcom/googlecode/javacv/FrameRecorder;

    invoke-virtual {v4}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 62
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/googlecode/javacv/FrameRecorder;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 66
    :goto_0
    return-object v3

    .line 63
    :catch_0
    move-exception v1

    .line 64
    .local v1, e:Ljava/lang/ClassNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "FrameRecorder"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, className2:Ljava/lang/String;
    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/googlecode/javacv/FrameRecorder;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_0

    .line 67
    :catch_1
    move-exception v2

    .line 68
    .local v2, ex:Ljava/lang/ClassNotFoundException;
    new-instance v3, Lcom/googlecode/javacv/FrameRecorder$Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not get FrameRecorder class for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " or "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/googlecode/javacv/FrameRecorder$Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static getDefault()Ljava/lang/Class;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/googlecode/javacv/FrameRecorder;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 50
    sget-object v4, Lcom/googlecode/javacv/FrameRecorder;->list:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 52
    .local v2, name:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Lcom/googlecode/javacv/FrameRecorder;->get(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 53
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/googlecode/javacv/FrameRecorder;>;"
    const-string v4, "tryLoad"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v0           #c:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/googlecode/javacv/FrameRecorder;>;"
    .end local v2           #name:Ljava/lang/String;
    :goto_1
    return-object v0

    :cond_0
    move-object v0, v3

    goto :goto_1

    .line 55
    .restart local v2       #name:Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static init()V
    .locals 6

    .prologue
    .line 41
    sget-object v3, Lcom/googlecode/javacv/FrameRecorder;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 43
    .local v2, name:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Lcom/googlecode/javacv/FrameRecorder;->get(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 44
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/googlecode/javacv/FrameRecorder;>;"
    const-string v3, "tryLoad"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    .end local v0           #c:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/googlecode/javacv/FrameRecorder;>;"
    :catch_0
    move-exception v3

    goto :goto_0

    .line 47
    .end local v2           #name:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public getAudioBitrate()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/googlecode/javacv/FrameRecorder;->audioBitrate:I

    return v0
.end method

.method public getAudioChannels()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/googlecode/javacv/FrameRecorder;->audioChannels:I

    return v0
.end method

.method public getAudioCodec()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/googlecode/javacv/FrameRecorder;->audioCodec:I

    return v0
.end method

.method public getAudioOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/googlecode/javacv/FrameRecorder;->audioOptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAudioQuality()D
    .locals 2

    .prologue
    .line 209
    iget-wide v0, p0, Lcom/googlecode/javacv/FrameRecorder;->audioQuality:D

    return-wide v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/googlecode/javacv/FrameRecorder;->format:Ljava/lang/String;

    return-object v0
.end method

.method public getFrameNumber()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/googlecode/javacv/FrameRecorder;->frameNumber:I

    return v0
.end method

.method public getFrameRate()D
    .locals 2

    .prologue
    .line 167
    iget-wide v0, p0, Lcom/googlecode/javacv/FrameRecorder;->frameRate:D

    return-wide v0
.end method

.method public getImageHeight()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/googlecode/javacv/FrameRecorder;->imageHeight:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/googlecode/javacv/FrameRecorder;->imageWidth:I

    return v0
.end method

.method public getPixelFormat()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/googlecode/javacv/FrameRecorder;->pixelFormat:I

    return v0
.end method

.method public getSampleFormat()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/googlecode/javacv/FrameRecorder;->sampleFormat:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/googlecode/javacv/FrameRecorder;->sampleRate:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 244
    iget-wide v0, p0, Lcom/googlecode/javacv/FrameRecorder;->timestamp:J

    return-wide v0
.end method

.method public getVideoBitrate()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/googlecode/javacv/FrameRecorder;->videoBitrate:I

    return v0
.end method

.method public getVideoCodec()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/googlecode/javacv/FrameRecorder;->videoCodec:I

    return v0
.end method

.method public getVideoOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/googlecode/javacv/FrameRecorder;->videoOptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getVideoQuality()D
    .locals 2

    .prologue
    .line 174
    iget-wide v0, p0, Lcom/googlecode/javacv/FrameRecorder;->videoQuality:D

    return-wide v0
.end method

.method public isInterleaved()Z
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/googlecode/javacv/FrameRecorder;->interleaved:Z

    return v0
.end method

.method public record(Lcom/googlecode/javacv/Frame;)V
    .locals 1
    .parameter "frame"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameRecorder$Exception;
        }
    .end annotation

    .prologue
    .line 262
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/googlecode/javacv/Frame;->image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/googlecode/javacv/Frame;->samples:[Ljava/nio/Buffer;

    if-nez v0, :cond_2

    .line 263
    :cond_0
    const/4 v0, 0x0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/FrameRecorder;->record(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    .line 272
    :cond_1
    :goto_0
    return-void

    .line 265
    :cond_2
    iget-object v0, p1, Lcom/googlecode/javacv/Frame;->image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    if-eqz v0, :cond_3

    .line 266
    iget-object v0, p1, Lcom/googlecode/javacv/Frame;->image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/FrameRecorder;->record(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    .line 268
    :cond_3
    iget-object v0, p1, Lcom/googlecode/javacv/Frame;->samples:[Ljava/nio/Buffer;

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p1, Lcom/googlecode/javacv/Frame;->samples:[Ljava/nio/Buffer;

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/FrameRecorder;->record([Ljava/nio/Buffer;)V

    goto :goto_0
.end method

.method public abstract record(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameRecorder$Exception;
        }
    .end annotation
.end method

.method public record([Ljava/nio/Buffer;)V
    .locals 2
    .parameter "samples"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameRecorder$Exception;
        }
    .end annotation

    .prologue
    .line 259
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This FrameRecorder does not support audio."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract release()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameRecorder$Exception;
        }
    .end annotation
.end method

.method public setAudioBitrate(I)V
    .locals 0
    .parameter "audioBitrate"

    .prologue
    .line 198
    iput p1, p0, Lcom/googlecode/javacv/FrameRecorder;->audioBitrate:I

    .line 199
    return-void
.end method

.method public setAudioChannels(I)V
    .locals 0
    .parameter "audioChannels"

    .prologue
    .line 142
    iput p1, p0, Lcom/googlecode/javacv/FrameRecorder;->audioChannels:I

    .line 143
    return-void
.end method

.method public setAudioCodec(I)V
    .locals 0
    .parameter "audioCodec"

    .prologue
    .line 191
    iput p1, p0, Lcom/googlecode/javacv/FrameRecorder;->audioCodec:I

    .line 192
    return-void
.end method

.method public setAudioOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/googlecode/javacv/FrameRecorder;->audioOptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    return-void
.end method

.method public setAudioQuality(D)V
    .locals 0
    .parameter "audioQuality"

    .prologue
    .line 212
    iput-wide p1, p0, Lcom/googlecode/javacv/FrameRecorder;->audioQuality:D

    .line 213
    return-void
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 0
    .parameter "format"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/googlecode/javacv/FrameRecorder;->format:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setFrameNumber(I)V
    .locals 0
    .parameter "frameNumber"

    .prologue
    .line 240
    iput p1, p0, Lcom/googlecode/javacv/FrameRecorder;->frameNumber:I

    .line 241
    return-void
.end method

.method public setFrameRate(D)V
    .locals 0
    .parameter "frameRate"

    .prologue
    .line 170
    iput-wide p1, p0, Lcom/googlecode/javacv/FrameRecorder;->frameRate:D

    .line 171
    return-void
.end method

.method public setImageHeight(I)V
    .locals 0
    .parameter "imageHeight"

    .prologue
    .line 135
    iput p1, p0, Lcom/googlecode/javacv/FrameRecorder;->imageHeight:I

    .line 136
    return-void
.end method

.method public setImageWidth(I)V
    .locals 0
    .parameter "imageWidth"

    .prologue
    .line 128
    iput p1, p0, Lcom/googlecode/javacv/FrameRecorder;->imageWidth:I

    .line 129
    return-void
.end method

.method public setInterleaved(Z)V
    .locals 0
    .parameter "interleaved"

    .prologue
    .line 219
    iput-boolean p1, p0, Lcom/googlecode/javacv/FrameRecorder;->interleaved:Z

    .line 220
    return-void
.end method

.method public setPixelFormat(I)V
    .locals 0
    .parameter "pixelFormat"

    .prologue
    .line 149
    iput p1, p0, Lcom/googlecode/javacv/FrameRecorder;->pixelFormat:I

    .line 150
    return-void
.end method

.method public setSampleFormat(I)V
    .locals 0
    .parameter "sampleFormat"

    .prologue
    .line 184
    iput p1, p0, Lcom/googlecode/javacv/FrameRecorder;->sampleFormat:I

    .line 185
    return-void
.end method

.method public setSampleRate(I)V
    .locals 0
    .parameter "sampleRate"

    .prologue
    .line 205
    iput p1, p0, Lcom/googlecode/javacv/FrameRecorder;->sampleRate:I

    .line 206
    return-void
.end method

.method public setTimestamp(J)V
    .locals 0
    .parameter "timestamp"

    .prologue
    .line 247
    iput-wide p1, p0, Lcom/googlecode/javacv/FrameRecorder;->timestamp:J

    .line 248
    return-void
.end method

.method public setVideoBitrate(I)V
    .locals 0
    .parameter "videoBitrate"

    .prologue
    .line 163
    iput p1, p0, Lcom/googlecode/javacv/FrameRecorder;->videoBitrate:I

    .line 164
    return-void
.end method

.method public setVideoCodec(I)V
    .locals 0
    .parameter "videoCodec"

    .prologue
    .line 156
    iput p1, p0, Lcom/googlecode/javacv/FrameRecorder;->videoCodec:I

    .line 157
    return-void
.end method

.method public setVideoOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/googlecode/javacv/FrameRecorder;->videoOptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    return-void
.end method

.method public setVideoQuality(D)V
    .locals 0
    .parameter "videoQuality"

    .prologue
    .line 177
    iput-wide p1, p0, Lcom/googlecode/javacv/FrameRecorder;->videoQuality:D

    .line 178
    return-void
.end method

.method public abstract start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameRecorder$Exception;
        }
    .end annotation
.end method

.method public abstract stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameRecorder$Exception;
        }
    .end annotation
.end method
