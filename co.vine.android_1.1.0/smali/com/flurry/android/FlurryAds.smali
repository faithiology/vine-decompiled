.class public Lcom/flurry/android/FlurryAds;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/bm;


# static fields
.field private static cr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static cs:Lcom/flurry/org/apache/avro/io/DecoderFactory;

.field private static ct:Lcom/flurry/android/ag;

.field static d:Ljava/lang/String;

.field private static dc:Lcom/flurry/android/FlurryAds;


# instance fields
.field private aS:Ljava/lang/String;

.field private aW:Ljava/lang/String;

.field private aX:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private bb:J

.field private bc:J

.field private cA:Z

.field private volatile cB:Ljava/lang/String;

.field private volatile cC:Ljava/lang/String;

.field private volatile cD:F

.field private volatile cE:F

.field private volatile cF:Ljava/util/Map;
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

.field private cG:Lcom/flurry/android/cz;

.field private cH:Lcom/flurry/android/AdUnit;

.field private cI:J

.field cJ:Lcom/flurry/android/aj;

.field private cK:Landroid/os/Handler;

.field cL:Lcom/flurry/android/dc;

.field cM:Lcom/flurry/android/FlurryFreqCapManager;

.field private cN:Lcom/flurry/android/ICustomAdNetworkHandler;

.field private final cO:Lcom/flurry/android/k;

.field private final cP:Lcom/flurry/android/bq;

.field private cQ:Lcom/flurry/android/FlurryAdListener;

.field private cR:I

.field private volatile cS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/cz;",
            ">;"
        }
    .end annotation
.end field

.field private volatile cT:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/android/cz;",
            ">;"
        }
    .end annotation
.end field

.field private volatile cU:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/cz;",
            ">;"
        }
    .end annotation
.end field

.field private volatile cV:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile cW:Z

.field private cX:Ljava/util/Map;
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

.field private cY:Lcom/flurry/android/AdUnit;

.field private cZ:Lcom/flurry/android/bf;

.field private cu:Lcom/flurry/android/w;

.field private cv:Z

.field private cw:Z

.field private cx:Ljava/io/File;

.field private cy:Ljava/io/File;

.field private cz:Ljava/lang/String;

.field private final da:Ljava/util/Map;
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

.field private final db:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dd:Z

.field private de:Lcom/flurry/android/FlurryUserIdProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const-string v0, "FlurryAgent"

    sput-object v0, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-boolean v4, p0, Lcom/flurry/android/FlurryAds;->cv:Z

    .line 102
    iput-boolean v4, p0, Lcom/flurry/android/FlurryAds;->cw:Z

    .line 103
    iput-object v0, p0, Lcom/flurry/android/FlurryAds;->cx:Ljava/io/File;

    .line 104
    iput-object v0, p0, Lcom/flurry/android/FlurryAds;->cy:Ljava/io/File;

    .line 107
    iput-boolean v5, p0, Lcom/flurry/android/FlurryAds;->cA:Z

    .line 108
    iput-object v0, p0, Lcom/flurry/android/FlurryAds;->cB:Ljava/lang/String;

    .line 112
    iput-object v0, p0, Lcom/flurry/android/FlurryAds;->cC:Ljava/lang/String;

    .line 176
    invoke-static {}, Lcom/flurry/android/FlurryFreqCapManager;->an()Lcom/flurry/android/FlurryFreqCapManager;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/FlurryAds;->cM:Lcom/flurry/android/FlurryFreqCapManager;

    .line 178
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/FlurryAds;->cS:Ljava/util/List;

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/FlurryAds;->cT:Ljava/util/Map;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/FlurryAds;->cU:Ljava/util/List;

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/FlurryAds;->cV:Ljava/util/List;

    .line 182
    iput-boolean v4, p0, Lcom/flurry/android/FlurryAds;->cW:Z

    .line 185
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 186
    const-string v1, "open"

    const-string v2, "directOpen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v1, "expand"

    const-string v2, "doExpand"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v1, "collapse"

    const-string v2, "doCollapse"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/FlurryAds;->da:Ljava/util/Map;

    .line 192
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 193
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "closeAd"

    aput-object v2, v1, v4

    const-string v2, "processRedirect"

    aput-object v2, v1, v5

    const-string v2, "nextFrame"

    aput-object v2, v1, v6

    const-string v2, "nextAdUnit"

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string v3, "notifyUser"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 194
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/FlurryAds;->db:Ljava/util/Set;

    .line 197
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FlurryAdThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 199
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/flurry/android/FlurryAds;->cK:Landroid/os/Handler;

    .line 201
    new-instance v0, Lcom/flurry/android/aj;

    invoke-direct {v0}, Lcom/flurry/android/aj;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/FlurryAds;->cJ:Lcom/flurry/android/aj;

    .line 202
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/FlurryAds;->cr:Ljava/util/List;

    .line 204
    new-instance v0, Lcom/flurry/org/apache/avro/io/DecoderFactory;

    invoke-direct {v0}, Lcom/flurry/org/apache/avro/io/DecoderFactory;-><init>()V

    sput-object v0, Lcom/flurry/android/FlurryAds;->cs:Lcom/flurry/org/apache/avro/io/DecoderFactory;

    .line 205
    new-instance v0, Lcom/flurry/android/ag;

    invoke-direct {v0, p0}, Lcom/flurry/android/ag;-><init>(Lcom/flurry/android/FlurryAds;)V

    sput-object v0, Lcom/flurry/android/FlurryAds;->ct:Lcom/flurry/android/ag;

    .line 206
    new-instance v0, Lcom/flurry/android/w;

    invoke-direct {v0, p0}, Lcom/flurry/android/w;-><init>(Lcom/flurry/android/FlurryAds;)V

    iput-object v0, p0, Lcom/flurry/android/FlurryAds;->cu:Lcom/flurry/android/w;

    .line 208
    new-instance v0, Lcom/flurry/android/dc;

    invoke-direct {v0}, Lcom/flurry/android/dc;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/FlurryAds;->cL:Lcom/flurry/android/dc;

    .line 211
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/android/FlurryAds;->aS:Ljava/lang/String;

    .line 212
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/android/FlurryAds;->cz:Ljava/lang/String;

    .line 214
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/FlurryAds;->cF:Ljava/util/Map;

    .line 216
    new-instance v0, Lcom/flurry/android/j;

    invoke-direct {v0}, Lcom/flurry/android/j;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/FlurryAds;->cO:Lcom/flurry/android/k;

    .line 217
    new-instance v0, Lcom/flurry/android/h;

    invoke-direct {v0}, Lcom/flurry/android/h;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/FlurryAds;->cP:Lcom/flurry/android/bq;

    .line 218
    return-void
.end method

.method private N()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 902
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 903
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cX:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 905
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 906
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 907
    if-nez v1, :cond_0

    .line 908
    const-string v1, ""

    .line 909
    :cond_0
    if-nez v0, :cond_1

    .line 910
    const-string v0, ""

    .line 911
    :cond_1
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 913
    :cond_2
    return-object v2
.end method

.method private declared-synchronized P()V
    .locals 2

    .prologue
    .line 1700
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/flurry/android/cq;

    invoke-direct {v0, p0}, Lcom/flurry/android/cq;-><init>(Lcom/flurry/android/FlurryAds;)V

    .line 1709
    iget-object v1, p0, Lcom/flurry/android/FlurryAds;->cK:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1710
    monitor-exit p0

    return-void

    .line 1700
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private Q()[B
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1726
    invoke-direct {p0}, Lcom/flurry/android/FlurryAds;->R()Ljava/util/List;

    move-result-object v1

    .line 1729
    iget-object v2, p0, Lcom/flurry/android/FlurryAds;->cS:Ljava/util/List;

    monitor-enter v2

    .line 1731
    :try_start_0
    sget-object v3, Lcom/flurry/android/FlurryAds;->ct:Lcom/flurry/android/ag;

    iget-object v4, p0, Lcom/flurry/android/FlurryAds;->cS:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/flurry/android/ag;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 1732
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 1734
    monitor-exit v2

    .line 1764
    :goto_0
    return-object v0

    .line 1737
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1740
    invoke-static {}, Lcom/flurry/android/SdkLogRequest;->aa()Lcom/flurry/android/SdkLogRequest$Builder;

    move-result-object v2

    invoke-static {}, Lcom/flurry/android/FlurryAgent;->w()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/flurry/android/SdkLogRequest$Builder;->setApiKey(Ljava/lang/CharSequence;)Lcom/flurry/android/SdkLogRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/flurry/android/SdkLogRequest$Builder;->setAdReportedIds(Ljava/util/List;)Lcom/flurry/android/SdkLogRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/flurry/android/SdkLogRequest$Builder;->setSdkAdLogs(Ljava/util/List;)Lcom/flurry/android/SdkLogRequest$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/flurry/android/SdkLogRequest$Builder;->setTestDevice(Z)Lcom/flurry/android/SdkLogRequest$Builder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/flurry/android/SdkLogRequest$Builder;->setAgentTimestamp(J)Lcom/flurry/android/SdkLogRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/SdkLogRequest$Builder;->build()Lcom/flurry/android/SdkLogRequest;

    move-result-object v1

    .line 1748
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got ad log request:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/flurry/android/SdkLogRequest;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1751
    new-instance v2, Lcom/flurry/org/apache/avro/specific/SpecificDatumWriter;

    const-class v3, Lcom/flurry/android/SdkLogRequest;

    invoke-direct {v2, v3}, Lcom/flurry/org/apache/avro/specific/SpecificDatumWriter;-><init>(Ljava/lang/Class;)V

    .line 1752
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1753
    invoke-static {}, Lcom/flurry/org/apache/avro/io/EncoderFactory;->get()Lcom/flurry/org/apache/avro/io/EncoderFactory;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Lcom/flurry/org/apache/avro/io/EncoderFactory;->directBinaryEncoder(Ljava/io/OutputStream;Lcom/flurry/org/apache/avro/io/BinaryEncoder;)Lcom/flurry/org/apache/avro/io/BinaryEncoder;

    move-result-object v4

    .line 1756
    :try_start_1
    invoke-virtual {v2, v1, v4}, Lcom/flurry/org/apache/avro/specific/SpecificDatumWriter;->write(Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Encoder;)V

    .line 1757
    invoke-virtual {v4}, Lcom/flurry/org/apache/avro/io/BinaryEncoder;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1763
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    .line 1737
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1758
    :catch_0
    move-exception v1

    .line 1759
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error generating adlog request"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method private R()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/AdReportedId;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1770
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1771
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->aW:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1772
    invoke-static {}, Lcom/flurry/android/AdReportedId;->aq()Lcom/flurry/android/AdReportedId$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/android/AdReportedId$Builder;->setId(Ljava/nio/ByteBuffer;)Lcom/flurry/android/AdReportedId$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flurry/android/AdReportedId$Builder;->setType(I)Lcom/flurry/android/AdReportedId$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/AdReportedId$Builder;->build()Lcom/flurry/android/AdReportedId;

    move-result-object v0

    .line 1773
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1774
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->aX:Ljava/util/Map;

    .line 1775
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1777
    invoke-static {}, Lcom/flurry/android/AdReportedId;->aq()Lcom/flurry/android/AdReportedId$Builder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v1}, Lcom/flurry/android/AdReportedId$Builder;->setId(Ljava/nio/ByteBuffer;)Lcom/flurry/android/AdReportedId$Builder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/flurry/android/AdReportedId$Builder;->setType(I)Lcom/flurry/android/AdReportedId$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/AdReportedId$Builder;->build()Lcom/flurry/android/AdReportedId;

    move-result-object v0

    .line 1778
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1780
    :cond_0
    return-object v2
.end method

