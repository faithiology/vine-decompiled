.class public Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;
.super Lcom/amazonaws/javax/xml/stream/events/DummyEvent;
.source "StartElementEvent.java"

# interfaces
.implements Lcom/amazonaws/javax/xml/stream/events/StartElement;


# instance fields
.field private fAttributes:Ljava/util/Map;

.field private fNamespaceContext:Lcom/amazonaws/javax/xml/namespace/NamespaceContext;

.field private fNamespaces:Ljava/util/List;

.field private fQName:Lcom/amazonaws/javax/xml/namespace/QName;


# direct methods
.method public constructor <init>(Lcom/amazonaws/javax/xml/namespace/QName;)V
    .locals 1
    .parameter "qname"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/events/DummyEvent;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;->fNamespaceContext:Lcom/amazonaws/javax/xml/namespace/NamespaceContext;

    .line 78
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;->fQName:Lcom/amazonaws/javax/xml/namespace/QName;

    .line 79
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;->init()V

    .line 80
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/javax/xml/stream/events/StartElement;)V
    .locals 1
    .parameter "startelement"

    .prologue
    .line 83
    invoke-interface {p1}, Lcom/amazonaws/javax/xml/stream/events/StartElement;->getName()Lcom/amazonaws/javax/xml/namespace/QName;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;-><init>(Lcom/amazonaws/javax/xml/namespace/QName;)V

    .line 84
    invoke-interface {p1}, Lcom/amazonaws/javax/xml/stream/events/StartElement;->getAttributes()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;->addAttributes(Ljava/util/Iterator;)V

    .line 85
    invoke-interface {p1}, Lcom/amazonaws/javax/xml/stream/events/StartElement;->getNamespaces()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;->addNamespaceAttributes(Ljava/util/Iterator;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "prefix"
    .parameter "uri"
    .parameter "localpart"

    .prologue
    .line 74
    new-instance v0, Lcom/amazonaws/javax/xml/namespace/QName;

    invoke-direct {v0, p2, p3, p1}, Lcom/amazonaws/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;-><init>(Lcom/amazonaws/javax/xml/namespace/QName;)V

    .line 75
    return-void
.end method


# virtual methods
.method addAttribute(Lcom/amazonaws/javax/xml/stream/events/Attribute;)V
    .locals 2
    .parameter "attr"

    .prologue
    .line 195
    invoke-interface {p1}, Lcom/amazonaws/javax/xml/stream/events/Attribute;->isNamespace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;->fNamespaces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;->fAttributes:Ljava/util/Map;

    invoke-interface {p1}, Lcom/amazonaws/javax/xml/stream/events/Attribute;->getName()Lcom/amazonaws/javax/xml/namespace/QName;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method addAttributes(Ljava/util/Iterator;)V
    .locals 3
    .parameter "attrs"

    .prologue
    .line 203
    if-nez p1, :cond_1

    .line 209
    :cond_0
    return-void

    .line 205
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/events/Attribute;

    .line 207
    .local v0, attr:Lcom/amazonaws/javax/xml/stream/events/Attribute;
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;->fAttributes:Ljava/util/Map;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/events/Attribute;->getName()Lcom/amazonaws/javax/xml/namespace/QName;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method addNamespaceAttribute(Lcom/amazonaws/javax/xml/stream/events/Namespace;)V
    .locals 1
    .parameter "attr"

    .prologue
    .line 212
    if-nez p1, :cond_0

    .line 215
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;->fNamespaces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method addNamespaceAttributes(Ljava/util/Iterator;)V
    .locals 2
    .parameter "attrs"

    .prologue
    .line 218
    if-nez p1, :cond_1

    .line 224
    :cond_0
    return-void

    .line 220
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/events/Namespace;

    .line 222
    .local v0, attr:Lcom/amazonaws/javax/xml/stream/events/Namespace;
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;->fNamespaces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getAttributeByName(Lcom/amazonaws/javax/xml/namespace/QName;)Lcom/amazonaws/javax/xml/stream/events/Attribute;
    .locals 1
    .parameter "qname"

    .prologue
    .line 118
    if-nez p1, :cond_0

    .line 119
    const/4 v0, 0x0

    .line 120
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;->fAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/events/Attribute;

    goto :goto_0
.end method

.method public getAttributes()Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 103
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;->fAttributes:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;->fAttributes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 105
    .local v0, coll:Ljava/util/Collection;
    new-instance v1, Lcom/amazonaws/javax/xml/stream/util/ReadOnlyIterator;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazonaws/javax/xml/stream/util/ReadOnlyIterator;-><init>(Ljava/util/Iterator;)V

    .line 107
    .end local v0           #coll:Ljava/util/Collection;
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/amazonaws/javax/xml/stream/util/ReadOnlyIterator;

    invoke-direct {v1}, Lcom/amazonaws/javax/xml/stream/util/ReadOnlyIterator;-><init>()V

    goto :goto_0
.end method

.method public getName()Lcom/amazonaws/javax/xml/namespace/QName;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;->fQName:Lcom/amazonaws/javax/xml/namespace/QName;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;->fQName:Lcom/amazonaws/javax/xml/namespace/QName;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceContext()Lcom/amazonaws/javax/xml/namespace/NamespaceContext;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;->fNamespaceContext:Lcom/amazonaws/javax/xml/namespace/NamespaceContext;

    return-object v0
.end method

.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "prefix"

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;->getNamespace()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;->fQName:Lcom/amazonaws/javax/xml/namespace/QName;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 133
    :goto_0
    return-object v0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;->fNamespaceContext:Lcom/amazonaws/javax/xml/namespace/NamespaceContext;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;->fNamespaceContext:Lcom/amazonaws/javax/xml/namespace/NamespaceContext;

    invoke-interface {v0, p1}, Lcom/amazonaws/javax/xml/namespace/NamespaceContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 133
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNamespaces()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;->fNamespaces:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Lcom/amazonaws/javax/xml/stream/util/ReadOnlyIterator;

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;->fNamespaces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/javax/xml/stream/util/ReadOnlyIterator;-><init>(Ljava/util/Iterator;)V

    .line 114
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/amazonaws/javax/xml/stream/util/ReadOnlyIterator;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/util/ReadOnlyIterator;-><init>()V

    goto :goto_0
.end method

.method protected init()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;->setEventType(I)V

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;->fAttributes:Ljava/util/Map;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;->fNamespaces:Ljava/util/List;

    .line 92
    return-void
.end method

.method public nameAsString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 164
    const-string v0, ""

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;->fQName:Lcom/amazonaws/javax/xml/namespace/QName;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;->fQName:Lcom/amazonaws/javax/xml/namespace/QName;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    .line 169
    :goto_0
    return-object v0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;->fQName:Lcom/amazonaws/javax/xml/namespace/QName;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 167
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "[\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;->fQName:Lcom/amazonaws/javax/xml/namespace/QName;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\']:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;->fQName:Lcom/amazonaws/javax/xml/namespace/QName;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;->fQName:Lcom/amazonaws/javax/xml/namespace/QName;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 169
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "[\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;->fQName:Lcom/amazonaws/javax/xml/namespace/QName;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\']:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;->fQName:Lcom/amazonaws/javax/xml/namespace/QName;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setName(Lcom/amazonaws/javax/xml/namespace/QName;)V
    .locals 0
    .parameter "qname"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;->fQName:Lcom/amazonaws/javax/xml/namespace/QName;

    .line 100
    return-void
.end method

.method public setNamespaceContext(Lcom/amazonaws/javax/xml/namespace/NamespaceContext;)V
    .locals 0
    .parameter "nc"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;->fNamespaceContext:Lcom/amazonaws/javax/xml/namespace/NamespaceContext;

    .line 186
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 137
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;->nameAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, s:Ljava/lang/String;
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;->fAttributes:Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;->getAttributes()Ljava/util/Iterator;

    move-result-object v1

    .line 141
    .local v1, it:Ljava/util/Iterator;
    const/4 v0, 0x0

    .line 142
    .local v0, attr:Lcom/amazonaws/javax/xml/stream/events/Attribute;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 143
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #attr:Lcom/amazonaws/javax/xml/stream/events/Attribute;
    check-cast v0, Lcom/amazonaws/javax/xml/stream/events/Attribute;

    .line 144
    .restart local v0       #attr:Lcom/amazonaws/javax/xml/stream/events/Attribute;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 145
    goto :goto_0

    .line 148
    .end local v0           #attr:Lcom/amazonaws/javax/xml/stream/events/Attribute;
    .end local v1           #it:Ljava/util/Iterator;
    :cond_0
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;->fNamespaces:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 149
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;->fNamespaces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 150
    .restart local v1       #it:Ljava/util/Iterator;
    const/4 v0, 0x0

    .line 151
    .local v0, attr:Lcom/amazonaws/javax/xml/stream/events/Namespace;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 152
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #attr:Lcom/amazonaws/javax/xml/stream/events/Namespace;
    check-cast v0, Lcom/amazonaws/javax/xml/stream/events/Namespace;

    .line 153
    .restart local v0       #attr:Lcom/amazonaws/javax/xml/stream/events/Namespace;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 154
    goto :goto_1

    .line 156
    .end local v0           #attr:Lcom/amazonaws/javax/xml/stream/events/Namespace;
    .end local v1           #it:Ljava/util/Iterator;
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 157
    return-object v2
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
    .line 191
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/events/StartElementEvent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 192
    return-void
.end method
