.class public Lcom/amazonaws/util/AWSRequestMetrics;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/util/AWSRequestMetrics$Field;
    }
.end annotation


# static fields
.field private static final COMMA_SEPARATOR:Ljava/lang/Object;

.field private static final KEY_VALUE_SEPARATOR:Ljava/lang/Object;

.field private static final latencyLogger:Lorg/apache/commons/logging/Log;


# instance fields
.field private final eventsBeingProfiled:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final profilingSystemPropertyEnabled:Z

.field private final properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final timingInfo:Lcom/amazonaws/util/TimingInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.amazonaws.latency"

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/util/AWSRequestMetrics;->latencyLogger:Lorg/apache/commons/logging/Log;

    const-string v0, "="

    sput-object v0, Lcom/amazonaws/util/AWSRequestMetrics;->KEY_VALUE_SEPARATOR:Ljava/lang/Object;

    const-string v0, ", "

    sput-object v0, Lcom/amazonaws/util/AWSRequestMetrics;->COMMA_SEPARATOR:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/util/AWSRequestMetrics;->properties:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/util/AWSRequestMetrics;->eventsBeingProfiled:Ljava/util/Map;

    new-instance v0, Lcom/amazonaws/util/TimingInfo;

    invoke-direct {v0}, Lcom/amazonaws/util/TimingInfo;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/util/AWSRequestMetrics;->timingInfo:Lcom/amazonaws/util/TimingInfo;

    invoke-static {}, Lcom/amazonaws/util/AWSRequestMetrics;->isProfilingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazonaws/util/AWSRequestMetrics;->profilingSystemPropertyEnabled:Z

    return-void
.end method

.method private static isProfilingEnabled()Z
    .locals 1

    const-string v0, "com.amazonaws.sdk.enableRuntimeProfiling"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private keyValueFormat(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 2

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics;->KEY_VALUE_SEPARATOR:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics;->COMMA_SEPARATOR:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public addProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/amazonaws/util/AWSRequestMetrics;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/amazonaws/util/AWSRequestMetrics;->properties:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public endEvent(Ljava/lang/String;)V
    .locals 7

    iget-boolean v0, p0, Lcom/amazonaws/util/AWSRequestMetrics;->profilingSystemPropertyEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazonaws/util/AWSRequestMetrics;->eventsBeingProfiled:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to end an event which was never started. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/amazonaws/util/AWSRequestMetrics;->timingInfo:Lcom/amazonaws/util/TimingInfo;

    new-instance v2, Lcom/amazonaws/util/TimingInfo;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/amazonaws/util/TimingInfo;-><init>(JJ)V

    invoke-virtual {v1, p1, v2}, Lcom/amazonaws/util/TimingInfo;->addSubMeasurement(Ljava/lang/String;Lcom/amazonaws/util/TimingInfo;)V

    :cond_1
    return-void
.end method

.method public getTimingInfo()Lcom/amazonaws/util/TimingInfo;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/util/AWSRequestMetrics;->timingInfo:Lcom/amazonaws/util/TimingInfo;

    return-object v0
.end method

.method public incrementCounter(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/amazonaws/util/AWSRequestMetrics;->profilingSystemPropertyEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/util/AWSRequestMetrics;->timingInfo:Lcom/amazonaws/util/TimingInfo;

    invoke-virtual {v0, p1}, Lcom/amazonaws/util/TimingInfo;->incrementCounter(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public log()V
    .locals 4

    iget-boolean v0, p0, Lcom/amazonaws/util/AWSRequestMetrics;->profilingSystemPropertyEnabled:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/amazonaws/util/AWSRequestMetrics;->properties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v3, v0, v1}, Lcom/amazonaws/util/AWSRequestMetrics;->keyValueFormat(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/amazonaws/util/AWSRequestMetrics;->timingInfo:Lcom/amazonaws/util/TimingInfo;

    invoke-virtual {v0}, Lcom/amazonaws/util/TimingInfo;->getAllCounters()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v3, v0, v1}, Lcom/amazonaws/util/AWSRequestMetrics;->keyValueFormat(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/amazonaws/util/AWSRequestMetrics;->timingInfo:Lcom/amazonaws/util/TimingInfo;

    invoke-virtual {v0}, Lcom/amazonaws/util/TimingInfo;->getSubMeasurementsByName()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v3, v0, v1}, Lcom/amazonaws/util/AWSRequestMetrics;->keyValueFormat(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_3

    :cond_3
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics;->latencyLogger:Lorg/apache/commons/logging/Log;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setCounter(Ljava/lang/String;J)V
    .locals 1

    iget-boolean v0, p0, Lcom/amazonaws/util/AWSRequestMetrics;->profilingSystemPropertyEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/util/AWSRequestMetrics;->timingInfo:Lcom/amazonaws/util/TimingInfo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazonaws/util/TimingInfo;->setCounter(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public startEvent(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/amazonaws/util/AWSRequestMetrics;->profilingSystemPropertyEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/util/AWSRequestMetrics;->eventsBeingProfiled:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
