.class public final enum Lcom/amazonaws/auth/policy/Principal$Services;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/auth/policy/Principal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Services"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazonaws/auth/policy/Principal$Services;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/auth/policy/Principal$Services;

.field public static final enum AWSDataPipeline:Lcom/amazonaws/auth/policy/Principal$Services;

.field public static final enum AWSOpsWorks:Lcom/amazonaws/auth/policy/Principal$Services;

.field public static final enum AmazonEC2:Lcom/amazonaws/auth/policy/Principal$Services;

.field public static final enum AmazonElasticTranscoder:Lcom/amazonaws/auth/policy/Principal$Services;


# instance fields
.field private serviceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/amazonaws/auth/policy/Principal$Services;

    const-string v1, "AWSDataPipeline"

    const-string v2, "datapipeline.amazonaws.com"

    invoke-direct {v0, v1, v3, v2}, Lcom/amazonaws/auth/policy/Principal$Services;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/Principal$Services;->AWSDataPipeline:Lcom/amazonaws/auth/policy/Principal$Services;

    new-instance v0, Lcom/amazonaws/auth/policy/Principal$Services;

    const-string v1, "AmazonElasticTranscoder"

    const-string v2, "elastictranscoder.amazonaws.com"

    invoke-direct {v0, v1, v4, v2}, Lcom/amazonaws/auth/policy/Principal$Services;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/Principal$Services;->AmazonElasticTranscoder:Lcom/amazonaws/auth/policy/Principal$Services;

    new-instance v0, Lcom/amazonaws/auth/policy/Principal$Services;

    const-string v1, "AmazonEC2"

    const-string v2, "ec2.amazonaws.com"

    invoke-direct {v0, v1, v5, v2}, Lcom/amazonaws/auth/policy/Principal$Services;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/Principal$Services;->AmazonEC2:Lcom/amazonaws/auth/policy/Principal$Services;

    new-instance v0, Lcom/amazonaws/auth/policy/Principal$Services;

    const-string v1, "AWSOpsWorks"

    const-string v2, "opsworks.amazonaws.com"

    invoke-direct {v0, v1, v6, v2}, Lcom/amazonaws/auth/policy/Principal$Services;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/Principal$Services;->AWSOpsWorks:Lcom/amazonaws/auth/policy/Principal$Services;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/amazonaws/auth/policy/Principal$Services;

    sget-object v1, Lcom/amazonaws/auth/policy/Principal$Services;->AWSDataPipeline:Lcom/amazonaws/auth/policy/Principal$Services;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/auth/policy/Principal$Services;->AmazonElasticTranscoder:Lcom/amazonaws/auth/policy/Principal$Services;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazonaws/auth/policy/Principal$Services;->AmazonEC2:Lcom/amazonaws/auth/policy/Principal$Services;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazonaws/auth/policy/Principal$Services;->AWSOpsWorks:Lcom/amazonaws/auth/policy/Principal$Services;

    aput-object v1, v0, v6

    sput-object v0, Lcom/amazonaws/auth/policy/Principal$Services;->$VALUES:[Lcom/amazonaws/auth/policy/Principal$Services;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazonaws/auth/policy/Principal$Services;->serviceId:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Principal$Services;
    .locals 5

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/amazonaws/auth/policy/Principal$Services;->values()[Lcom/amazonaws/auth/policy/Principal$Services;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/amazonaws/auth/policy/Principal$Services;->getServiceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Principal$Services;
    .locals 1

    const-class v0, Lcom/amazonaws/auth/policy/Principal$Services;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/auth/policy/Principal$Services;

    return-object v0
.end method

.method public static values()[Lcom/amazonaws/auth/policy/Principal$Services;
    .locals 1

    sget-object v0, Lcom/amazonaws/auth/policy/Principal$Services;->$VALUES:[Lcom/amazonaws/auth/policy/Principal$Services;

    invoke-virtual {v0}, [Lcom/amazonaws/auth/policy/Principal$Services;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/auth/policy/Principal$Services;

    return-object v0
.end method


# virtual methods
.method public getServiceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/auth/policy/Principal$Services;->serviceId:Ljava/lang/String;

    return-object v0
.end method
