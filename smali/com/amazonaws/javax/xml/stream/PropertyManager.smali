.class public Lcom/amazonaws/javax/xml/stream/PropertyManager;
.super Ljava/lang/Object;
.source "PropertyManager.java"


# static fields
.field public static final CONTEXT_READER:I = 0x1

.field public static final CONTEXT_WRITER:I = 0x2

.field public static final STAX_ENTITIES:Ljava/lang/String; = "com.amazonaws.javax.xml.stream.entities"

.field public static final STAX_NOTATIONS:Ljava/lang/String; = "com.amazonaws.javax.xml.stream.notations"

.field private static final STRING_INTERNING:Ljava/lang/String; = "http://xml.org/sax/features/string-interning"


# instance fields
.field supportedProps:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "context"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    .line 73
    packed-switch p1, :pswitch_data_0

    .line 83
    :goto_0
    return-void

    .line 75
    :pswitch_0
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/PropertyManager;->initConfigurableReaderProperties()V

    goto :goto_0

    .line 79
    :pswitch_1
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/PropertyManager;->initWriterProps()V

    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Lcom/amazonaws/javax/xml/stream/PropertyManager;)V
    .locals 2
    .parameter "propertyManager"

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    .line 90
    invoke-direct {p1}, Lcom/amazonaws/javax/xml/stream/PropertyManager;->getProperties()Ljava/util/HashMap;

    move-result-object v0

    .line 91
    .local v0, properties:Ljava/util/HashMap;
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 92
    return-void
.end method

.method private getProperties()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    return-object v0
.end method

.method private initConfigurableReaderProperties()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 107
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v1, "com.amazonaws.javax.xml.stream.isNamespaceAware"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v1, "com.amazonaws.javax.xml.stream.isValidating"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v1, "com.amazonaws.javax.xml.stream.isReplacingEntityReferences"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v1, "com.amazonaws.javax.xml.stream.isSupportingExternalEntities"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v1, "com.amazonaws.javax.xml.stream.isCoalescing"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v1, "com.amazonaws.javax.xml.stream.supportDTD"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v1, "com.amazonaws.javax.xml.stream.reporter"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v1, "com.amazonaws.javax.xml.stream.resolver"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v1, "com.amazonaws.javax.xml.stream.allocator"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v1, "com.amazonaws.javax.xml.stream.notations"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v1, "http://xml.org/sax/features/string-interning"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v1, "http://apache.org/xml/features/allow-java-encodings"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v1, "reuse-instance"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v1, "http://java.sun.com/xml/stream/properties/report-cdata-event"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v1, "http://java.sun.com/xml/stream/properties/ignore-external-dtd"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v1, "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v1, "http://apache.org/xml/features/warn-on-duplicate-entitydef"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v1, "http://apache.org/xml/features/validation/warn-on-undeclared-elemdef"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v1, "http://java.sun.com/xml/stream/properties/implementation-name"

    const-string v2, "sjsxp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    return-void
.end method

.method private initWriterProps()V
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v1, "com.amazonaws.javax.xml.stream.isRepairingNamespaces"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v1, "escapeCharacters"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v1, "reuse-instance"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v1, "http://java.sun.com/xml/stream/properties/implementation-name"

    const-string v2, "sjsxp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v1, "http://java.sun.com/xml/stream/properties/outputstream"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    return-void
.end method


# virtual methods
.method public containsProperty(Ljava/lang/String;)Z
    .locals 1
    .parameter "property"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "property"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .parameter "property"
    .parameter "value"

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, equivalentProperty:Ljava/lang/String;
    const-string v1, "com.amazonaws.javax.xml.stream.isNamespaceAware"

    if-eq p1, v1, :cond_0

    const-string v1, "com.amazonaws.javax.xml.stream.isNamespaceAware"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 157
    :cond_0
    const-string v0, "http://apache.org/xml/features/namespaces"

    .line 173
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    if-eqz v0, :cond_2

    .line 175
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_2
    return-void

    .line 159
    :cond_3
    const-string v1, "com.amazonaws.javax.xml.stream.isValidating"

    if-eq p1, v1, :cond_4

    const-string v1, "com.amazonaws.javax.xml.stream.isValidating"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 160
    :cond_4
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "true value of isValidating not supported"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 164
    :cond_5
    const-string v1, "http://xml.org/sax/features/string-interning"

    if-eq p1, v1, :cond_6

    const-string v1, "http://xml.org/sax/features/string-interning"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 165
    :cond_6
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 166
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "false value of http://xml.org/sax/features/string-interningfeature is not supported"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 169
    :cond_7
    const-string v1, "com.amazonaws.javax.xml.stream.resolver"

    if-eq p1, v1, :cond_8

    const-string v1, "com.amazonaws.javax.xml.stream.resolver"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    :cond_8
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    const-string v3, "http://apache.org/xml/properties/internal/stax-entity-resolver"

    new-instance v4, Lcom/amazonaws/javax/xml/stream/StaxEntityResolverWrapper;

    move-object v1, p2

    check-cast v1, Lcom/amazonaws/javax/xml/stream/XMLResolver;

    invoke-direct {v4, v1}, Lcom/amazonaws/javax/xml/stream/StaxEntityResolverWrapper;-><init>(Lcom/amazonaws/javax/xml/stream/XMLResolver;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/PropertyManager;->supportedProps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
