.class Lco/vine/android/network/HttpOperationClient$HttpProxyInfo;
.super Ljava/lang/Object;
.source "HttpOperationClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/network/HttpOperationClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HttpProxyInfo"
.end annotation


# instance fields
.field public final enabled:Z

.field public final httpHost:Lorg/apache/http/HttpHost;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "enabled"
    .parameter "host"
    .parameter "portString"

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 132
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 133
    const/4 p1, 0x0

    .line 139
    :cond_0
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 145
    .local v1, port:I
    :goto_0
    new-instance v2, Lorg/apache/http/HttpHost;

    const-string v3, "http"

    invoke-direct {v2, p2, v1, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v2, p0, Lco/vine/android/network/HttpOperationClient$HttpProxyInfo;->httpHost:Lorg/apache/http/HttpHost;

    .line 146
    iput-boolean p1, p0, Lco/vine/android/network/HttpOperationClient$HttpProxyInfo;->enabled:Z

    .line 147
    return-void

    .line 140
    .end local v1           #port:I
    :catch_0
    move-exception v0

    .line 141
    .local v0, nfe:Ljava/lang/NumberFormatException;
    const/4 v1, -0x1

    .line 142
    .restart local v1       #port:I
    const/4 p1, 0x0

    goto :goto_0
.end method
