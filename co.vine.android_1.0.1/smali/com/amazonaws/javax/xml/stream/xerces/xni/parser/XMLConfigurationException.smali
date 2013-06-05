.class public Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;
.super Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
.source "XMLConfigurationException.java"


# static fields
.field public static final NOT_RECOGNIZED:S = 0x0s

.field public static final NOT_SUPPORTED:S = 0x1s


# instance fields
.field protected fIdentifier:Ljava/lang/String;

.field protected fType:S


# direct methods
.method public constructor <init>(SLjava/lang/String;)V
    .locals 0
    .parameter "type"
    .parameter "identifier"

    .prologue
    .line 145
    invoke-direct {p0, p2}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;-><init>(Ljava/lang/String;)V

    .line 146
    iput-short p1, p0, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;->fType:S

    .line 147
    iput-object p2, p0, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;->fIdentifier:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public constructor <init>(SLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "type"
    .parameter "identifier"
    .parameter "message"

    .prologue
    .line 163
    invoke-direct {p0, p3}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;-><init>(Ljava/lang/String;)V

    .line 164
    iput-short p1, p0, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;->fType:S

    .line 165
    iput-object p2, p0, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;->fIdentifier:Ljava/lang/String;

    .line 166
    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;->fIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getType()S
    .locals 1

    .prologue
    .line 179
    iget-short v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;->fType:S

    return v0
.end method
