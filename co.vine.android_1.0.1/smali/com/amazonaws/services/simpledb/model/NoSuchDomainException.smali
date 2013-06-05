.class public Lcom/amazonaws/services/simpledb/model/NoSuchDomainException;
.super Lcom/amazonaws/AmazonServiceException;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private boxUsage:Ljava/lang/Float;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazonaws/AmazonServiceException;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBoxUsage()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/simpledb/model/NoSuchDomainException;->boxUsage:Ljava/lang/Float;

    return-object v0
.end method

.method public setBoxUsage(Ljava/lang/Float;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/NoSuchDomainException;->boxUsage:Ljava/lang/Float;

    return-void
.end method
