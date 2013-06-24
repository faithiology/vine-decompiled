.class public Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
.super Ljava/lang/RuntimeException;
.source "XNIException.java"


# instance fields
.field private fException:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1
    .parameter "exception"

    .prologue
    .line 139
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 140
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;->fException:Ljava/lang/Exception;

    .line 141
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .parameter "message"
    .parameter "exception"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 151
    iput-object p2, p0, Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;->fException:Ljava/lang/Exception;

    .line 152
    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;->fException:Ljava/lang/Exception;

    return-object v0
.end method
