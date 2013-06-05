.class public Lcom/amazonaws/util/AwsHostNameUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseRegionName(Ljava/net/URI;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".amazonaws.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "us-east-1"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    const-string v2, ".amazonaws.com"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x2e

    const-string v2, "s3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x2d

    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    const-string v0, "us-east-1"

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "us-gov"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "us-gov-west-1"

    goto :goto_0
.end method

.method public static parseServiceName(Ljava/net/URI;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".amazonaws.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "us-east-1"

    :goto_0
    return-object v0

    :cond_0
    const-string v1, ".amazonaws.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x2e

    const-string v2, "s3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x2d

    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
