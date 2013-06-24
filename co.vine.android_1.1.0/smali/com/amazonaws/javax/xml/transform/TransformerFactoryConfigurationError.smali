.class public Lcom/amazonaws/javax/xml/transform/TransformerFactoryConfigurationError;
.super Ljava/lang/Error;
.source "TransformerFactoryConfigurationError.java"


# instance fields
.field private exception:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/transform/TransformerFactoryConfigurationError;->exception:Ljava/lang/Exception;

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 91
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 93
    iput-object p1, p0, Lcom/amazonaws/javax/xml/transform/TransformerFactoryConfigurationError;->exception:Ljava/lang/Exception;

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0
    .parameter "e"
    .parameter "msg"

    .prologue
    .line 106
    invoke-direct {p0, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 108
    iput-object p1, p0, Lcom/amazonaws/javax/xml/transform/TransformerFactoryConfigurationError;->exception:Ljava/lang/Exception;

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/transform/TransformerFactoryConfigurationError;->exception:Ljava/lang/Exception;

    .line 80
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/amazonaws/javax/xml/transform/TransformerFactoryConfigurationError;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/amazonaws/javax/xml/transform/TransformerFactoryConfigurationError;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    invoke-super {p0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, message:Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/amazonaws/javax/xml/transform/TransformerFactoryConfigurationError;->exception:Ljava/lang/Exception;

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/amazonaws/javax/xml/transform/TransformerFactoryConfigurationError;->exception:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 126
    .end local v0           #message:Ljava/lang/String;
    :cond_0
    return-object v0
.end method
