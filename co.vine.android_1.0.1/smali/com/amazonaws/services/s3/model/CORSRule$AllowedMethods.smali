.class public final enum Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/CORSRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AllowedMethods"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

.field public static final enum DELETE:Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

.field public static final enum GET:Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

.field public static final enum HEAD:Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

.field public static final enum POST:Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

.field public static final enum PUT:Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;


# instance fields
.field private final AllowedMethod:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

    const-string v1, "GET"

    const-string v2, "GET"

    invoke-direct {v0, v1, v3, v2}, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;->GET:Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

    new-instance v0, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

    const-string v1, "PUT"

    const-string v2, "PUT"

    invoke-direct {v0, v1, v4, v2}, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;->PUT:Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

    new-instance v0, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

    const-string v1, "HEAD"

    const-string v2, "HEAD"

    invoke-direct {v0, v1, v5, v2}, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;->HEAD:Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

    new-instance v0, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

    const-string v1, "POST"

    const-string v2, "POST"

    invoke-direct {v0, v1, v6, v2}, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;->POST:Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

    new-instance v0, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

    const-string v1, "DELETE"

    const-string v2, "DELETE"

    invoke-direct {v0, v1, v7, v2}, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;->DELETE:Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

    sget-object v1, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;->GET:Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;->PUT:Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;->HEAD:Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;->POST:Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;->DELETE:Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

    aput-object v1, v0, v7

    sput-object v0, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;->$VALUES:[Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

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

    iput-object p3, p0, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;->AllowedMethod:Ljava/lang/String;

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {}, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;->values()[Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    if-nez p0, :cond_1

    :cond_0
    return-object v0

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create enum from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;
    .locals 1

    const-class v0, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

    return-object v0
.end method

.method public static values()[Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;
    .locals 1

    sget-object v0, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;->$VALUES:[Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

    invoke-virtual {v0}, [Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;->AllowedMethod:Ljava/lang/String;

    return-object v0
.end method
