.class public abstract Lcom/amazonaws/transform/AbstractErrorUnmarshaller;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller",
        "<",
        "Lcom/amazonaws/AmazonServiceException;",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final exceptionClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/amazonaws/AmazonServiceException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const-class v0, Lcom/amazonaws/AmazonServiceException;

    invoke-direct {p0, v0}, Lcom/amazonaws/transform/AbstractErrorUnmarshaller;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/amazonaws/AmazonServiceException;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/transform/AbstractErrorUnmarshaller;->exceptionClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method protected newException(Ljava/lang/String;)Lcom/amazonaws/AmazonServiceException;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/amazonaws/transform/AbstractErrorUnmarshaller;->exceptionClass:Ljava/lang/Class;

    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/AmazonServiceException;

    return-object v0
.end method