.method private declared-synchronized T()V
    .locals 2

    .prologue
    .line 2073
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/flurry/android/cm;

    invoke-direct {v0, p0}, Lcom/flurry/android/cm;-><init>(Lcom/flurry/android/FlurryAds;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/flurry/android/cm;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2147
    monitor-exit p0

    return-void

    .line 2073
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized V()V
    .locals 2

    .prologue
    .line 2217
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/flurry/android/co;

    invoke-direct {v0, p0}, Lcom/flurry/android/co;-><init>(Lcom/flurry/android/FlurryAds;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/flurry/android/co;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2285
    monitor-exit p0

    return-void

    .line 2217
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Landroid/content/Context;Lcom/flurry/android/AdUnit;)Lcom/flurry/android/bf;
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v12, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 2750
    iput-object p2, p0, Lcom/flurry/android/FlurryAds;->cY:Lcom/flurry/android/AdUnit;

    .line 2758
    if-nez p2, :cond_0

    move-object v0, v8

    .line 2780
    :goto_0
    return-object v0

    .line 2763
    :cond_0
    invoke-virtual {p2}, Lcom/flurry/android/AdUnit;->getAdFrames()Ljava/util/List;

    move-result-object v0

    .line 2764
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 2766
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/flurry/android/AdFrame;

    .line 2767
    invoke-virtual {v7}, Lcom/flurry/android/AdFrame;->getBinding()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 2768
    invoke-virtual {v7}, Lcom/flurry/android/AdFrame;->getContent()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2769
    invoke-virtual {v7}, Lcom/flurry/android/AdFrame;->getAdSpaceLayout()Lcom/flurry/android/AdSpaceLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/AdSpaceLayout;->getFormat()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2770
    invoke-virtual {v7}, Lcom/flurry/android/AdFrame;->getAdGuid()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "requested"

    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cT:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/cz;

    if-nez v0, :cond_1

    invoke-static {p0, v1}, Lcom/flurry/android/cx;->a(Lcom/flurry/android/FlurryAds;Ljava/lang/String;)Lcom/flurry/android/cz;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, v0, v2, v12, v8}, Lcom/flurry/android/FlurryAds;->a(Lcom/flurry/android/cz;Ljava/lang/String;ZLjava/util/Map;)Lcom/flurry/android/cz;

    move-result-object v5

    .line 2777
    new-instance v0, Lcom/flurry/android/cw;

    const-string v1, "filled"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/flurry/android/cw;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/android/AdUnit;Lcom/flurry/android/cz;I)V

    invoke-virtual {p0, v0, p0, v12}, Lcom/flurry/android/FlurryAds;->onEvent(Lcom/flurry/android/cw;Lcom/flurry/android/bm;I)V

    .line 2779
    invoke-virtual {v7}, Lcom/flurry/android/AdFrame;->getAdSpaceLayout()Lcom/flurry/android/AdSpaceLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/cx;->b(Lcom/flurry/android/AdSpaceLayout;)Lcom/flurry/android/AdCreative;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/FlurryAds;->cY:Lcom/flurry/android/AdUnit;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/flurry/android/FlurryAds;->cY:Lcom/flurry/android/AdUnit;

    if-eq v1, p2, :cond_4

    .line 2780
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cZ:Lcom/flurry/android/bf;

    goto :goto_0

    :cond_3
    move-object v0, v8

    .line 2774
    goto :goto_0

    .line 2779
    :cond_4
    iput-object v8, p0, Lcom/flurry/android/FlurryAds;->cZ:Lcom/flurry/android/bf;

    iget-object v1, p0, Lcom/flurry/android/FlurryAds;->cN:Lcom/flurry/android/ICustomAdNetworkHandler;

    const/4 v2, 0x4

    if-ne v9, v2, :cond_5

    if-eqz v1, :cond_5

    invoke-interface {v1, p1, v0, v10}, Lcom/flurry/android/ICustomAdNetworkHandler;->getAdFromNetwork(Landroid/content/Context;Lcom/flurry/android/AdCreative;Ljava/lang/String;)Lcom/flurry/android/AdNetworkView;

    move-result-object v0

    if-eqz v0, :cond_5

    iput-object p0, v0, Lcom/flurry/android/p;->K:Lcom/flurry/android/FlurryAds;

    iput-object v5, v0, Lcom/flurry/android/p;->L:Lcom/flurry/android/cz;

    iput v6, v0, Lcom/flurry/android/p;->N:I

    iput-object p2, v0, Lcom/flurry/android/p;->M:Lcom/flurry/android/AdUnit;

    new-instance v1, Lcom/flurry/android/at;

    invoke-direct {v1, v0, p2}, Lcom/flurry/android/at;-><init>(Lcom/flurry/android/p;Lcom/flurry/android/AdUnit;)V

    iput-object v1, p0, Lcom/flurry/android/FlurryAds;->cZ:Lcom/flurry/android/bf;

    goto :goto_1

    :cond_5
    const-string v0, "takeover"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-object v5, p0, Lcom/flurry/android/FlurryAds;->cG:Lcom/flurry/android/cz;

    iput-object p2, p0, Lcom/flurry/android/FlurryAds;->cH:Lcom/flurry/android/AdUnit;

    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cP:Lcom/flurry/android/bq;

    invoke-interface {v0, p1, p0, v5, p2}, Lcom/flurry/android/bq;->a(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cz;Lcom/flurry/android/AdUnit;)Lcom/flurry/android/ao;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/flurry/android/cb;

    invoke-direct {v1, v0, p2}, Lcom/flurry/android/cb;-><init>(Lcom/flurry/android/ao;Lcom/flurry/android/AdUnit;)V

    iput-object v1, p0, Lcom/flurry/android/FlurryAds;->cZ:Lcom/flurry/android/bf;

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cO:Lcom/flurry/android/k;

    invoke-interface {v0, p1, p0, v5, p2}, Lcom/flurry/android/k;->b(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cz;Lcom/flurry/android/AdUnit;)Lcom/flurry/android/p;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/flurry/android/at;

    invoke-direct {v1, v0, p2}, Lcom/flurry/android/at;-><init>(Lcom/flurry/android/p;Lcom/flurry/android/AdUnit;)V

    iput-object v1, p0, Lcom/flurry/android/FlurryAds;->cZ:Lcom/flurry/android/bf;

    goto :goto_1
.end method

