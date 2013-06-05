.class final Lcom/flurry/android/bu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static dX:Ljava/util/List;
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
.field private final bv:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final dY:Ljava/lang/String;

.field private final dZ:Z

.field private final ea:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "requested"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "filled"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "unfilled"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "rendered"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "clicked"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "videoStart"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "videoCompleted"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "videoProgressed"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "sentToUrl"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "adClosed"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "adWillClose"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "renderFailed"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "requestAdComponents"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "urlVerified"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "capExhausted"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "capNotExhausted"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/bu;->dX:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Ljava/io/DataInput;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/bu;->dY:Ljava/lang/String;

    .line 44
    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/android/bu;->dZ:Z

    .line 45
    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/bu;->ea:J

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/bu;->bv:Ljava/util/Map;

    .line 47
    invoke-interface {p1}, Ljava/io/DataInput;->readShort()S

    move-result v1

    .line 48
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 50
    iget-object v2, p0, Lcom/flurry/android/bu;->bv:Ljava/util/Map;

    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method

.method constructor <init>(Ljava/lang/String;ZJLjava/util/Map;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Lcom/flurry/android/bu;->dX:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdEvent initialized with unrecognized type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/db;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_0
    iput-object p1, p0, Lcom/flurry/android/bu;->dY:Ljava/lang/String;

    .line 29
    iput-boolean p2, p0, Lcom/flurry/android/bu;->dZ:Z

    .line 30
    iput-wide p3, p0, Lcom/flurry/android/bu;->ea:J

    .line 31
    if-nez p5, :cond_1

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/bu;->bv:Ljava/util/Map;

    .line 39
    :goto_0
    return-void

    .line 37
    :cond_1
    iput-object p5, p0, Lcom/flurry/android/bu;->bv:Ljava/util/Map;

    goto :goto_0
.end method


# virtual methods
.method final M()J
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/flurry/android/bu;->ea:J

    return-wide v0
.end method

.method final a(Ljava/io/DataOutput;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/flurry/android/bu;->dY:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 57
    iget-boolean v0, p0, Lcom/flurry/android/bu;->dZ:Z

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 58
    iget-wide v0, p0, Lcom/flurry/android/bu;->ea:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 59
    iget-object v0, p0, Lcom/flurry/android/bu;->bv:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeShort(I)V

    .line 60
    iget-object v0, p0, Lcom/flurry/android/bu;->bv:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 62
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 63
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_0
    return-void
.end method

.method final ai()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/flurry/android/bu;->dZ:Z

    return v0
.end method

.method final getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/flurry/android/bu;->bv:Ljava/util/Map;

    return-object v0
.end method

.method final getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/flurry/android/bu;->dY:Ljava/lang/String;

    return-object v0
.end method
