.class Lco/vine/android/network/ShortKeepAliveStrategy;
.super Ljava/lang/Object;
.source "ShortKeepAliveStrategy.java"

# interfaces
.implements Lorg/apache/http/conn/ConnectionKeepAliveStrategy;


# static fields
.field private static final DEFAULT_KEEP_ALIVE_DURATION:J = 0xea60L


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J
    .locals 10
    .parameter "response"
    .parameter "context"

    .prologue
    .line 28
    new-instance v1, Lorg/apache/http/message/BasicHeaderElementIterator;

    const-string v6, "Keep-Alive"

    invoke-interface {p1, v6}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    move-result-object v6

    invoke-direct {v1, v6}, Lorg/apache/http/message/BasicHeaderElementIterator;-><init>(Lorg/apache/http/HeaderIterator;)V

    .line 35
    .local v1, it:Lorg/apache/http/HeaderElementIterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Lorg/apache/http/HeaderElementIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 36
    invoke-interface {v1}, Lorg/apache/http/HeaderElementIterator;->nextElement()Lorg/apache/http/HeaderElement;

    move-result-object v0

    .line 37
    .local v0, he:Lorg/apache/http/HeaderElement;
    invoke-interface {v0}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, param:Ljava/lang/String;
    invoke-interface {v0}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 39
    .local v5, value:Ljava/lang/String;
    if-eqz v5, :cond_0

    const-string v6, "timeout"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 41
    :try_start_0
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long v3, v6, v8

    .line 42
    .local v3, timeout:J
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-lez v6, :cond_0

    .line 50
    .end local v0           #he:Lorg/apache/http/HeaderElement;
    .end local v2           #param:Ljava/lang/String;
    .end local v3           #timeout:J
    .end local v5           #value:Ljava/lang/String;
    :goto_1
    return-wide v3

    :cond_1
    const-wide/32 v3, 0xea60

    goto :goto_1

    .line 45
    .restart local v0       #he:Lorg/apache/http/HeaderElement;
    .restart local v2       #param:Ljava/lang/String;
    .restart local v5       #value:Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_0
.end method
