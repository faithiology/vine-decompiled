.class public Lcom/amazonaws/javax/xml/stream/events/NamespaceImpl;
.super Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;
.source "NamespaceImpl.java"

# interfaces
.implements Lcom/amazonaws/javax/xml/stream/events/Namespace;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;-><init>()V

    .line 55
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/events/NamespaceImpl;->init()V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .parameter "namespaceURI"

    .prologue
    .line 60
    const-string v1, "xmlns"

    const-string v2, "http://www.w3.org/2000/xmlns/"

    const-string v3, ""

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/events/NamespaceImpl;->init()V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "prefix"
    .parameter "namespaceURI"

    .prologue
    .line 65
    const-string v1, "xmlns"

    const-string v2, "http://www.w3.org/2000/xmlns/"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/javax/xml/stream/events/AttributeImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/events/NamespaceImpl;->init()V

    .line 67
    return-void
.end method


# virtual methods
.method public getEventType()I
    .locals 1

    .prologue
    .line 110
    const/16 v0, 0xd

    return v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/events/NamespaceImpl;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/events/NamespaceImpl;->getName()Lcom/amazonaws/javax/xml/namespace/QName;

    move-result-object v0

    .line 88
    .local v0, name:Lcom/amazonaws/javax/xml/namespace/QName;
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    .line 90
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected init()V
    .locals 1

    .prologue
    .line 106
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/stream/events/NamespaceImpl;->setEventType(I)V

    .line 107
    return-void
.end method

.method public isDefaultNamespaceDeclaration()Z
    .locals 3

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/events/NamespaceImpl;->getName()Lcom/amazonaws/javax/xml/namespace/QName;

    move-result-object v0

    .line 72
    .local v0, name:Lcom/amazonaws/javax/xml/namespace/QName;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    const/4 v1, 0x1

    .line 74
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNamespace()Z
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method setNamespaceURI(Ljava/lang/String;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/stream/events/NamespaceImpl;->setValue(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method setPrefix(Ljava/lang/String;)V
    .locals 4
    .parameter "prefix"

    .prologue
    .line 78
    if-nez p1, :cond_0

    .line 79
    new-instance v0, Lcom/amazonaws/javax/xml/namespace/QName;

    const-string v1, "http://www.w3.org/2000/xmlns/"

    const-string v2, ""

    const-string v3, "xmlns"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/stream/events/NamespaceImpl;->setName(Lcom/amazonaws/javax/xml/namespace/QName;)V

    .line 82
    :goto_0
    return-void

    .line 81
    :cond_0
    new-instance v0, Lcom/amazonaws/javax/xml/namespace/QName;

    const-string v1, "http://www.w3.org/2000/xmlns/"

    const-string v2, "xmlns"

    invoke-direct {v0, v1, p1, v2}, Lcom/amazonaws/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/stream/events/NamespaceImpl;->setName(Lcom/amazonaws/javax/xml/namespace/QName;)V

    goto :goto_0
.end method