.method private declared-synchronized a(Ljava/lang/String;ZLjava/util/Map;)Lcom/flurry/android/bu;
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/android/bu;"
        }
    .end annotation

    .prologue
    .line 2347
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/flurry/android/bu;

    invoke-virtual {p0}, Lcom/flurry/android/FlurryAds;->M()J

    move-result-wide v3

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/bu;-><init>(Ljava/lang/String;ZJLjava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static a([BLjava/lang/Class;)Lcom/flurry/org/apache/avro/specific/SpecificRecordBase;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/flurry/org/apache/avro/specific/SpecificRecordBase;",
            ">([B",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1990
    sget-object v0, Lcom/flurry/android/FlurryAds;->cs:Lcom/flurry/org/apache/avro/io/DecoderFactory;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v2, v1}, Lcom/flurry/org/apache/avro/io/DecoderFactory;->binaryDecoder(Ljava/io/InputStream;Lcom/flurry/org/apache/avro/io/BinaryDecoder;)Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    move-result-object v0

    .line 1993
    :try_start_0
    new-instance v2, Lcom/flurry/org/apache/avro/specific/SpecificDatumReader;

    invoke-direct {v2, p1}, Lcom/flurry/org/apache/avro/specific/SpecificDatumReader;-><init>(Ljava/lang/Class;)V

    .line 1994
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/flurry/org/apache/avro/specific/SpecificDatumReader;->read(Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Decoder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/apache/avro/specific/SpecificRecordBase;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2006
    :goto_0
    return-object v0

    .line 1996
    :catch_0
    move-exception v0

    .line 1998
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClassCastException in parseAvroBinary:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1999
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClassCastException in parseAvroBinary: bytes = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " type = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object v0, v1

    .line 2000
    goto :goto_0

    .line 2002
    :catch_1
    move-exception v0

    .line 2004
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException in parseAvroBinary:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2005
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException in parseAvroBinary: bytes = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " type = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object v0, v1

    .line 2006
    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/android/FlurryAds;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cx:Ljava/io/File;

    return-object v0
.end method

.method private a(Lcom/flurry/android/cz;Lcom/flurry/android/AdUnit;Lcom/flurry/android/af;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1607
    const-string v0, ".*?(%\\{\\w+\\}).*?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 1608
    invoke-virtual {v1, p4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1609
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1610
    iget-object v2, p0, Lcom/flurry/android/FlurryAds;->cu:Lcom/flurry/android/w;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, p2, p4, v0}, Lcom/flurry/android/w;->a(Lcom/flurry/android/cz;Lcom/flurry/android/AdUnit;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 1611
    invoke-virtual {v1, p4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    goto :goto_0

    .line 1614
    :cond_0
    return-object p4
.end method

.method private static a(Lcom/flurry/android/AdFrame;Lcom/flurry/android/cw;)Ljava/util/List;
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/AdFrame;",
            "Lcom/flurry/android/cw;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/af;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2372
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2373
    invoke-virtual {p0}, Lcom/flurry/android/AdFrame;->getCallbacks()Ljava/util/List;

    move-result-object v0

    .line 2374
    iget-object v3, p1, Lcom/flurry/android/cw;->eW:Ljava/lang/String;

    .line 2377
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/Callback;

    .line 2379
    invoke-virtual {v0}, Lcom/flurry/android/Callback;->getEvent()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2380
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2383
    invoke-virtual {v0}, Lcom/flurry/android/Callback;->getActions()Ljava/util/List;

    move-result-object v0

    .line 2384
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 2386
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 2387
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2388
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 2390
    const/4 v1, -0x1

    if-eq v7, v1, :cond_2

    .line 2392
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2393
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2395
    const-string v7, "%{eventParams}"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2397
    const-string v7, "%{eventParams}"

    const-string v8, ""

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2398
    iget-object v7, p1, Lcom/flurry/android/cw;->bv:Ljava/util/Map;

    invoke-interface {v6, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2401
    :cond_1
    invoke-static {v0}, Lcom/flurry/android/bd;->t(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    move-object v0, v1

    .line 2407
    :cond_2
    new-instance v1, Lcom/flurry/android/af;

    invoke-direct {v1, v0, v6, p1}, Lcom/flurry/android/af;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/cw;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2412
    :cond_3
    return-object v2
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;ZLcom/flurry/android/AdUnit;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1411
    iget-object v6, p0, Lcom/flurry/android/FlurryAds;->cK:Landroid/os/Handler;

    new-instance v0, Lcom/flurry/android/cu;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move-object v4, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/cu;-><init>(Lcom/flurry/android/FlurryAds;Ljava/lang/String;Lcom/flurry/android/AdUnit;Landroid/content/Context;Z)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1457
    return-void
.end method

.method private declared-synchronized a(Lcom/flurry/android/FlurryFreqCapManager;Ljava/io/DataOutputStream;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 2307
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/flurry/android/FlurryFreqCapManager;->ao()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/FlurryFreqCapInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2311
    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {p2, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2312
    invoke-virtual {v0, p2}, Lcom/flurry/android/FlurryFreqCapInfo;->a(Ljava/io/DataOutput;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2314
    :catch_0
    move-exception v2

    :try_start_2
    sget-object v2, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to convert freqCap to byte[]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/flurry/android/FlurryFreqCapInfo;->getIdHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/flurry/android/db;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2307
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2317
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized a(Lcom/flurry/android/SdkLogResponse;)V
    .locals 2
    .parameter

    .prologue
    .line 1626
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/flurry/android/SdkLogResponse;->getResult()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1628
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cS:Ljava/util/List;

    iget-object v1, p0, Lcom/flurry/android/FlurryAds;->cU:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1629
    :cond_0
    monitor-exit p0

    return-void

    .line 1626
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Ljava/util/List;Ljava/io/DataOutputStream;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/cz;",
            ">;",
            "Ljava/io/DataOutputStream;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2171
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2172
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 2175
    :try_start_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/cz;

    invoke-virtual {v0, p2}, Lcom/flurry/android/cz;->a(Ljava/io/DataOutput;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2172
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2177
    :catch_0
    move-exception v0

    :try_start_2
    sget-object v3, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to convert adLog to byte[]: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/cz;

    invoke-virtual {v0}, Lcom/flurry/android/cz;->at()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/flurry/android/db;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2171
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2180
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/flurry/android/FlurryAdSize;J)Z
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 1657
    invoke-direct {p0, p2}, Lcom/flurry/android/FlurryAds;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v6, v8

    .line 1687
    :cond_0
    :goto_0
    return v6

    .line 1661
    :cond_1
    new-instance v0, Lcom/flurry/android/bw;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/flurry/android/bw;-><init>(Lcom/flurry/android/FlurryAds;Landroid/content/Context;Ljava/lang/String;Lcom/flurry/android/FlurryAdSize;Landroid/view/ViewGroup;ZZ)V

    .line 1663
    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/flurry/android/bw;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1666
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p4, p5, v1}, Lcom/flurry/android/bw;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 1667
    invoke-direct {p0, p2}, Lcom/flurry/android/FlurryAds;->i(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    if-eqz v0, :cond_0

    move v6, v8

    .line 1669
    goto :goto_0

    .line 1673
    :catch_0
    move-exception v0

    .line 1674
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1678
    :catch_1
    move-exception v0

    .line 1679
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0

    .line 1684
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1169
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1170
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1171
    invoke-static {p0, v0}, Lcom/flurry/android/bd;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method private static a(Ljava/io/InputStream;)[B
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1968
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1969
    const/16 v1, 0x80

    new-array v1, v1, [B

    .line 1971
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1973
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 1975
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;IIIIZLcom/flurry/android/FlurryAdSize;)[B
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 1808
    invoke-direct {p0}, Lcom/flurry/android/FlurryAds;->R()Ljava/util/List;

    move-result-object v1

    .line 1809
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cM:Lcom/flurry/android/FlurryFreqCapManager;

    invoke-virtual {v0}, Lcom/flurry/android/FlurryFreqCapManager;->ao()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/FlurryFreqCapInfo;

    invoke-static {}, Lcom/flurry/android/FrequencyCapInfo;->ak()Lcom/flurry/android/FrequencyCapInfo$Builder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/flurry/android/FlurryFreqCapInfo;->getIdHash()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/flurry/android/FrequencyCapInfo$Builder;->setIdHash(Ljava/lang/CharSequence;)Lcom/flurry/android/FrequencyCapInfo$Builder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/flurry/android/FlurryFreqCapInfo;->getExpirationTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/flurry/android/FrequencyCapInfo$Builder;->setExpirationTime(J)Lcom/flurry/android/FrequencyCapInfo$Builder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/flurry/android/FlurryFreqCapInfo;->getNewCap()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/flurry/android/FrequencyCapInfo$Builder;->setNewCap(I)Lcom/flurry/android/FrequencyCapInfo$Builder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/flurry/android/FlurryFreqCapInfo;->getPreviousCap()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/flurry/android/FrequencyCapInfo$Builder;->setPreviousCap(I)Lcom/flurry/android/FrequencyCapInfo$Builder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/flurry/android/FlurryFreqCapInfo;->getPreviousCapType()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/flurry/android/FrequencyCapInfo$Builder;->setPreviousCapType(I)Lcom/flurry/android/FrequencyCapInfo$Builder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/flurry/android/FlurryFreqCapInfo;->getServeTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/flurry/android/FrequencyCapInfo$Builder;->setServeTime(J)Lcom/flurry/android/FrequencyCapInfo$Builder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/flurry/android/FlurryFreqCapInfo;->getViews()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/flurry/android/FrequencyCapInfo$Builder;->setViews(I)Lcom/flurry/android/FrequencyCapInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/FrequencyCapInfo$Builder;->build()Lcom/flurry/android/FrequencyCapInfo;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1812
    :cond_0
    invoke-static {}, Lcom/flurry/android/AdRequest;->ab()Lcom/flurry/android/AdRequest$Builder;

    move-result-object v0

    invoke-static {}, Lcom/flurry/android/FlurryAgent;->w()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/flurry/android/AdRequest$Builder;->setApiKey(Ljava/lang/CharSequence;)Lcom/flurry/android/AdRequest$Builder;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Lcom/flurry/android/AdRequest$Builder;->setAdSpaceName(Ljava/lang/CharSequence;)Lcom/flurry/android/AdRequest$Builder;

    move-result-object v0

    sget-object v3, Lcom/flurry/android/FlurryAds;->cr:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/flurry/android/AdRequest$Builder;->setBindings(Ljava/util/List;)Lcom/flurry/android/AdRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/flurry/android/AdRequest$Builder;->setAdReportedIds(Ljava/util/List;)Lcom/flurry/android/AdRequest$Builder;

    move-result-object v0

    invoke-static {}, Lcom/flurry/android/Location;->as()Lcom/flurry/android/Location$Builder;

    move-result-object v1

    iget v3, p0, Lcom/flurry/android/FlurryAds;->cD:F

    invoke-virtual {v1, v3}, Lcom/flurry/android/Location$Builder;->setLat(F)Lcom/flurry/android/Location$Builder;

    move-result-object v1

    iget v3, p0, Lcom/flurry/android/FlurryAds;->cE:F

    invoke-virtual {v1, v3}, Lcom/flurry/android/Location$Builder;->setLon(F)Lcom/flurry/android/Location$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/Location$Builder;->build()Lcom/flurry/android/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/AdRequest$Builder;->setLocation(Lcom/flurry/android/Location;)Lcom/flurry/android/AdRequest$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/flurry/android/FlurryAds;->cW:Z

    invoke-virtual {v0, v1}, Lcom/flurry/android/AdRequest$Builder;->setTestDevice(Z)Lcom/flurry/android/AdRequest$Builder;

    move-result-object v0

    invoke-static {}, Lcom/flurry/android/FlurryAgent;->getAgentVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/AdRequest$Builder;->setAgentVersion(Ljava/lang/CharSequence;)Lcom/flurry/android/AdRequest$Builder;

    move-result-object v0

    iget-wide v3, p0, Lcom/flurry/android/FlurryAds;->bb:J

    invoke-virtual {v0, v3, v4}, Lcom/flurry/android/AdRequest$Builder;->setSessionId(J)Lcom/flurry/android/AdRequest$Builder;

    move-result-object v0

    invoke-static {}, Lcom/flurry/android/AdViewContainer;->A()Lcom/flurry/android/AdViewContainer$Builder;

    move-result-object v1

    invoke-virtual {v1, p5}, Lcom/flurry/android/AdViewContainer$Builder;->setScreenHeight(I)Lcom/flurry/android/AdViewContainer$Builder;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/flurry/android/AdViewContainer$Builder;->setScreenWidth(I)Lcom/flurry/android/AdViewContainer$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/flurry/android/AdViewContainer$Builder;->setViewHeight(I)Lcom/flurry/android/AdViewContainer$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/flurry/android/AdViewContainer$Builder;->setViewWidth(I)Lcom/flurry/android/AdViewContainer$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/AdViewContainer$Builder;->build()Lcom/flurry/android/AdViewContainer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/AdRequest$Builder;->setAdViewContainer(Lcom/flurry/android/AdViewContainer;)Lcom/flurry/android/AdRequest$Builder;

    move-result-object v0

    invoke-static {}, Lcom/flurry/android/FlurryAgent;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/AdRequest$Builder;->setLocale(Ljava/lang/CharSequence;)Lcom/flurry/android/AdRequest$Builder;

    move-result-object v0

    invoke-static {}, Lcom/flurry/android/FlurryAgent;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/AdRequest$Builder;->setTimezone(Ljava/lang/CharSequence;)Lcom/flurry/android/AdRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/FlurryAds;->aS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/android/AdRequest$Builder;->setOsVersion(Ljava/lang/CharSequence;)Lcom/flurry/android/AdRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/FlurryAds;->cz:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/android/AdRequest$Builder;->setDevicePlatform(Ljava/lang/CharSequence;)Lcom/flurry/android/AdRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/flurry/android/AdRequest$Builder;->setCanDoSKAppStore(Z)Lcom/flurry/android/AdRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/flurry/android/AdRequest$Builder;->setNetworkStatus(I)Lcom/flurry/android/AdRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/flurry/android/AdRequest$Builder;->setFrequencyCapInfos(Ljava/util/List;)Lcom/flurry/android/AdRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/AdRequest$Builder;->build()Lcom/flurry/android/AdRequest;

    move-result-object v0

    .line 1837
    if-eqz p6, :cond_3

    .line 1839
    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/AdRequest;->a(Ljava/lang/Boolean;)V

    .line 1846
    :goto_1
    if-eqz p7, :cond_1

    .line 1848
    invoke-static {}, Lcom/flurry/android/TestAds;->al()Lcom/flurry/android/TestAds$Builder;

    move-result-object v1

    invoke-virtual {p7}, Lcom/flurry/android/FlurryAdSize;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/flurry/android/TestAds$Builder;->setAdspacePlacement(I)Lcom/flurry/android/TestAds$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/TestAds$Builder;->build()Lcom/flurry/android/TestAds;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/AdRequest;->a(Lcom/flurry/android/TestAds;)V

    .line 1851
    :cond_1
    iget-object v1, p0, Lcom/flurry/android/FlurryAds;->cX:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 1853
    invoke-direct {p0}, Lcom/flurry/android/FlurryAds;->N()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/AdRequest;->c(Ljava/util/Map;)V

    .line 1856
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got ad request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1859
    new-instance v1, Lcom/flurry/org/apache/avro/specific/SpecificDatumWriter;

    const-class v2, Lcom/flurry/android/AdRequest;

    invoke-direct {v1, v2}, Lcom/flurry/org/apache/avro/specific/SpecificDatumWriter;-><init>(Ljava/lang/Class;)V

    .line 1860
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1861
    invoke-static {}, Lcom/flurry/org/apache/avro/io/EncoderFactory;->get()Lcom/flurry/org/apache/avro/io/EncoderFactory;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/flurry/org/apache/avro/io/EncoderFactory;->directBinaryEncoder(Ljava/io/OutputStream;Lcom/flurry/org/apache/avro/io/BinaryEncoder;)Lcom/flurry/org/apache/avro/io/BinaryEncoder;

    move-result-object v3

    .line 1864
    :try_start_0
    invoke-virtual {v1, v0, v3}, Lcom/flurry/org/apache/avro/specific/SpecificDatumWriter;->write(Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Encoder;)V

    .line 1865
    invoke-virtual {v3}, Lcom/flurry/org/apache/avro/io/BinaryEncoder;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1871
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 1872
    :goto_2
    return-object v0

    .line 1843
    :cond_3
    invoke-virtual {v0, p1}, Lcom/flurry/android/AdRequest;->b(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1866
    :catch_0
    move-exception v0

    .line 1867
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 1868
    new-array v0, v7, [B

    goto :goto_2
.end method

.method private static b([B)I
    .locals 1
    .parameter

    .prologue
    .line 2012
    new-instance v0, Lcom/flurry/android/CrcMessageDigest;

    invoke-direct {v0}, Lcom/flurry/android/CrcMessageDigest;-><init>()V

    .line 2013
    invoke-virtual {v0, p0}, Lcom/flurry/android/CrcMessageDigest;->update([B)V

    .line 2014
    invoke-virtual {v0}, Lcom/flurry/android/CrcMessageDigest;->getChecksum()I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/flurry/android/FlurryAds;)Z
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/flurry/android/FlurryAds;->cv:Z

    return v0
.end method

.method private b([BLjava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1878
    if-nez p2, :cond_0

    .line 1880
    const/4 v0, 0x0

    .line 1910
    :goto_0
    return v0

    .line 1884
    :cond_0
    const-string v0, "/v5/getAds.do"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1886
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cB:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cB:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1893
    :goto_2
    invoke-direct {p0, p1, v0}, Lcom/flurry/android/FlurryAds;->c([BLjava/lang/String;)[B

    move-result-object v0

    .line 1897
    if-eqz v0, :cond_1

    .line 1899
    :try_start_0
    const-string v1, "/postAdLog.do"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1901
    invoke-direct {p0, v0}, Lcom/flurry/android/FlurryAds;->c([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1910
    :cond_1
    :goto_3
    const/4 v0, 0x1

    goto :goto_0

    .line 1886
    :cond_2
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->getUseHttps()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "https://ads.flurry.com"

    goto :goto_1

    :cond_3
    const-string v0, "http://ads.flurry.com"

    goto :goto_1

    .line 1890
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cC:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cC:Ljava/lang/String;

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->getUseHttps()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "https://adlog.flurry.com"

    goto :goto_4

    :cond_6
    const-string v0, "http://adlog.flurry.com"

    goto :goto_4

    .line 1905
    :catch_0
    move-exception v0

    .line 1907
    sget-object v1, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/android/db;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method static synthetic c(Lcom/flurry/android/FlurryAds;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cy:Ljava/io/File;

    return-object v0
.end method

.method private c([B)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2020
    const-class v0, Lcom/flurry/android/SdkLogResponse;

    invoke-static {p1, v0}, Lcom/flurry/android/FlurryAds;->a([BLjava/lang/Class;)Lcom/flurry/org/apache/avro/specific/SpecificRecordBase;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/SdkLogResponse;

    .line 2021
    if-eqz v0, :cond_0

    .line 2023
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got ad log response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2024
    invoke-virtual {v0}, Lcom/flurry/android/SdkLogResponse;->getResult()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "success"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2027
    invoke-direct {p0, v0}, Lcom/flurry/android/FlurryAds;->a(Lcom/flurry/android/SdkLogResponse;)V

    .line 2037
    :cond_0
    return-void

    .line 2031
    :cond_1
    invoke-virtual {v0}, Lcom/flurry/android/SdkLogResponse;->getErrors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 2033
    sget-object v2, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/flurry/android/db;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c([BLjava/lang/String;)[B
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 1921
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 1922
    const-string v0, "avro/binary"

    invoke-virtual {v1, v0}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 1923
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 1924
    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1925
    const-string v2, "accept"

    const-string v3, "avro/binary"

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1926
    const-string v2, "FM-Checksum"

    invoke-static {p1}, Lcom/flurry/android/FlurryAds;->b([B)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1927
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 1928
    const/16 v3, 0x2710

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1929
    const/16 v3, 0x3a98

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1930
    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    const-string v4, "http.protocol.expect-continue"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 1932
    invoke-static {v2}, Lcom/flurry/android/cn;->a(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/HttpClient;

    move-result-object v2

    .line 1936
    :try_start_0
    invoke-interface {v2, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 1937
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 1938
    const/16 v3, 0xc8

    if-ne v0, v3, :cond_1

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 1940
    sget-object v0, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    const-string v3, "Request successful"

    invoke-static {v0, v3}, Lcom/flurry/android/db;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1941
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/FlurryAds;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 1943
    invoke-virtual {v1}, Lorg/apache/http/entity/ByteArrayEntity;->consumeContent()V

    .line 1944
    invoke-static {v0}, Lcom/flurry/android/FlurryAds;->b([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 1945
    const-string v3, "FM-Checksum"

    invoke-interface {v2, v3}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "FM-Checksum"

    invoke-interface {v2, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1963
    :cond_0
    :goto_0
    return-object v0

    .line 1956
    :cond_1
    sget-object v1, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request to url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed with HTTP = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/android/db;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1963
    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1959
    :catch_0
    move-exception v0

    .line 1961
    sget-object v1, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request to url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed with IOException = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/android/db;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static clearTargetingKeywords()V
    .locals 2

    .prologue
    .line 727
    invoke-static {}, Lcom/flurry/android/FlurryAds;->getInstance()Lcom/flurry/android/FlurryAds;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/flurry/android/FlurryAds;->cX:Ljava/util/Map;

    .line 728
    return-void
.end method

.method public static clearUserCookies()V
    .locals 1

    .prologue
    .line 674
    invoke-static {}, Lcom/flurry/android/FlurryAds;->getInstance()Lcom/flurry/android/FlurryAds;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/android/FlurryAds;->cF:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 675
    return-void
.end method

.method static synthetic d(Lcom/flurry/android/FlurryAds;)Z
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/flurry/android/FlurryAds;->cw:Z

    return v0
.end method

.method public static displayAd(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 506
    if-nez p0, :cond_1

    .line 508
    sget-object v0, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    const-string v1, "Context passed to displayAd was null."

    invoke-static {v0, v1}, Lcom/flurry/android/db;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 511
    :cond_1
    if-nez p1, :cond_2

    .line 513
    sget-object v0, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    const-string v1, "Ad space name passed to displayAd was null."

    invoke-static {v0, v1}, Lcom/flurry/android/db;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 516
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 518
    sget-object v0, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    const-string v1, "Ad space name passed to displayAd was empty."

    invoke-static {v0, v1}, Lcom/flurry/android/db;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 521
    :cond_3
    if-nez p2, :cond_4

    .line 523
    sget-object v0, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    const-string v1, "ViewGroup  passed to displayAd was null."

    invoke-static {v0, v1}, Lcom/flurry/android/db;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 527
    :cond_4
    invoke-static {}, Lcom/flurry/android/FlurryAds;->getInstance()Lcom/flurry/android/FlurryAds;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/flurry/android/FlurryAds;->g(Landroid/content/Context;)V

    .line 531
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAds;->dc:Lcom/flurry/android/FlurryAds;

    invoke-direct {v0, p1}, Lcom/flurry/android/FlurryAds;->n(Ljava/lang/String;)Lcom/flurry/android/bf;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/flurry/android/FlurryAds;->cQ:Lcom/flurry/android/FlurryAdListener;

    if-eqz v2, :cond_5

    instance-of v2, v1, Lcom/flurry/android/at;

    if-eqz v2, :cond_6

    iget-object v0, v0, Lcom/flurry/android/FlurryAds;->cQ:Lcom/flurry/android/FlurryAdListener;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/flurry/android/FlurryAdType;->WEB_BANNER:Lcom/flurry/android/FlurryAdType;

    invoke-interface {v0, v2, v3}, Lcom/flurry/android/FlurryAdListener;->shouldDisplayAd(Ljava/lang/String;Lcom/flurry/android/FlurryAdType;)Z

    :cond_5
    :goto_1
    invoke-virtual {v1, p0, p2}, Lcom/flurry/android/bf;->a(Landroid/content/Context;Landroid/view/ViewGroup;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 533
    :catch_0
    move-exception v0

    .line 535
    sget-object v1, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/db;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 531
    :cond_6
    :try_start_1
    iget-object v0, v0, Lcom/flurry/android/FlurryAds;->cQ:Lcom/flurry/android/FlurryAdListener;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/flurry/android/FlurryAdType;->WEB_TAKEOVER:Lcom/flurry/android/FlurryAdType;

    invoke-interface {v0, v2, v3}, Lcom/flurry/android/FlurryAdListener;->shouldDisplayAd(Ljava/lang/String;Lcom/flurry/android/FlurryAdType;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method static e(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1572
    move v2, v1

    .line 1574
    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_2

    .line 1577
    invoke-static {p0}, Lcom/flurry/android/FlurryAds;->i(Landroid/content/Context;)Z

    move-result v3

    if-ne v3, v0, :cond_0

    invoke-static {p0}, Lcom/flurry/android/FlurryAds;->h(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1579
    const/16 v3, 0x2710

    const/16 v4, 0x3a98

    invoke-static {p1, v3, v4, v0}, Lcom/flurry/android/bd;->a(Ljava/lang/String;IIZ)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 1580
    if-eqz v3, :cond_1

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_1

    .line 1582
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL hit succeeded for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1601
    :goto_1
    return v0

    .line 1591
    :cond_0
    const-wide/16 v3, 0x64

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1599
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1593
    :catch_0
    move-exception v3

    .line 1595
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static enableTestAds(Z)V
    .locals 1
    .parameter

    .prologue
    .line 924
    invoke-static {}, Lcom/flurry/android/FlurryAds;->getInstance()Lcom/flurry/android/FlurryAds;

    move-result-object v0

    iput-boolean p0, v0, Lcom/flurry/android/FlurryAds;->cW:Z

    .line 925
    return-void
.end method

.method public static fetchAd(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/flurry/android/FlurryAdSize;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 451
    if-nez p0, :cond_1

    .line 453
    sget-object v0, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    const-string v1, "Context passed to fetchAd was null."

    invoke-static {v0, v1}, Lcom/flurry/android/db;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    if-nez p1, :cond_2

    .line 458
    sget-object v0, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    const-string v1, "Ad space name passed to fetchAd was null."

    invoke-static {v0, v1}, Lcom/flurry/android/db;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 461
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 463
    sget-object v0, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    const-string v1, "Ad space name passed to fetchAd was empty."

    invoke-static {v0, v1}, Lcom/flurry/android/db;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 466
    :cond_3
    if-nez p2, :cond_4

    .line 468
    sget-object v0, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    const-string v1, "ViewGroup passed to fetchAd was null."

    invoke-static {v0, v1}, Lcom/flurry/android/db;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 471
    :cond_4
    if-nez p3, :cond_5

    .line 473
    sget-object v0, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    const-string v1, "FlurryAdSize passed to fetchAd was null."

    invoke-static {v0, v1}, Lcom/flurry/android/db;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 477
    :cond_5
    invoke-static {}, Lcom/flurry/android/FlurryAds;->getInstance()Lcom/flurry/android/FlurryAds;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/flurry/android/FlurryAds;->g(Landroid/content/Context;)V

    .line 481
    :try_start_0
    sget-object v1, Lcom/flurry/android/FlurryAds;->dc:Lcom/flurry/android/FlurryAds;

    invoke-direct {v1, p1}, Lcom/flurry/android/FlurryAds;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p0}, Lcom/flurry/android/FlurryAds;->h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v1, p0, p1}, Lcom/flurry/android/FlurryAds;->c(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 483
    :catch_0
    move-exception v0

    .line 485
    sget-object v1, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/db;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 481
    :cond_6
    :try_start_1
    invoke-static {p0}, Lcom/flurry/android/FlurryAds;->h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/flurry/android/bw;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Lcom/flurry/android/bw;-><init>(Lcom/flurry/android/FlurryAds;Landroid/content/Context;Ljava/lang/String;Lcom/flurry/android/FlurryAdSize;Landroid/view/ViewGroup;ZZ)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/flurry/android/bw;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private declared-synchronized g(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 241
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/android/FlurryAds;->dd:Z

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".flurryadlog."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/flurry/android/FlurryAgent;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/FlurryAds;->cx:Ljava/io/File;

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".flurryfreqcap."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/flurry/android/FlurryAgent;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/FlurryAds;->cy:Ljava/io/File;

    .line 251
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1, v0, v1}, Lcom/flurry/android/FlurryAds;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/android/FlurryAds;->cA:Z

    .line 253
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cJ:Lcom/flurry/android/aj;

    iput-object p1, v0, Lcom/flurry/android/aj;->bE:Landroid/content/Context;

    .line 256
    invoke-direct {p0}, Lcom/flurry/android/FlurryAds;->T()V

    .line 257
    sget-object v0, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    const-string v1, "Attempting to load FreqCap data"

    invoke-static {v0, v1}, Lcom/flurry/android/db;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-direct {p0}, Lcom/flurry/android/FlurryAds;->V()V

    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/FlurryAds;->dd:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    :cond_0
    monitor-exit p0

    return-void

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getAd(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/flurry/android/FlurryAdSize;J)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 287
    if-nez p0, :cond_0

    .line 289
    sget-object v0, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    const-string v1, "Context passed to getAd was null."

    invoke-static {v0, v1}, Lcom/flurry/android/db;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    .line 321
    :goto_0
    return v0

    .line 292
    :cond_0
    if-nez p1, :cond_1

    .line 294
    sget-object v0, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    const-string v1, "Ad space name passed to getAd was null."

    invoke-static {v0, v1}, Lcom/flurry/android/db;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    .line 295
    goto :goto_0

    .line 297
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 299
    sget-object v0, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    const-string v1, "Ad space name passed to getAd was empty."

    invoke-static {v0, v1}, Lcom/flurry/android/db;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    .line 300
    goto :goto_0

    .line 302
    :cond_2
    if-nez p2, :cond_3

    .line 304
    sget-object v0, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    const-string v1, "ViewGroup passed to getAd was null."

    invoke-static {v0, v1}, Lcom/flurry/android/db;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    .line 305
    goto :goto_0

    .line 307
    :cond_3
    if-nez p3, :cond_4

    .line 309
    sget-object v0, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    const-string v1, "FlurryAdSize passed to getAd was null."

    invoke-static {v0, v1}, Lcom/flurry/android/db;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    .line 310
    goto :goto_0

    .line 312
    :cond_4
    invoke-static {}, Lcom/flurry/android/FlurryAds;->getInstance()Lcom/flurry/android/FlurryAds;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/flurry/android/FlurryAds;->g(Landroid/content/Context;)V

    .line 316
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAds;->dc:Lcom/flurry/android/FlurryAds;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/FlurryAds;->a(Landroid/content/Context;Ljava/lang/String;Lcom/flurry/android/FlurryAdSize;Landroid/view/ViewGroup;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 318
    :catch_0
    move-exception v0

    .line 320
    sget-object v1, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/db;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v7

    .line 321
    goto :goto_0
.end method

.method static getInstance()Lcom/flurry/android/FlurryAds;
    .locals 1

    .prologue
    .line 231
    sget-object v0, Lcom/flurry/android/FlurryAds;->dc:Lcom/flurry/android/FlurryAds;

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Lcom/flurry/android/FlurryAds;

    invoke-direct {v0}, Lcom/flurry/android/FlurryAds;-><init>()V

    sput-object v0, Lcom/flurry/android/FlurryAds;->dc:Lcom/flurry/android/FlurryAds;

    .line 235
    :cond_0
    sget-object v0, Lcom/flurry/android/FlurryAds;->dc:Lcom/flurry/android/FlurryAds;

    return-object v0
.end method

.method private static h(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 791
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 792
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    .line 793
    return v0
.end method

.method private static i(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 797
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 812
    :cond_0
    :goto_0
    return v0

    .line 804
    :cond_1
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 805
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 806
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v1

    .line 808
    :goto_1
    if-nez v0, :cond_0

    .line 809
    sget-object v1, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    const-string v2, "No connectivity found."

    invoke-static {v1, v2}, Lcom/flurry/android/db;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 806
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private i(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 2996
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cJ:Lcom/flurry/android/aj;

    invoke-virtual {v0, p1}, Lcom/flurry/android/aj;->i(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static initializeAds(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 344
    if-nez p0, :cond_0

    .line 346
    sget-object v0, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    const-string v1, "Context passed to initializeAds was null."

    invoke-static {v0, v1}, Lcom/flurry/android/db;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :goto_0
    return-void

    .line 349
    :cond_0
    invoke-static {}, Lcom/flurry/android/FlurryAds;->getInstance()Lcom/flurry/android/FlurryAds;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/flurry/android/FlurryAds;->g(Landroid/content/Context;)V

    .line 353
    :try_start_0
    sget-object v1, Lcom/flurry/android/FlurryAds;->dc:Lcom/flurry/android/FlurryAds;

    sget-object v0, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    const-string v2, "Initializing ads -- requesting ads with precaching enabled on the server"

    invoke-static {v0, v2}, Lcom/flurry/android/db;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/flurry/android/FlurryAgent;->m()Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v0, 0x1f4

    :cond_1
    iget-object v2, v1, Lcom/flurry/android/FlurryAds;->cK:Landroid/os/Handler;

    new-instance v3, Lcom/flurry/android/cr;

    invoke-direct {v3, v1, p0}, Lcom/flurry/android/cr;-><init>(Lcom/flurry/android/FlurryAds;Landroid/content/Context;)V

    int-to-long v0, v0

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 355
    :catch_0
    move-exception v0

    .line 357
    sget-object v1, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/db;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static isAdAvailable(Landroid/content/Context;Ljava/lang/String;Lcom/flurry/android/FlurryAdSize;J)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 380
    if-nez p0, :cond_0

    .line 382
    sget-object v0, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    const-string v1, "Context passed to isAdAvailable was null."

    invoke-static {v0, v1}, Lcom/flurry/android/db;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    .line 410
    :goto_0
    return v0

    .line 385
    :cond_0
    if-nez p1, :cond_1

    .line 387
    sget-object v0, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    const-string v1, "Ad space name passed to isAdAvailable was null."

    invoke-static {v0, v1}, Lcom/flurry/android/db;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    .line 388
    goto :goto_0

    .line 390
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 392
    sget-object v0, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    const-string v1, "Ad space name passed to isAdAvailable was empty."

    invoke-static {v0, v1}, Lcom/flurry/android/db;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    .line 393
    goto :goto_0

    .line 395
    :cond_2
    if-nez p2, :cond_3

    .line 397
    sget-object v0, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    const-string v1, "FlurryAdSize passed to isAdAvailable was null."

    invoke-static {v0, v1}, Lcom/flurry/android/db;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    .line 398
    goto :goto_0

    .line 401
    :cond_3
    invoke-static {}, Lcom/flurry/android/FlurryAds;->getInstance()Lcom/flurry/android/FlurryAds;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/flurry/android/FlurryAds;->g(Landroid/content/Context;)V

    .line 405
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAds;->dc:Lcom/flurry/android/FlurryAds;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/FlurryAds;->a(Landroid/content/Context;Ljava/lang/String;Lcom/flurry/android/FlurryAdSize;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 407
    :catch_0
    move-exception v0

    .line 409
    sget-object v1, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/db;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v6

    .line 410
    goto :goto_0
.end method

.method static synthetic j(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 75
    invoke-static {p0}, Lcom/flurry/android/FlurryAds;->i(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic k(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 75
    invoke-static {p0}, Lcom/flurry/android/FlurryAds;->h(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private l(Ljava/lang/String;)Lcom/flurry/android/AdUnit;
    .locals 1
    .parameter

    .prologue
    .line 1693
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cJ:Lcom/flurry/android/aj;

    invoke-virtual {v0, p1}, Lcom/flurry/android/aj;->h(Ljava/lang/String;)Lcom/flurry/android/AdUnit;

    move-result-object v0

    .line 1694
    return-object v0
.end method

.method private n(Ljava/lang/String;)Lcom/flurry/android/bf;
    .locals 1
    .parameter

    .prologue
    .line 3006
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cL:Lcom/flurry/android/dc;

    invoke-virtual {v0, p1}, Lcom/flurry/android/dc;->n(Ljava/lang/String;)Lcom/flurry/android/bf;

    move-result-object v0

    return-object v0
.end method

.method private o(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 3011
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cL:Lcom/flurry/android/dc;

    invoke-virtual {v0, p1}, Lcom/flurry/android/dc;->o(Ljava/lang/String;)V

    .line 3012
    return-void
.end method

.method public static removeAd(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 557
    if-nez p0, :cond_0

    .line 559
    sget-object v0, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    const-string v1, "Context passed to removeAd was null."

    invoke-static {v0, v1}, Lcom/flurry/android/db;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    :goto_0
    return-void

    .line 562
    :cond_0
    if-nez p1, :cond_1

    .line 564
    sget-object v0, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    const-string v1, "Ad space name passed to removeAd was null."

    invoke-static {v0, v1}, Lcom/flurry/android/db;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 567
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 569
    sget-object v0, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    const-string v1, "Ad space name passed to removeAd was empty."

    invoke-static {v0, v1}, Lcom/flurry/android/db;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 572
    :cond_2
    if-nez p2, :cond_3

    .line 574
    sget-object v0, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    const-string v1, "ViewGroup passed to removeAd was null."

    invoke-static {v0, v1}, Lcom/flurry/android/db;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 577
    :cond_3
    invoke-static {}, Lcom/flurry/android/FlurryAds;->getInstance()Lcom/flurry/android/FlurryAds;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/flurry/android/FlurryAds;->g(Landroid/content/Context;)V

    .line 580
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAds;->dc:Lcom/flurry/android/FlurryAds;

    invoke-virtual {v0, p0, p1}, Lcom/flurry/android/FlurryAds;->d(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 582
    :catch_0
    move-exception v0

    .line 584
    sget-object v1, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/db;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setAdListener(Lcom/flurry/android/FlurryAdListener;)V
    .locals 1
    .parameter

    .prologue
    .line 602
    invoke-static {}, Lcom/flurry/android/FlurryAds;->getInstance()Lcom/flurry/android/FlurryAds;

    move-result-object v0

    iput-object p0, v0, Lcom/flurry/android/FlurryAds;->cQ:Lcom/flurry/android/FlurryAdListener;

    .line 603
    return-void
.end method

.method public static setAdLogUrl(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 738
    invoke-static {}, Lcom/flurry/android/FlurryAds;->getInstance()Lcom/flurry/android/FlurryAds;

    move-result-object v0

    iput-object p0, v0, Lcom/flurry/android/FlurryAds;->cC:Ljava/lang/String;

    .line 739
    return-void
.end method

.method public static setAdServerUrl(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 733
    invoke-static {}, Lcom/flurry/android/FlurryAds;->getInstance()Lcom/flurry/android/FlurryAds;

    move-result-object v0

    iput-object p0, v0, Lcom/flurry/android/FlurryAds;->cB:Ljava/lang/String;

    .line 734
    return-void
.end method

.method public static setCustomAdNetworkHandler(Lcom/flurry/android/ICustomAdNetworkHandler;)V
    .locals 2
    .parameter

    .prologue
    .line 622
    if-nez p0, :cond_0

    .line 624
    sget-object v0, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    const-string v1, "ICustomAdNetworkHandler passed to setCustomAdNetworkHandler was null."

    invoke-static {v0, v1}, Lcom/flurry/android/db;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    :goto_0
    return-void

    .line 627
    :cond_0
    invoke-static {}, Lcom/flurry/android/FlurryAds;->getInstance()Lcom/flurry/android/FlurryAds;

    move-result-object v0

    iput-object p0, v0, Lcom/flurry/android/FlurryAds;->cN:Lcom/flurry/android/ICustomAdNetworkHandler;

    goto :goto_0
.end method

.method public static setLocation(FF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 616
    invoke-static {}, Lcom/flurry/android/FlurryAds;->getInstance()Lcom/flurry/android/FlurryAds;

    move-result-object v0

    iput p0, v0, Lcom/flurry/android/FlurryAds;->cD:F

    .line 617
    invoke-static {}, Lcom/flurry/android/FlurryAds;->getInstance()Lcom/flurry/android/FlurryAds;

    move-result-object v0

    iput p1, v0, Lcom/flurry/android/FlurryAds;->cE:F

    .line 618
    return-void
.end method

.method public static setTargetingKeywords(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 705
    if-nez p0, :cond_1

    .line 707
    sget-object v0, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    const-string v1, "targetingKeywords Map passed to setTargetingKeywords was null."

    invoke-static {v0, v1}, Lcom/flurry/android/db;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    :cond_0
    :goto_0
    return-void

    .line 710
    :cond_1
    if-eqz p0, :cond_0

    .line 712
    invoke-static {}, Lcom/flurry/android/FlurryAds;->getInstance()Lcom/flurry/android/FlurryAds;

    move-result-object v0

    iput-object p0, v0, Lcom/flurry/android/FlurryAds;->cX:Ljava/util/Map;

    goto :goto_0
.end method

.method public static setUserCookies(Ljava/util/Map;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 655
    if-nez p0, :cond_1

    .line 657
    sget-object v0, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    const-string v1, "userCookies Map passed to setUserCookies was null."

    invoke-static {v0, v1}, Lcom/flurry/android/db;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    :cond_0
    return-void

    .line 660
    :cond_1
    invoke-static {}, Lcom/flurry/android/FlurryAds;->getInstance()Lcom/flurry/android/FlurryAds;

    move-result-object v1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/flurry/android/FlurryAds;->cF:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    const-string v3, "User cookie keys and values may not be null."

    invoke-static {v0, v3}, Lcom/flurry/android/db;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 817
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->w()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final J()V
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cM:Lcom/flurry/android/FlurryFreqCapManager;

    invoke-virtual {v0}, Lcom/flurry/android/FlurryFreqCapManager;->ap()V

    .line 753
    return-void
.end method

.method final K()V
    .locals 0

    .prologue
    .line 757
    invoke-direct {p0}, Lcom/flurry/android/FlurryAds;->P()V

    .line 758
    return-void
.end method

.method final L()J
    .locals 2

    .prologue
    .line 786
    iget-wide v0, p0, Lcom/flurry/android/FlurryAds;->bb:J

    return-wide v0
.end method

.method final declared-synchronized M()J
    .locals 4

    .prologue
    .line 838
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/android/FlurryAds;->bc:J

    sub-long/2addr v0, v2

    .line 839
    iget-wide v2, p0, Lcom/flurry/android/FlurryAds;->cI:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    :goto_0
    iput-wide v0, p0, Lcom/flurry/android/FlurryAds;->cI:J

    .line 841
    iget-wide v0, p0, Lcom/flurry/android/FlurryAds;->cI:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 839
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/flurry/android/FlurryAds;->cI:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flurry/android/FlurryAds;->cI:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 838
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final O()Ljava/util/Map;
    .locals 4
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
    .line 1377
    iget-object v1, p0, Lcom/flurry/android/FlurryAds;->cF:Ljava/util/Map;

    .line 1378
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->de:Lcom/flurry/android/FlurryUserIdProvider;

    if-eqz v0, :cond_0

    .line 1380
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->de:Lcom/flurry/android/FlurryUserIdProvider;

    iget-object v2, v0, Lcom/flurry/android/FlurryUserIdProvider;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    const-string v0, ""

    .line 1381
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1383
    const-string v2, "appCloudUserId"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1386
    :cond_0
    return-object v1

    .line 1380
    :cond_1
    iget-object v0, v0, Lcom/flurry/android/FlurryUserIdProvider;->mContext:Landroid/content/Context;

    const-string v2, "FLURRY_SHARED_PREFERENCES"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "flurry_last_user_id"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method final declared-synchronized S()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2041
    monitor-enter p0

    .line 2045
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cx:Ljava/io/File;

    invoke-static {v0}, Lcom/flurry/android/bc;->b(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 2046
    if-nez v0, :cond_0

    .line 2066
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/flurry/android/bd;->a(Ljava/io/Closeable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2067
    :goto_0
    monitor-exit p0

    return-void

    .line 2051
    :cond_0
    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/flurry/android/FlurryAds;->cx:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2052
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 2053
    const v0, 0xb5fa

    :try_start_3
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2054
    iget-object v2, p0, Lcom/flurry/android/FlurryAds;->cS:Ljava/util/List;

    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 2056
    :try_start_4
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cS:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/flurry/android/FlurryAds;->a(Ljava/util/List;Ljava/io/DataOutputStream;)V

    .line 2057
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2058
    const/4 v0, 0x0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 2066
    :try_start_6
    invoke-static {v1}, Lcom/flurry/android/bd;->a(Ljava/io/Closeable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 2041
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2057
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    .line 2060
    :catch_0
    move-exception v0

    .line 2062
    :goto_1
    :try_start_9
    sget-object v2, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/flurry/android/db;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 2066
    :try_start_a
    invoke-static {v1}, Lcom/flurry/android/bd;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v1, v2

    :goto_2
    invoke-static {v1}, Lcom/flurry/android/bd;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catchall_3
    move-exception v0

    goto :goto_2

    .line 2060
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method final declared-synchronized U()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2184
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cM:Lcom/flurry/android/FlurryFreqCapManager;

    invoke-virtual {v0}, Lcom/flurry/android/FlurryFreqCapManager;->ap()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2190
    :try_start_1
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cy:Ljava/io/File;

    invoke-static {v0}, Lcom/flurry/android/bc;->b(Ljava/io/File;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 2191
    if-nez v0, :cond_0

    .line 2211
    const/4 v0, 0x0

    :try_start_2
    invoke-static {v0}, Lcom/flurry/android/bd;->a(Ljava/io/Closeable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2212
    :goto_0
    monitor-exit p0

    return-void

    .line 2196
    :cond_0
    :try_start_3
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/flurry/android/FlurryAds;->cy:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2197
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 2199
    :try_start_4
    iget-object v2, p0, Lcom/flurry/android/FlurryAds;->cM:Lcom/flurry/android/FlurryFreqCapManager;

    monitor-enter v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 2201
    :try_start_5
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cM:Lcom/flurry/android/FlurryFreqCapManager;

    invoke-direct {p0, v0, v1}, Lcom/flurry/android/FlurryAds;->a(Lcom/flurry/android/FlurryFreqCapManager;Ljava/io/DataOutputStream;)V

    .line 2202
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2203
    const/4 v0, 0x0

    :try_start_6
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .line 2211
    :try_start_7
    invoke-static {v1}, Lcom/flurry/android/bd;->a(Ljava/io/Closeable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 2184
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2202
    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    .line 2205
    :catch_0
    move-exception v0

    .line 2207
    :goto_1
    :try_start_a
    sget-object v2, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/flurry/android/db;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 2211
    :try_start_b
    invoke-static {v1}, Lcom/flurry/android/bd;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v1, v2

    :goto_2
    invoke-static {v1}, Lcom/flurry/android/bd;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :catchall_3
    move-exception v0

    goto :goto_2

    .line 2205
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method final W()Lcom/flurry/android/cz;
    .locals 1

    .prologue
    .line 2357
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cG:Lcom/flurry/android/cz;

    return-object v0
.end method

.method final X()Lcom/flurry/android/AdUnit;
    .locals 1

    .prologue
    .line 2367
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cH:Lcom/flurry/android/AdUnit;

    return-object v0
.end method

.method final declared-synchronized a(Lcom/flurry/android/cz;Ljava/lang/String;ZLjava/util/Map;)Lcom/flurry/android/cz;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/cz;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/android/cz;"
        }
    .end annotation

    .prologue
    .line 2321
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeAdState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2322
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2324
    :try_start_1
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2326
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeAdState added adLog = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2329
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lcom/flurry/android/FlurryAds;->a(Ljava/lang/String;ZLjava/util/Map;)Lcom/flurry/android/bu;

    move-result-object v0

    .line 2330
    invoke-virtual {p1, v0}, Lcom/flurry/android/cz;->a(Lcom/flurry/android/bu;)V

    .line 2331
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2332
    monitor-exit p0

    return-object p1

    .line 2331
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2321
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;ZLcom/flurry/android/FlurryAdSize;)Ljava/util/List;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/view/ViewGroup;",
            "Z",
            "Lcom/flurry/android/FlurryAdSize;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/AdUnit;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 2930
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cM:Lcom/flurry/android/FlurryFreqCapManager;

    invoke-virtual {v0}, Lcom/flurry/android/FlurryFreqCapManager;->ap()V

    .line 2935
    invoke-static {p1}, Lcom/flurry/android/bd;->n(Landroid/content/Context;)I

    move-result v0

    invoke-static {p1}, Lcom/flurry/android/bd;->o(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    packed-switch v2, :pswitch_data_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    move-object v1, v0

    .line 2936
    :goto_0
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2937
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 2939
    invoke-static {p1}, Lcom/flurry/android/bd;->n(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Lcom/flurry/android/bd;->o(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 2940
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2941
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2943
    sget-object v0, Lcom/flurry/android/FlurryAdSize;->BANNER_BOTTOM:Lcom/flurry/android/FlurryAdSize;

    invoke-virtual {p5, v0}, Lcom/flurry/android/FlurryAdSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/flurry/android/FlurryAdSize;->BANNER_TOP:Lcom/flurry/android/FlurryAdSize;

    invoke-virtual {p5, v0}, Lcom/flurry/android/FlurryAdSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2945
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    .line 2947
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    invoke-static {p1, v0}, Lcom/flurry/android/bd;->a(Landroid/content/Context;I)I

    move-result v3

    .line 2949
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    if-lez v0, :cond_2

    .line 2951
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-static {p1, v0}, Lcom/flurry/android/bd;->a(Landroid/content/Context;I)I

    move-result v2

    :cond_2
    move-object v0, p0

    move-object v1, p2

    move v6, p4

    move-object v7, p5

    .line 2954
    invoke-direct/range {v0 .. v7}, Lcom/flurry/android/FlurryAds;->a(Ljava/lang/String;IIIIZLcom/flurry/android/FlurryAdSize;)[B

    move-result-object v1

    .line 2955
    if-eqz v1, :cond_3

    array-length v0, v1

    if-ge v0, v8, :cond_4

    .line 2957
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 2986
    :goto_1
    return-object v0

    .line 2935
    :pswitch_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    .line 2959
    :cond_4
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cB:Ljava/lang/String;

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/flurry/android/FlurryAds;->cB:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/v5/getAds.do"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-direct {p0, v1, v0}, Lcom/flurry/android/FlurryAds;->c([BLjava/lang/String;)[B

    move-result-object v0

    .line 2960
    if-eqz v0, :cond_5

    array-length v1, v0

    if-ge v1, v8, :cond_8

    .line 2962
    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 2959
    :cond_6
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->getUseHttps()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "https://ads.flurry.com/v5/getAds.do"

    goto :goto_2

    :cond_7
    const-string v0, "http://ads.flurry.com/v5/getAds.do"

    goto :goto_2

    .line 2964
    :cond_8
    const-class v1, Lcom/flurry/android/AdResponse;

    invoke-static {v0, v1}, Lcom/flurry/android/FlurryAds;->a([BLjava/lang/Class;)Lcom/flurry/org/apache/avro/specific/SpecificRecordBase;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AdResponse;

    .line 2965
    if-nez v0, :cond_9

    .line 2967
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 2970
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got ad response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2972
    invoke-virtual {v0}, Lcom/flurry/android/AdResponse;->getErrors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b

    .line 2974
    sget-object v1, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    const-string v2, "Ad server responded with the following error(s):"

    invoke-static {v1, v2}, Lcom/flurry/android/db;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2975
    invoke-virtual {v0}, Lcom/flurry/android/AdResponse;->getErrors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 2977
    sget-object v2, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/flurry/android/db;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2979
    :cond_a
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto/16 :goto_1

    .line 2981
    :cond_b
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {v0}, Lcom/flurry/android/AdResponse;->getAdUnits()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lcom/flurry/android/AdResponse;->getAdUnits()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_d

    .line 2983
    :cond_c
    sget-object v0, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    const-string v1, "Ad server responded but sent no ad units."

    invoke-static {v0, v1}, Lcom/flurry/android/db;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2984
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto/16 :goto_1

    .line 2986
    :cond_d
    invoke-virtual {v0}, Lcom/flurry/android/AdResponse;->getAdUnits()Ljava/util/List;

    move-result-object v0

    goto/16 :goto_1

    .line 2935
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method final a(Landroid/content/Context;JJ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 743
    new-instance v0, Lcom/flurry/android/FlurryUserIdProvider;

    invoke-direct {v0, p1}, Lcom/flurry/android/FlurryUserIdProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/android/FlurryAds;->de:Lcom/flurry/android/FlurryUserIdProvider;

    .line 744
    iput-wide p2, p0, Lcom/flurry/android/FlurryAds;->bb:J

    .line 745
    iput-wide p4, p0, Lcom/flurry/android/FlurryAds;->bc:J

    .line 746
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/android/FlurryAds;->cI:J

    .line 747
    return-void
.end method

.method final a(Landroid/content/Context;Ljava/lang/String;Lcom/flurry/android/AdUnit;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1392
    const-string v0, "market://details?id="

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1393
    invoke-virtual {p3}, Lcom/flurry/android/AdUnit;->getAdSpace()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1394
    iget-boolean v1, p0, Lcom/flurry/android/FlurryAds;->cA:Z

    if-eqz v1, :cond_1

    .line 1395
    invoke-virtual {p0, p1, p2, v0}, Lcom/flurry/android/FlurryAds;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1396
    sget-object v0, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot launch Google Play url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/db;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    :cond_0
    :goto_0
    return-void

    .line 1399
    :cond_1
    const-string v1, "market://details?id="

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1400
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://market.android.com/details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1401
    invoke-virtual {p0, p1, v1, v0}, Lcom/flurry/android/FlurryAds;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 1404
    :cond_2
    sget-object v0, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected Google Play url scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/db;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method final a(Lcom/flurry/android/AdUnit;)V
    .locals 0
    .parameter

    .prologue
    .line 2362
    iput-object p1, p0, Lcom/flurry/android/FlurryAds;->cH:Lcom/flurry/android/AdUnit;

    .line 2363
    return-void
.end method

.method final declared-synchronized a(Lcom/flurry/android/cz;)V
    .locals 2
    .parameter

    .prologue
    .line 929
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x7fff

    if-ge v0, v1, :cond_0

    .line 931
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 932
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cT:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/flurry/android/cz;->at()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 934
    :cond_0
    monitor-exit p0

    return-void

    .line 929
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1193
    .line 1195
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    invoke-static {p1, p2}, Lcom/flurry/android/bd;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1198
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    :goto_1
    if-eqz v1, :cond_0

    const-string v2, "adSpaceName"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1200
    :cond_0
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1201
    const/4 v0, 0x1

    .line 1207
    :cond_1
    :goto_2
    return v0

    .line 1198
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "targetIntent"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    .line 1202
    :catch_0
    move-exception v1

    .line 1203
    sget-object v2, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    const-string v3, "Cannot launch Activity"

    invoke-static {v2, v3, v1}, Lcom/flurry/android/db;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method final a(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1081
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/FlurryAds;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 1082
    invoke-direct {p0, p2}, Lcom/flurry/android/FlurryAds;->n(Ljava/lang/String;)Lcom/flurry/android/bf;

    move-result-object v0

    .line 1083
    if-nez v0, :cond_0

    .line 1085
    const/4 v0, 0x0

    .line 1091
    :goto_0
    return v0

    .line 1090
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/flurry/android/FlurryAds;->displayAd(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)V

    .line 1091
    const/4 v0, 0x1

    goto :goto_0
.end method

.method final a(Landroid/content/Context;Ljava/lang/String;Lcom/flurry/android/FlurryAdSize;Landroid/view/ViewGroup;J)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1005
    invoke-direct {p0, p2}, Lcom/flurry/android/FlurryAds;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1007
    invoke-static {p1}, Lcom/flurry/android/FlurryAds;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/flurry/android/FlurryAds;->h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1009
    new-instance v0, Lcom/flurry/android/bw;

    const-wide/16 v1, 0x0

    cmp-long v1, p5, v1

    if-nez v1, :cond_0

    const/4 v6, 0x1

    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v1, p5, v1

    if-nez v1, :cond_1

    const/4 v7, 0x1

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/flurry/android/bw;-><init>(Lcom/flurry/android/FlurryAds;Landroid/content/Context;Ljava/lang/String;Lcom/flurry/android/FlurryAdSize;Landroid/view/ViewGroup;ZZ)V

    .line 1011
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/flurry/android/bw;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1012
    const-wide/16 v1, 0x0

    cmp-long v1, p5, v1

    if-lez v1, :cond_3

    .line 1016
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p5, p6, v1}, Lcom/flurry/android/bw;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 1017
    invoke-direct {p0, p2}, Lcom/flurry/android/FlurryAds;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1019
    invoke-virtual {p0, p1, p2, p4}, Lcom/flurry/android/FlurryAds;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    .line 1052
    :goto_2
    return v0

    .line 1009
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 1022
    :catch_0
    move-exception v0

    .line 1023
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1025
    const/4 v0, 0x0

    goto :goto_2

    .line 1026
    :catch_1
    move-exception v0

    .line 1027
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    .line 1029
    const/4 v0, 0x0

    goto :goto_2

    .line 1031
    :catch_2
    move-exception v0

    const/4 v0, 0x0

    goto :goto_2

    .line 1036
    :cond_2
    invoke-static {p1}, Lcom/flurry/android/FlurryAds;->i(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1038
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cQ:Lcom/flurry/android/FlurryAdListener;

    if-eqz v0, :cond_3

    .line 1040
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cQ:Lcom/flurry/android/FlurryAdListener;

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/flurry/android/FlurryAdListener;->spaceDidFailToReceiveAd(Ljava/lang/String;)V

    .line 1043
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 1047
    :cond_4
    invoke-static {p1}, Lcom/flurry/android/FlurryAds;->h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1049
    invoke-virtual {p0, p1, p2, p4}, Lcom/flurry/android/FlurryAds;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)Z

    move-result v0

    goto :goto_2

    .line 1052
    :cond_5
    const/4 v0, 0x0

    goto :goto_2
.end method

.method final b(Lcom/flurry/android/cz;)V
    .locals 0
    .parameter

    .prologue
    .line 2352
    iput-object p1, p0, Lcom/flurry/android/FlurryAds;->cG:Lcom/flurry/android/cz;

    .line 2353
    return-void
.end method

.method final declared-synchronized b(Ljava/io/DataInputStream;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2154
    monitor-enter p0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 2155
    if-eqz v0, :cond_0

    .line 2157
    iget-object v1, p0, Lcom/flurry/android/FlurryAds;->cS:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2161
    :try_start_1
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cS:Ljava/util/List;

    new-instance v2, Lcom/flurry/android/cz;

    invoke-direct {v2, p1}, Lcom/flurry/android/cz;-><init>(Ljava/io/DataInput;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2162
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2154
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2163
    :cond_0
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcom/flurry/android/FlurryAds;->cv:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2166
    monitor-exit p0

    return-void
.end method

.method final b(Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 761
    iget v0, p0, Lcom/flurry/android/FlurryAds;->cR:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/android/FlurryAds;->cR:I

    .line 762
    const/4 v0, 0x1

    iget v1, p0, Lcom/flurry/android/FlurryAds;->cR:I

    if-ne v0, v1, :cond_0

    .line 763
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cQ:Lcom/flurry/android/FlurryAdListener;

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cQ:Lcom/flurry/android/FlurryAdListener;

    invoke-interface {v0, p1}, Lcom/flurry/android/FlurryAdListener;->onAdOpened(Ljava/lang/String;)V

    .line 768
    :cond_0
    if-eqz p2, :cond_1

    .line 769
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cQ:Lcom/flurry/android/FlurryAdListener;

    if-eqz v0, :cond_1

    .line 770
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cQ:Lcom/flurry/android/FlurryAdListener;

    invoke-interface {v0, p1}, Lcom/flurry/android/FlurryAdListener;->onApplicationExit(Ljava/lang/String;)V

    .line 773
    :cond_1
    return-void
.end method

.method final b(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 861
    iput-object p1, p0, Lcom/flurry/android/FlurryAds;->aX:Ljava/util/Map;

    .line 862
    return-void
.end method

.method final b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1229
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 1230
    invoke-virtual {p0, p1, v0, p3}, Lcom/flurry/android/FlurryAds;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method final c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1057
    invoke-direct {p0, p2}, Lcom/flurry/android/FlurryAds;->l(Ljava/lang/String;)Lcom/flurry/android/AdUnit;

    move-result-object v0

    .line 1058
    if-nez v0, :cond_1

    .line 1060
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cQ:Lcom/flurry/android/FlurryAdListener;

    if-eqz v0, :cond_0

    .line 1062
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cQ:Lcom/flurry/android/FlurryAdListener;

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/flurry/android/FlurryAdListener;->spaceDidFailToReceiveAd(Ljava/lang/String;)V

    .line 1077
    :cond_0
    :goto_0
    return-void

    .line 1068
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/flurry/android/FlurryAds;->cZ:Lcom/flurry/android/bf;

    .line 1070
    invoke-direct {p0, p1, v0}, Lcom/flurry/android/FlurryAds;->a(Landroid/content/Context;Lcom/flurry/android/AdUnit;)Lcom/flurry/android/bf;

    move-result-object v0

    .line 1071
    iget-object v1, p0, Lcom/flurry/android/FlurryAds;->cL:Lcom/flurry/android/dc;

    invoke-virtual {v1, p2, v0}, Lcom/flurry/android/dc;->a(Ljava/lang/String;Lcom/flurry/android/bf;)V

    .line 1073
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cQ:Lcom/flurry/android/FlurryAdListener;

    if-eqz v0, :cond_0

    .line 1075
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cQ:Lcom/flurry/android/FlurryAdListener;

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/flurry/android/FlurryAdListener;->spaceDidReceiveAd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method final declared-synchronized c(Ljava/io/DataInputStream;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2291
    monitor-enter p0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    .line 2292
    if-eqz v0, :cond_0

    .line 2294
    iget-object v1, p0, Lcom/flurry/android/FlurryAds;->cM:Lcom/flurry/android/FlurryFreqCapManager;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2298
    :try_start_1
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cM:Lcom/flurry/android/FlurryFreqCapManager;

    new-instance v2, Lcom/flurry/android/FlurryFreqCapInfo;

    invoke-direct {v2, p1}, Lcom/flurry/android/FlurryFreqCapInfo;-><init>(Ljava/io/DataInput;)V

    invoke-virtual {v0, v2}, Lcom/flurry/android/FlurryFreqCapManager;->a(Lcom/flurry/android/FlurryFreqCapInfo;)V

    .line 2299
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2291
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2300
    :cond_0
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcom/flurry/android/FlurryAds;->cw:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2303
    monitor-exit p0

    return-void
.end method

.method final d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_removeAd(context = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adSpaceName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1135
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cL:Lcom/flurry/android/dc;

    invoke-virtual {v0, p2}, Lcom/flurry/android/dc;->A(Ljava/lang/String;)Lcom/flurry/android/ac;

    move-result-object v0

    .line 1136
    if-nez v0, :cond_0

    .line 1138
    invoke-direct {p0, p2}, Lcom/flurry/android/FlurryAds;->o(Ljava/lang/String;)V

    .line 1152
    :goto_0
    return-void

    .line 1142
    :cond_0
    invoke-virtual {v0}, Lcom/flurry/android/ac;->stop()V

    .line 1144
    invoke-virtual {v0}, Lcom/flurry/android/ac;->h()Landroid/view/ViewGroup;

    move-result-object v1

    .line 1145
    if-eqz v1, :cond_1

    .line 1146
    invoke-virtual {v0}, Lcom/flurry/android/ac;->removeAllViews()V

    .line 1148
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1150
    :cond_1
    invoke-direct {p0, p2}, Lcom/flurry/android/FlurryAds;->o(Ljava/lang/String;)V

    .line 1151
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cL:Lcom/flurry/android/dc;

    invoke-virtual {v0, p2}, Lcom/flurry/android/dc;->B(Ljava/lang/String;)V

    goto :goto_0
.end method

.method final d(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/cz;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 866
    iput-object p1, p0, Lcom/flurry/android/FlurryAds;->cU:Ljava/util/List;

    .line 867
    return-void
.end method

.method final e(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/AdUnit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2991
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cJ:Lcom/flurry/android/aj;

    invoke-virtual {v0, p1}, Lcom/flurry/android/aj;->b(Ljava/util/List;)V

    .line 2992
    return-void
.end method

.method final getPhoneId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 881
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->aW:Ljava/lang/String;

    return-object v0
.end method

.method final j(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 776
    iget v0, p0, Lcom/flurry/android/FlurryAds;->cR:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/flurry/android/FlurryAds;->cR:I

    .line 777
    iget v0, p0, Lcom/flurry/android/FlurryAds;->cR:I

    if-nez v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cQ:Lcom/flurry/android/FlurryAdListener;

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cQ:Lcom/flurry/android/FlurryAdListener;

    invoke-interface {v0, p1}, Lcom/flurry/android/FlurryAdListener;->onAdClosed(Ljava/lang/String;)V

    .line 782
    :cond_0
    return-void
.end method

.method final k(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 856
    iput-object p1, p0, Lcom/flurry/android/FlurryAds;->aW:Ljava/lang/String;

    .line 857
    return-void
.end method

.method final m(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1715
    invoke-direct {p0}, Lcom/flurry/android/FlurryAds;->Q()[B

    move-result-object v0

    .line 1717
    if-eqz v0, :cond_0

    .line 1719
    invoke-direct {p0, v0, p1}, Lcom/flurry/android/FlurryAds;->b([BLjava/lang/String;)Z

    .line 1721
    :cond_0
    return-void
.end method

.method public onEvent(Lcom/flurry/android/cw;Lcom/flurry/android/bm;I)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEvent:event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/flurry/android/cw;->eW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/flurry/android/cw;->bv:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2420
    iget-object v0, p1, Lcom/flurry/android/cw;->M:Lcom/flurry/android/AdUnit;

    invoke-virtual {v0}, Lcom/flurry/android/AdUnit;->getAdFrames()Ljava/util/List;

    move-result-object v0

    iget v1, p1, Lcom/flurry/android/cw;->eX:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AdFrame;

    invoke-static {v0, p1}, Lcom/flurry/android/FlurryAds;->a(Lcom/flurry/android/AdFrame;Lcom/flurry/android/cw;)Ljava/util/List;

    move-result-object v2

    .line 2423
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2424
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->da:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2426
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p1, Lcom/flurry/android/cw;->eW:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2428
    new-instance v1, Lcom/flurry/android/af;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p1, Lcom/flurry/android/cw;->bv:Ljava/util/Map;

    invoke-direct {v1, v0, v4, p1}, Lcom/flurry/android/af;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/cw;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2435
    :cond_1
    iget-object v0, p1, Lcom/flurry/android/cw;->eW:Ljava/lang/String;

    const-string v1, "adWillClose"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2437
    const/4 v1, 0x0

    .line 2438
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/af;

    .line 2440
    iget-object v4, p0, Lcom/flurry/android/FlurryAds;->db:Ljava/util/Set;

    iget-object v0, v0, Lcom/flurry/android/af;->bu:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2442
    const/4 v0, 0x1

    .line 2446
    :goto_1
    if-nez v0, :cond_3

    .line 2448
    new-instance v0, Lcom/flurry/android/af;

    const-string v1, "closeAd"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v1, v3, p1}, Lcom/flurry/android/af;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/cw;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2452
    :cond_3
    iget-object v0, p1, Lcom/flurry/android/cw;->eW:Ljava/lang/String;

    const-string v1, "renderFailed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2454
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cQ:Lcom/flurry/android/FlurryAdListener;

    if-eqz v0, :cond_4

    .line 2456
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cQ:Lcom/flurry/android/FlurryAdListener;

    iget-object v1, p1, Lcom/flurry/android/cw;->M:Lcom/flurry/android/AdUnit;

    invoke-virtual {v1}, Lcom/flurry/android/AdUnit;->getAdSpace()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/flurry/android/FlurryAdListener;->onRenderFailed(Ljava/lang/String;)V

    .line 2460
    :cond_4
    iget-object v0, p1, Lcom/flurry/android/cw;->eW:Ljava/lang/String;

    const-string v1, "clicked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2462
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cQ:Lcom/flurry/android/FlurryAdListener;

    if-eqz v0, :cond_5

    .line 2464
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cQ:Lcom/flurry/android/FlurryAdListener;

    iget-object v1, p1, Lcom/flurry/android/cw;->M:Lcom/flurry/android/AdUnit;

    invoke-virtual {v1}, Lcom/flurry/android/AdUnit;->getAdSpace()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/flurry/android/FlurryAdListener;->onAdClicked(Ljava/lang/String;)V

    .line 2467
    :cond_5
    iget-object v0, p1, Lcom/flurry/android/cw;->eW:Ljava/lang/String;

    const-string v1, "videoCompleted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2469
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cQ:Lcom/flurry/android/FlurryAdListener;

    if-eqz v0, :cond_6

    .line 2471
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cQ:Lcom/flurry/android/FlurryAdListener;

    iget-object v1, p1, Lcom/flurry/android/cw;->M:Lcom/flurry/android/AdUnit;

    invoke-virtual {v1}, Lcom/flurry/android/AdUnit;->getAdSpace()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/flurry/android/FlurryAdListener;->onVideoCompleted(Ljava/lang/String;)V

    .line 2476
    :cond_6
    const/4 v0, 0x0

    .line 2478
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v0

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/flurry/android/af;

    .line 2480
    iget-object v0, v2, Lcom/flurry/android/af;->bu:Ljava/lang/String;

    const-string v3, "logEvent"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2483
    iget-object v0, v2, Lcom/flurry/android/af;->bv:Ljava/util/Map;

    const-string v1, "__sendToServer"

    const-string v3, "true"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v2

    .line 2486
    :goto_3
    iget-object v0, v2, Lcom/flurry/android/af;->bu:Ljava/lang/String;

    const-string v1, "loadAdComponents"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2488
    iget-object v0, v2, Lcom/flurry/android/af;->bw:Lcom/flurry/android/cw;

    iget-object v0, v0, Lcom/flurry/android/cw;->bv:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2489
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2490
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2491
    iget-object v6, v2, Lcom/flurry/android/af;->bv:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 2494
    :cond_7
    sget-object v0, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/flurry/android/af;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/db;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 2495
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p2, v2, p0, v0}, Lcom/flurry/android/bm;->performAction$3deb3ec3(Lcom/flurry/android/af;Lcom/flurry/android/FlurryAds;I)V

    move-object v1, v3

    goto :goto_2

    .line 2498
    :cond_8
    if-nez v1, :cond_9

    .line 2500
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2501
    const-string v1, "__sendToServer"

    const-string v2, "false"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2502
    new-instance v1, Lcom/flurry/android/af;

    const-string v2, "logEvent"

    invoke-direct {v1, v2, v0, p1}, Lcom/flurry/android/af;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/cw;)V

    .line 2503
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p2, v1, p0, v0}, Lcom/flurry/android/bm;->performAction$3deb3ec3(Lcom/flurry/android/af;Lcom/flurry/android/FlurryAds;I)V

    .line 2504
    sget-object v0, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/flurry/android/af;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/db;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 2506
    :cond_9
    return-void

    :cond_a
    move-object v3, v1

    goto :goto_3

    :cond_b
    move v0, v1

    goto/16 :goto_1
.end method

.method public performAction$3deb3ec3(Lcom/flurry/android/af;Lcom/flurry/android/FlurryAds;I)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performAction:action="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lcom/flurry/android/af;->bu:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",params="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lcom/flurry/android/af;->bv:Ljava/util/Map;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",triggering event="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lcom/flurry/android/af;->bw:Lcom/flurry/android/cw;

    iget-object v3, v3, Lcom/flurry/android/cw;->eW:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2513
    iget-object v0, p1, Lcom/flurry/android/af;->bu:Ljava/lang/String;

    .line 2514
    iget-object v3, p1, Lcom/flurry/android/af;->bw:Lcom/flurry/android/cw;

    iget-object v3, v3, Lcom/flurry/android/cw;->J:Landroid/content/Context;

    .line 2515
    iget-object v4, p1, Lcom/flurry/android/af;->bw:Lcom/flurry/android/cw;

    iget-object v5, v4, Lcom/flurry/android/cw;->L:Lcom/flurry/android/cz;

    .line 2516
    iget-object v4, p1, Lcom/flurry/android/af;->bw:Lcom/flurry/android/cw;

    iget-object v4, v4, Lcom/flurry/android/cw;->M:Lcom/flurry/android/AdUnit;

    .line 2517
    invoke-virtual {v4}, Lcom/flurry/android/AdUnit;->getAdSpace()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2519
    const/16 v7, 0xa

    if-le p3, v7, :cond_1

    .line 2521
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum depth for event/action loop exceeded when performing action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/flurry/android/af;->bv:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",triggered by:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/flurry/android/af;->bw:Lcom/flurry/android/cw;

    iget-object v1, v1, Lcom/flurry/android/cw;->eW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2739
    :cond_0
    :goto_0
    return-void

    .line 2525
    :cond_1
    const-string v7, "directOpen"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2527
    iget-object v0, p1, Lcom/flurry/android/af;->bv:Ljava/util/Map;

    const-string v1, "url"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2529
    iget-object v0, p1, Lcom/flurry/android/af;->bv:Ljava/util/Map;

    const-string v1, "url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2530
    const-string v1, "market://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2532
    invoke-virtual {p0, v3, v0, v4}, Lcom/flurry/android/FlurryAds;->a(Landroid/content/Context;Ljava/lang/String;Lcom/flurry/android/AdUnit;)V

    goto :goto_0

    .line 2536
    :cond_2
    const-string v1, "true"

    iget-object v2, p1, Lcom/flurry/android/af;->bv:Ljava/util/Map;

    const-string v7, "native"

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2537
    if-eqz v1, :cond_3

    .line 2539
    invoke-direct {p0, v5, v4, p1, v0}, Lcom/flurry/android/FlurryAds;->a(Lcom/flurry/android/cz;Lcom/flurry/android/AdUnit;Lcom/flurry/android/af;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2542
    invoke-virtual {p0, v3, v0, v6}, Lcom/flurry/android/FlurryAds;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 2546
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2547
    const-string v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2548
    invoke-static {v3, v1}, Lcom/flurry/android/bd;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2550
    invoke-virtual {p0, v3, v1, v6}, Lcom/flurry/android/FlurryAds;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    goto :goto_0

    .line 2554
    :cond_4
    sget-object v1, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    const-string v2, "Can\'t start FlurryFullscreenTakeoverActivity, was it declared in the manifest? Falling back to default browser"

    invoke-static {v1, v2}, Lcom/flurry/android/db;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 2555
    invoke-virtual {p0, v3, v0, v6}, Lcom/flurry/android/FlurryAds;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 2562
    :cond_5
    sget-object v0, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to perform directOpen action: no url in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/flurry/android/af;->bw:Lcom/flurry/android/cw;

    iget-object v2, v2, Lcom/flurry/android/cw;->eW:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/db;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2565
    :cond_6
    const-string v7, "delete"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 2567
    iget-object v0, p1, Lcom/flurry/android/af;->bv:Ljava/util/Map;

    const-string v1, "count"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2569
    iget-object v0, p1, Lcom/flurry/android/af;->bv:Ljava/util/Map;

    const-string v1, "count"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2570
    const/4 v1, -0x1

    .line 2573
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2579
    :goto_1
    iget-object v1, p0, Lcom/flurry/android/FlurryAds;->cJ:Lcom/flurry/android/aj;

    invoke-virtual {v1, v6, v0}, Lcom/flurry/android/aj;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 2575
    :catch_0
    move-exception v2

    .line 2577
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "caught NumberFormatException with count parameter in deleteAds:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move v0, v1

    goto :goto_1

    .line 2581
    :cond_7
    iget-object v0, p1, Lcom/flurry/android/af;->bv:Ljava/util/Map;

    const-string v1, "groupId"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2583
    iget-object v0, p1, Lcom/flurry/android/af;->bv:Ljava/util/Map;

    const-string v1, "groupId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2584
    iget-object v1, p0, Lcom/flurry/android/FlurryAds;->cJ:Lcom/flurry/android/aj;

    invoke-virtual {v1, v6, v0}, Lcom/flurry/android/aj;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2587
    :cond_8
    const-string v7, "processRedirect"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 2589
    iget-object v0, p1, Lcom/flurry/android/af;->bv:Ljava/util/Map;

    const-string v7, "url"

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2591
    iget-object v0, p1, Lcom/flurry/android/af;->bv:Ljava/util/Map;

    const-string v7, "url"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2592
    const-string v7, "true"

    iget-object v8, p1, Lcom/flurry/android/af;->bv:Ljava/util/Map;

    const-string v9, "native"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 2593
    if-eqz v7, :cond_9

    .line 2595
    invoke-direct {p0, v5, v4, p1, v0}, Lcom/flurry/android/FlurryAds;->a(Lcom/flurry/android/cz;Lcom/flurry/android/AdUnit;Lcom/flurry/android/af;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2597
    invoke-virtual {p0, v3, v0, v6}, Lcom/flurry/android/FlurryAds;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 2599
    :cond_9
    const-string v6, "http"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 2601
    invoke-direct {p0, v5, v4, p1, v0}, Lcom/flurry/android/FlurryAds;->a(Lcom/flurry/android/cz;Lcom/flurry/android/AdUnit;Lcom/flurry/android/af;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/flurry/android/ab;

    invoke-direct {v0, p0, v3, v5}, Lcom/flurry/android/ab;-><init>(Lcom/flurry/android/FlurryAds;Landroid/content/Context;Ljava/lang/String;)V

    const-string v2, ""

    const/4 v6, 0x0

    :try_start_1
    new-array v6, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v6}, Lcom/flurry/android/ab;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    if-eqz v0, :cond_a

    invoke-direct {p0, v3, v0, v1, v4}, Lcom/flurry/android/FlurryAds;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/flurry/android/AdUnit;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    move-object v0, v2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    move-object v0, v2

    goto :goto_2

    :cond_a
    sget-object v0, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Redirect URL could not be found for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/db;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2605
    :cond_b
    invoke-direct {p0, v3, v0, v2, v4}, Lcom/flurry/android/FlurryAds;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/flurry/android/AdUnit;)V

    goto/16 :goto_0

    .line 2609
    :cond_c
    const-string v7, "verifyUrl"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 2611
    iget-object v0, p1, Lcom/flurry/android/af;->bv:Ljava/util/Map;

    const-string v6, "url"

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2613
    iget-object v0, p1, Lcom/flurry/android/af;->bv:Ljava/util/Map;

    const-string v6, "url"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2614
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-static {v3, v0}, Lcom/flurry/android/bd;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_d

    :goto_3
    if-eqz v1, :cond_e

    const-string v1, "urlVerified"

    .line 2615
    :goto_4
    new-instance v0, Lcom/flurry/android/cw;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p1, Lcom/flurry/android/af;->bw:Lcom/flurry/android/cw;

    iget-object v3, v3, Lcom/flurry/android/cw;->J:Landroid/content/Context;

    iget-object v6, p1, Lcom/flurry/android/af;->bw:Lcom/flurry/android/cw;

    iget v6, v6, Lcom/flurry/android/cw;->eX:I

    invoke-direct/range {v0 .. v6}, Lcom/flurry/android/cw;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/android/AdUnit;Lcom/flurry/android/cz;I)V

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {p2, v0, p0, v1}, Lcom/flurry/android/FlurryAds;->onEvent(Lcom/flurry/android/cw;Lcom/flurry/android/bm;I)V

    goto/16 :goto_0

    :cond_d
    move v1, v2

    .line 2614
    goto :goto_3

    :cond_e
    const-string v1, "urlNotVerified"

    goto :goto_4

    .line 2619
    :cond_f
    const-string v7, "launchPackage"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 2621
    iget-object v0, p1, Lcom/flurry/android/af;->bv:Ljava/util/Map;

    const-string v1, "package"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2623
    iget-object v0, p1, Lcom/flurry/android/af;->bv:Ljava/util/Map;

    const-string v1, "package"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2624
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-static {v3, v1}, Lcom/flurry/android/bd;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {v4}, Lcom/flurry/android/AdUnit;->getAdSpace()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v1, v0}, Lcom/flurry/android/FlurryAds;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0, v2, v4}, Lcom/flurry/android/FlurryAds;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/flurry/android/AdUnit;)V

    goto/16 :goto_0

    .line 2627
    :cond_11
    const-string v7, "sendUrlAsync"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 2629
    iget-object v0, p1, Lcom/flurry/android/af;->bv:Ljava/util/Map;

    const-string v1, "url"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2631
    iget-object v0, p1, Lcom/flurry/android/af;->bv:Ljava/util/Map;

    const-string v1, "url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v5, v4, p1, v0}, Lcom/flurry/android/FlurryAds;->a(Lcom/flurry/android/cz;Lcom/flurry/android/AdUnit;Lcom/flurry/android/af;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url after is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v1, Lcom/flurry/android/ct;

    invoke-direct {v1, p0, v3, v0}, Lcom/flurry/android/ct;-><init>(Lcom/flurry/android/FlurryAds;Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cK:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 2634
    :cond_12
    const-string v7, "sendAdLogs"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 2636
    invoke-direct {p0}, Lcom/flurry/android/FlurryAds;->P()V

    goto/16 :goto_0

    .line 2638
    :cond_13
    const-string v7, "logEvent"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 2640
    iget-object v0, p1, Lcom/flurry/android/af;->bv:Ljava/util/Map;

    const-string v3, "__sendToServer"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p1, Lcom/flurry/android/af;->bv:Ljava/util/Map;

    const-string v3, "__sendToServer"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, v1

    .line 2641
    :goto_5
    iget-object v1, p1, Lcom/flurry/android/af;->bv:Ljava/util/Map;

    const-string v2, "__sendToServer"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2643
    iget-object v1, p1, Lcom/flurry/android/af;->bw:Lcom/flurry/android/cw;

    iget-object v1, v1, Lcom/flurry/android/cw;->L:Lcom/flurry/android/cz;

    iget-object v2, p1, Lcom/flurry/android/af;->bw:Lcom/flurry/android/cw;

    iget-object v2, v2, Lcom/flurry/android/cw;->eW:Ljava/lang/String;

    iget-object v3, p1, Lcom/flurry/android/af;->bv:Ljava/util/Map;

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/flurry/android/FlurryAds;->a(Lcom/flurry/android/cz;Ljava/lang/String;ZLjava/util/Map;)Lcom/flurry/android/cz;

    goto/16 :goto_0

    :cond_14
    move v0, v2

    .line 2640
    goto :goto_5

    .line 2645
    :cond_15
    const-string v1, "nextFrame"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2649
    const-string v1, "nextAdUnit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2651
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cL:Lcom/flurry/android/dc;

    invoke-virtual {v0, v6}, Lcom/flurry/android/dc;->A(Ljava/lang/String;)Lcom/flurry/android/ac;

    move-result-object v5

    .line 2652
    if-eqz v5, :cond_17

    iget-object v0, p1, Lcom/flurry/android/af;->bv:Ljava/util/Map;

    const-string v1, "delay"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p1, Lcom/flurry/android/af;->bw:Lcom/flurry/android/cw;

    iget v0, v0, Lcom/flurry/android/cw;->eX:I

    if-eqz v4, :cond_16

    invoke-virtual {v4}, Lcom/flurry/android/AdUnit;->getAdFrames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_16

    invoke-virtual {v4}, Lcom/flurry/android/AdUnit;->getAdFrames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AdFrame;

    invoke-virtual {v0}, Lcom/flurry/android/AdFrame;->getAdSpaceLayout()Lcom/flurry/android/AdSpaceLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/AdSpaceLayout;->getFormat()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "banner"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :cond_16
    if-eqz v2, :cond_17

    .line 2654
    const-wide/16 v1, 0x1e

    .line 2657
    :try_start_2
    iget-object v0, p1, Lcom/flurry/android/af;->bv:Ljava/util/Map;

    const-string v3, "delay"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-wide v0

    .line 2663
    :goto_6
    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-virtual {v5, v0, v1}, Lcom/flurry/android/ac;->a(J)V

    goto/16 :goto_0

    .line 2661
    :catch_3
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "caught NumberFormatException with delay parameter in nextAdUnit:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p1, Lcom/flurry/android/af;->bv:Ljava/util/Map;

    const-string v4, "delay"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-wide v0, v1

    goto :goto_6

    .line 2665
    :cond_17
    if-eqz v5, :cond_18

    .line 2667
    new-instance v0, Lcom/flurry/android/cp;

    invoke-direct {v0, p0, v3, v6, v5}, Lcom/flurry/android/cp;-><init>(Lcom/flurry/android/FlurryAds;Landroid/content/Context;Ljava/lang/String;Lcom/flurry/android/ac;)V

    invoke-virtual {v5, v0}, Lcom/flurry/android/ac;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 2676
    :cond_18
    iget-object v0, p1, Lcom/flurry/android/af;->bw:Lcom/flurry/android/cw;

    iget-object v0, v0, Lcom/flurry/android/cw;->eW:Ljava/lang/String;

    const-string v1, "renderFailed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2678
    invoke-virtual {p0, v3, v6}, Lcom/flurry/android/FlurryAds;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2682
    :cond_19
    invoke-direct {p0, v6}, Lcom/flurry/android/FlurryAds;->l(Ljava/lang/String;)Lcom/flurry/android/AdUnit;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/FlurryAds;->cY:Lcom/flurry/android/AdUnit;

    .line 2683
    iget-object v0, p0, Lcom/flurry/android/FlurryAds;->cY:Lcom/flurry/android/AdUnit;

    invoke-direct {p0, v3, v0}, Lcom/flurry/android/FlurryAds;->a(Landroid/content/Context;Lcom/flurry/android/AdUnit;)Lcom/flurry/android/bf;

    goto/16 :goto_0

    .line 2686
    :cond_1a
    const-string v1, "checkCap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 2688
    iget-object v0, p1, Lcom/flurry/android/af;->bv:Ljava/util/Map;

    const-string v1, "idHash"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2691
    iget-object v0, p1, Lcom/flurry/android/af;->bv:Ljava/util/Map;

    const-string v1, "idHash"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2694
    iget-object v1, p0, Lcom/flurry/android/FlurryAds;->cM:Lcom/flurry/android/FlurryFreqCapManager;

    invoke-virtual {v1, v0}, Lcom/flurry/android/FlurryFreqCapManager;->y(Ljava/lang/String;)Lcom/flurry/android/FlurryFreqCapInfo;

    move-result-object v2

    .line 2695
    const-string v1, "capNotExhausted"

    .line 2698
    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Lcom/flurry/android/FlurryFreqCapInfo;->getExpirationTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/flurry/android/FlurryFreqCapManager;->d(J)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 2699
    sget-object v2, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Discarding expired frequency cap info for idHash="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/flurry/android/db;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 2700
    iget-object v2, p0, Lcom/flurry/android/FlurryAds;->cM:Lcom/flurry/android/FlurryFreqCapManager;

    invoke-virtual {v2, v0}, Lcom/flurry/android/FlurryFreqCapManager;->z(Ljava/lang/String;)V

    .line 2701
    const/4 v2, 0x0

    .line 2704
    :cond_1b
    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Lcom/flurry/android/FlurryFreqCapInfo;->getViews()I

    move-result v3

    invoke-virtual {v2}, Lcom/flurry/android/FlurryFreqCapInfo;->getNewCap()I

    move-result v2

    if-lt v3, v2, :cond_1c

    .line 2705
    sget-object v1, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Frequency cap exhausted for idHash="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/android/db;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 2706
    const-string v1, "capExhausted"

    .line 2709
    :cond_1c
    new-instance v0, Lcom/flurry/android/cw;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p1, Lcom/flurry/android/af;->bw:Lcom/flurry/android/cw;

    iget-object v3, v3, Lcom/flurry/android/cw;->J:Landroid/content/Context;

    iget-object v6, p1, Lcom/flurry/android/af;->bw:Lcom/flurry/android/cw;

    iget v6, v6, Lcom/flurry/android/cw;->eX:I

    invoke-direct/range {v0 .. v6}, Lcom/flurry/android/cw;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/android/AdUnit;Lcom/flurry/android/cz;I)V

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {p2, v0, p0, v1}, Lcom/flurry/android/FlurryAds;->onEvent(Lcom/flurry/android/cw;Lcom/flurry/android/bm;I)V

    goto/16 :goto_0

    .line 2715
    :cond_1d
    const-string v1, "updateViewCount"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 2717
    iget-object v0, p1, Lcom/flurry/android/af;->bv:Ljava/util/Map;

    const-string v1, "idHash"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2720
    iget-object v0, p1, Lcom/flurry/android/af;->bv:Ljava/util/Map;

    const-string v1, "idHash"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2722
    iget-object v1, p0, Lcom/flurry/android/FlurryAds;->cM:Lcom/flurry/android/FlurryFreqCapManager;

    invoke-virtual {v1, v0}, Lcom/flurry/android/FlurryFreqCapManager;->y(Ljava/lang/String;)Lcom/flurry/android/FlurryFreqCapInfo;

    move-result-object v0

    .line 2724
    if-eqz v0, :cond_0

    .line 2726
    invoke-virtual {v0}, Lcom/flurry/android/FlurryFreqCapInfo;->updateViews()V

    .line 2727
    sget-object v1, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateViewCount:idHash="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/flurry/android/FlurryFreqCapInfo;->getIdHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",newCap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/flurry/android/FlurryFreqCapInfo;->getNewCap()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",prevCap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/flurry/android/FlurryFreqCapInfo;->getPreviousCap()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",views="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/flurry/android/FlurryFreqCapInfo;->getViews()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/android/db;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 2728
    invoke-virtual {v0}, Lcom/flurry/android/FlurryFreqCapInfo;->getViews()I

    move-result v1

    invoke-virtual {v0}, Lcom/flurry/android/FlurryFreqCapInfo;->getNewCap()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 2729
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FlurryAdAction: !! rendering a capped object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/flurry/android/FlurryFreqCapInfo;->getIdHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0

    .line 2737
    :cond_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",triggered by:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/flurry/android/af;->bw:Lcom/flurry/android/cw;

    iget-object v1, v1, Lcom/flurry/android/cw;->eW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0
.end method
