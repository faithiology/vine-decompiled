.class public Lcom/amazonaws/javax/xml/stream/StaxErrorReporter;
.super Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;
.source "StaxErrorReporter.java"


# instance fields
.field protected fXMLReporter:Lcom/amazonaws/javax/xml/stream/XMLReporter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/StaxErrorReporter;->fXMLReporter:Lcom/amazonaws/javax/xml/stream/XMLReporter;

    .line 75
    const-string v0, "http://www.w3.org/TR/1998/REC-xml-19980210"

    new-instance v1, Lcom/amazonaws/javax/xml/stream/xerces/impl/msg/XMLMessageFormatter;

    invoke-direct {v1}, Lcom/amazonaws/javax/xml/stream/xerces/impl/msg/XMLMessageFormatter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/amazonaws/javax/xml/stream/StaxErrorReporter;->putMessageFormatter(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/util/MessageFormatter;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/javax/xml/stream/PropertyManager;)V
    .locals 2
    .parameter "propertyManager"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/StaxErrorReporter;->fXMLReporter:Lcom/amazonaws/javax/xml/stream/XMLReporter;

    .line 66
    const-string v0, "http://www.w3.org/TR/1998/REC-xml-19980210"

    new-instance v1, Lcom/amazonaws/javax/xml/stream/xerces/impl/msg/XMLMessageFormatter;

    invoke-direct {v1}, Lcom/amazonaws/javax/xml/stream/xerces/impl/msg/XMLMessageFormatter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/amazonaws/javax/xml/stream/StaxErrorReporter;->putMessageFormatter(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/util/MessageFormatter;)V

    .line 67
    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/stream/StaxErrorReporter;->reset(Lcom/amazonaws/javax/xml/stream/PropertyManager;)V

    .line 68
    return-void
.end method


# virtual methods
.method convertToStaxLocation(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLLocator;)Lcom/amazonaws/javax/xml/stream/Location;
    .locals 1
    .parameter "location"

    .prologue
    .line 172
    new-instance v0, Lcom/amazonaws/javax/xml/stream/StaxErrorReporter$1;

    invoke-direct {v0, p0, p1}, Lcom/amazonaws/javax/xml/stream/StaxErrorReporter$1;-><init>(Lcom/amazonaws/javax/xml/stream/StaxErrorReporter;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLLocator;)V

    return-object v0
.end method

.method public reportError(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V
    .locals 10
    .parameter "location"
    .parameter "domain"
    .parameter "key"
    .parameter "arguments"
    .parameter "severity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-virtual {p0, p2}, Lcom/amazonaws/javax/xml/stream/StaxErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/xerces/util/MessageFormatter;

    move-result-object v4

    .line 104
    .local v4, messageFormatter:Lcom/amazonaws/javax/xml/stream/xerces/util/MessageFormatter;
    if-eqz v4, :cond_1

    .line 105
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/StaxErrorReporter;->fLocale:Ljava/util/Locale;

    invoke-interface {v4, v6, p3, p4}, Lcom/amazonaws/javax/xml/stream/xerces/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, message:Ljava/lang/String;
    :goto_0
    packed-switch p5, :pswitch_data_0

    .line 168
    :cond_0
    :goto_1
    return-void

    .line 108
    .end local v3           #message:Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 109
    .local v5, str:Ljava/lang/StringBuffer;
    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    const/16 v6, 0x23

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 111
    invoke-virtual {v5, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    if-eqz p4, :cond_3

    array-length v0, p4

    .line 113
    .local v0, argCount:I
    :goto_2
    if-lez v0, :cond_4

    .line 114
    const/16 v6, 0x3f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 115
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    if-ge v2, v0, :cond_4

    .line 116
    aget-object v6, p4, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 117
    add-int/lit8 v6, v0, -0x1

    if-ge v2, v6, :cond_2

    .line 118
    const/16 v6, 0x26

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 115
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 112
    .end local v0           #argCount:I
    .end local v2           #i:I
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 122
    .restart local v0       #argCount:I
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #message:Ljava/lang/String;
    goto :goto_0

    .line 138
    .end local v0           #argCount:I
    .end local v5           #str:Ljava/lang/StringBuffer;
    :pswitch_0
    :try_start_0
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/StaxErrorReporter;->fXMLReporter:Lcom/amazonaws/javax/xml/stream/XMLReporter;

    if-eqz v6, :cond_0

    .line 139
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/StaxErrorReporter;->fXMLReporter:Lcom/amazonaws/javax/xml/stream/XMLReporter;

    const-string v7, "WARNING"

    const/4 v8, 0x0

    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/stream/StaxErrorReporter;->convertToStaxLocation(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLLocator;)Lcom/amazonaws/javax/xml/stream/Location;

    move-result-object v9

    invoke-interface {v6, v3, v7, v8, v9}, Lcom/amazonaws/javax/xml/stream/XMLReporter;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/amazonaws/javax/xml/stream/Location;)V
    :try_end_0
    .catch Lcom/amazonaws/javax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 141
    :catch_0
    move-exception v1

    .line 144
    .local v1, ex:Lcom/amazonaws/javax/xml/stream/XMLStreamException;
    new-instance v6, Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;

    invoke-direct {v6, v1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v6

    .line 150
    .end local v1           #ex:Lcom/amazonaws/javax/xml/stream/XMLStreamException;
    :pswitch_1
    :try_start_1
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/StaxErrorReporter;->fXMLReporter:Lcom/amazonaws/javax/xml/stream/XMLReporter;

    if-eqz v6, :cond_0

    .line 151
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/StaxErrorReporter;->fXMLReporter:Lcom/amazonaws/javax/xml/stream/XMLReporter;

    const-string v7, "ERROR"

    const/4 v8, 0x0

    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/stream/StaxErrorReporter;->convertToStaxLocation(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLLocator;)Lcom/amazonaws/javax/xml/stream/Location;

    move-result-object v9

    invoke-interface {v6, v3, v7, v8, v9}, Lcom/amazonaws/javax/xml/stream/XMLReporter;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/amazonaws/javax/xml/stream/Location;)V
    :try_end_1
    .catch Lcom/amazonaws/javax/xml/stream/XMLStreamException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 153
    :catch_1
    move-exception v1

    .line 156
    .restart local v1       #ex:Lcom/amazonaws/javax/xml/stream/XMLStreamException;
    new-instance v6, Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;

    invoke-direct {v6, v1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v6

    .line 161
    .end local v1           #ex:Lcom/amazonaws/javax/xml/stream/XMLStreamException;
    :pswitch_2
    iget-boolean v6, p0, Lcom/amazonaws/javax/xml/stream/StaxErrorReporter;->fContinueAfterFatalError:Z

    if-nez v6, :cond_0

    .line 162
    new-instance v6, Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;

    invoke-direct {v6, v3}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public reset(Lcom/amazonaws/javax/xml/stream/PropertyManager;)V
    .locals 1
    .parameter "propertyManager"

    .prologue
    .line 82
    const-string v0, "com.amazonaws.javax.xml.stream.reporter"

    invoke-virtual {p1, v0}, Lcom/amazonaws/javax/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/XMLReporter;

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/StaxErrorReporter;->fXMLReporter:Lcom/amazonaws/javax/xml/stream/XMLReporter;

    .line 83
    return-void
.end method
