.class public Lcom/amazonaws/javax/xml/transform/stax/StAXResult;
.super Ljava/lang/Object;
.source "StAXResult.java"

# interfaces
.implements Lcom/amazonaws/javax/xml/transform/Result;


# static fields
.field public static final FEATURE:Ljava/lang/String; = "http://javax.xml.transform.stax.StAXResult/feature"


# instance fields
.field private systemId:Ljava/lang/String;

.field private xmlEventWriter:Lcom/amazonaws/javax/xml/stream/XMLEventWriter;

.field private xmlStreamWriter:Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;


# direct methods
.method public constructor <init>(Lcom/amazonaws/javax/xml/stream/XMLEventWriter;)V
    .locals 2
    .parameter "xmlEventWriter"

    .prologue
    const/4 v0, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object v0, p0, Lcom/amazonaws/javax/xml/transform/stax/StAXResult;->xmlEventWriter:Lcom/amazonaws/javax/xml/stream/XMLEventWriter;

    .line 86
    iput-object v0, p0, Lcom/amazonaws/javax/xml/transform/stax/StAXResult;->xmlStreamWriter:Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;

    .line 89
    iput-object v0, p0, Lcom/amazonaws/javax/xml/transform/stax/StAXResult;->systemId:Ljava/lang/String;

    .line 106
    if-nez p1, :cond_0

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "StAXResult(XMLEventWriter) with XMLEventWriter == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    iput-object p1, p0, Lcom/amazonaws/javax/xml/transform/stax/StAXResult;->xmlEventWriter:Lcom/amazonaws/javax/xml/stream/XMLEventWriter;

    .line 112
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;)V
    .locals 2
    .parameter "xmlStreamWriter"

    .prologue
    const/4 v0, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object v0, p0, Lcom/amazonaws/javax/xml/transform/stax/StAXResult;->xmlEventWriter:Lcom/amazonaws/javax/xml/stream/XMLEventWriter;

    .line 86
    iput-object v0, p0, Lcom/amazonaws/javax/xml/transform/stax/StAXResult;->xmlStreamWriter:Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;

    .line 89
    iput-object v0, p0, Lcom/amazonaws/javax/xml/transform/stax/StAXResult;->systemId:Ljava/lang/String;

    .line 129
    if-nez p1, :cond_0

    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "StAXResult(XMLStreamWriter) with XMLStreamWriter == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    iput-object p1, p0, Lcom/amazonaws/javax/xml/transform/stax/StAXResult;->xmlStreamWriter:Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;

    .line 135
    return-void
.end method


# virtual methods
.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    return-object v0
.end method

.method public getXMLEventWriter()Lcom/amazonaws/javax/xml/stream/XMLEventWriter;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/amazonaws/javax/xml/transform/stax/StAXResult;->xmlEventWriter:Lcom/amazonaws/javax/xml/stream/XMLEventWriter;

    return-object v0
.end method

.method public getXMLStreamWriter()Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/amazonaws/javax/xml/transform/stax/StAXResult;->xmlStreamWriter:Lcom/amazonaws/javax/xml/stream/XMLStreamWriter;

    return-object v0
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 2
    .parameter "systemId"

    .prologue
    .line 186
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "StAXResult#setSystemId(systemId) cannot set the system identifier for a StAXResult"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
