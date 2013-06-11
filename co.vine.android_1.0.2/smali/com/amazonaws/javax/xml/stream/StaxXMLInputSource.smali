.class public Lcom/amazonaws/javax/xml/stream/StaxXMLInputSource;
.super Ljava/lang/Object;
.source "StaxXMLInputSource.java"


# instance fields
.field fEventReader:Lcom/amazonaws/javax/xml/stream/XMLEventReader;

.field fInputSource:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;

.field fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;


# direct methods
.method public constructor <init>(Lcom/amazonaws/javax/xml/stream/XMLEventReader;)V
    .locals 0
    .parameter "eventReader"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/StaxXMLInputSource;->fEventReader:Lcom/amazonaws/javax/xml/stream/XMLEventReader;

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/javax/xml/stream/XMLStreamReader;)V
    .locals 0
    .parameter "streamReader"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/StaxXMLInputSource;->fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;)V
    .locals 0
    .parameter "inputSource"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/StaxXMLInputSource;->fInputSource:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;

    .line 74
    return-void
.end method


# virtual methods
.method public getXMLEventReader()Lcom/amazonaws/javax/xml/stream/XMLEventReader;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/StaxXMLInputSource;->fEventReader:Lcom/amazonaws/javax/xml/stream/XMLEventReader;

    return-object v0
.end method

.method public getXMLInputSource()Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/StaxXMLInputSource;->fInputSource:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;

    return-object v0
.end method

.method public getXMLStreamReader()Lcom/amazonaws/javax/xml/stream/XMLStreamReader;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/StaxXMLInputSource;->fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    return-object v0
.end method

.method public hasXMLStreamOrXMLEventReader()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/StaxXMLInputSource;->fStreamReader:Lcom/amazonaws/javax/xml/stream/XMLStreamReader;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/StaxXMLInputSource;->fEventReader:Lcom/amazonaws/javax/xml/stream/XMLEventReader;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
