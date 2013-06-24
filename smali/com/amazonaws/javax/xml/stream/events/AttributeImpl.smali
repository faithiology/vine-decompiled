.class public Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;
.super Lcom/amazonaws/javax/xml/stream/events/DummyEvent;
.source "AttributeImpl.java"

# interfaces
.implements Lcom/amazonaws/javax/xml/stream/events/Attribute;


# instance fields
.field private fAttributeType:Ljava/lang/String;

.field private fIsSpecified:Z

.field private fNonNormalizedvalue:Ljava/lang/String;

.field private fQName:Lcom/amazonaws/javax/xml/namespace/QName;

.field private fValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/events/DummyEvent;-><init>()V

    .line 70
    const-string v0, "CDATA"

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;->fAttributeType:Ljava/lang/String;

    .line 78
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;->init()V

    .line 79
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/javax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "qname"
    .parameter "value"
    .parameter "nonNormalizedvalue"
    .parameter "type"
    .parameter "isSpecified"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/events/DummyEvent;-><init>()V

    .line 70
    const-string v0, "CDATA"

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;->fAttributeType:Ljava/lang/String;

    .line 100
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;->init()V

    .line 101
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;->fQName:Lcom/amazonaws/javax/xml/namespace/QName;

    .line 102
    iput-object p2, p0, Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;->fValue:Ljava/lang/String;

    .line 103
    if-eqz p4, :cond_0

    const-string v0, ""

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iput-object p4, p0, Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;->fAttributeType:Ljava/lang/String;

    .line 106
    :cond_0
    iput-object p3, p0, Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;->fNonNormalizedvalue:Ljava/lang/String;

    .line 107
    iput-boolean p5, p0, Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;->fIsSpecified:Z

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/events/DummyEvent;-><init>()V

    .line 70
    const-string v0, "CDATA"

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;->fAttributeType:Ljava/lang/String;

    .line 81
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;->init()V

    .line 82
    new-instance v0, Lcom/amazonaws/javax/xml/namespace/QName;

    invoke-direct {v0, p1}, Lcom/amazonaws/javax/xml/namespace/QName;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;->fQName:Lcom/amazonaws/javax/xml/namespace/QName;

    .line 83
    iput-object p2, p0, Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;->fValue:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "prefix"
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 87
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "prefix"
    .parameter "uri"
    .parameter "localPart"
    .parameter "value"
    .parameter "type"

    .prologue
    .line 91
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .parameter "prefix"
    .parameter "uri"
    .parameter "localPart"
    .parameter "value"
    .parameter "nonNormalizedvalue"
    .parameter "type"
    .parameter "isSpecified"

    .prologue
    .line 95
    new-instance v1, Lcom/amazonaws/javax/xml/namespace/QName;

    invoke-direct {v1, p2, p3, p1}, Lcom/amazonaws/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;-><init>(Lcom/amazonaws/javax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 96
    return-void
.end method


# virtual methods
.method public getDTDType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;->fAttributeType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Lcom/amazonaws/javax/xml/namespace/QName;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;->fQName:Lcom/amazonaws/javax/xml/namespace/QName;

    return-object v0
.end method

.method public getNonNormalizedValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;->fNonNormalizedvalue:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;->fValue:Ljava/lang/String;

    return-object v0
.end method

.method protected init()V
    .locals 1

    .prologue
    .line 169
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;->setEventType(I)V

    .line 170
    return-void
.end method

.method public isSpecified()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;->fIsSpecified:Z

    return v0
.end method

.method public setAttributeType(Ljava/lang/String;)V
    .locals 0
    .parameter "attributeType"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;->fAttributeType:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setName(Lcom/amazonaws/javax/xml/namespace/QName;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;->fQName:Lcom/amazonaws/javax/xml/namespace/QName;

    .line 120
    return-void
.end method

.method public setNonNormalizedValue(Ljava/lang/String;)V
    .locals 0
    .parameter "nonNormalizedvalue"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;->fNonNormalizedvalue:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setSpecified(Z)V
    .locals 0
    .parameter "isSpecified"

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;->fIsSpecified:Z

    .line 156
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;->fValue:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;->fQName:Lcom/amazonaws/javax/xml/namespace/QName;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;->fQName:Lcom/amazonaws/javax/xml/namespace/QName;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;->fQName:Lcom/amazonaws/javax/xml/namespace/QName;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;->fQName:Lcom/amazonaws/javax/xml/namespace/QName;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;->fValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;->fQName:Lcom/amazonaws/javax/xml/namespace/QName;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;->fValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected writeAsEncodedUnicodeEx(Ljava/io/Writer;)V
    .locals 1
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 166
    return-void
.end method
