.class public Lcom/amazonaws/javax/xml/stream/FactoryConfigurationError;
.super Ljava/lang/Error;
.source "FactoryConfigurationError.java"


# instance fields
.field nested:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/FactoryConfigurationError;->nested:Ljava/lang/Exception;

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0
    .parameter "e"
    .parameter "msg"

    .prologue
    .line 72
    invoke-direct {p0, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 73
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/FactoryConfigurationError;->nested:Ljava/lang/Exception;

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 85
    iput-object p2, p0, Lcom/amazonaws/javax/xml/stream/FactoryConfigurationError;->nested:Ljava/lang/Exception;

    .line 86
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/FactoryConfigurationError;->nested:Ljava/lang/Exception;

    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/FactoryConfigurationError;->nested:Ljava/lang/Exception;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 119
    invoke-super {p0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, msg:Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 127
    .end local v0           #msg:Ljava/lang/String;
    .local v1, msg:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 122
    .end local v1           #msg:Ljava/lang/String;
    .restart local v0       #msg:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/FactoryConfigurationError;->nested:Ljava/lang/Exception;

    if-eqz v2, :cond_1

    .line 123
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/FactoryConfigurationError;->nested:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 124
    if-nez v0, :cond_1

    .line 125
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/FactoryConfigurationError;->nested:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v1, v0

    .line 127
    .end local v0           #msg:Ljava/lang/String;
    .restart local v1       #msg:Ljava/lang/String;
    goto :goto_0
.end method
