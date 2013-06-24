.class public Lcom/amazonaws/javax/xml/stream/xerces/impl/msg/XMLMessageFormatter;
.super Ljava/lang/Object;
.source "XMLMessageFormatter.java"

# interfaces
.implements Lcom/amazonaws/javax/xml/stream/xerces/util/MessageFormatter;


# static fields
.field public static final XMLNS_DOMAIN:Ljava/lang/String; = "http://www.w3.org/TR/1999/REC-xml-names-19990114"

.field public static final XML_DOMAIN:Ljava/lang/String; = "http://www.w3.org/TR/1998/REC-xml-19980210"


# instance fields
.field private fLocale:Ljava/util/Locale;

.field private fResourceBundle:Ljava/util/ResourceBundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/msg/XMLMessageFormatter;->fLocale:Ljava/util/Locale;

    .line 120
    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/msg/XMLMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    return-void
.end method


# virtual methods
.method public formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .parameter "locale"
    .parameter "key"
    .parameter "arguments"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .prologue
    .line 144
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/msg/XMLMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/msg/XMLMessageFormatter;->fLocale:Ljava/util/Locale;

    if-eq p1, v4, :cond_2

    .line 145
    :cond_0
    if-eqz p1, :cond_1

    .line 146
    const-string v4, "com.amazonaws.javax.xml.stream.xerces.impl.msg.XMLMessages"

    invoke-static {v4, p1}, Ljava/util/PropertyResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v4

    iput-object v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/msg/XMLMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    .line 148
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/msg/XMLMessageFormatter;->fLocale:Ljava/util/Locale;

    .line 150
    :cond_1
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/msg/XMLMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    if-nez v4, :cond_2

    .line 151
    const-string v4, "com.amazonaws.javax.xml.stream.xerces.impl.msg.XMLMessages"

    invoke-static {v4}, Ljava/util/PropertyResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v4

    iput-object v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/msg/XMLMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    .line 157
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/msg/XMLMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    invoke-virtual {v4, p2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 158
    .local v2, msg:Ljava/lang/String;
    if-eqz p3, :cond_3

    .line 160
    :try_start_1
    invoke-static {v2, p3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 176
    :cond_3
    :goto_0
    if-nez v2, :cond_5

    .line 177
    move-object v2, p2

    .line 178
    array-length v4, p3

    if-lez v4, :cond_5

    .line 179
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 180
    .local v3, str:Ljava/lang/StringBuffer;
    const/16 v4, 0x3f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 181
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, p3

    if-ge v1, v4, :cond_5

    .line 182
    if-lez v1, :cond_4

    .line 183
    const/16 v4, 0x26

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 185
    :cond_4
    aget-object v4, p3, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 162
    .end local v1           #i:I
    .end local v3           #str:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v0

    .line 163
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/msg/XMLMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    const-string v5, "FormatFailed"

    invoke-virtual {v4, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 164
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/msg/XMLMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    invoke-virtual {v5, p2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    goto :goto_0

    .line 170
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #msg:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 171
    .local v0, e:Ljava/util/MissingResourceException;
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/msg/XMLMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    const-string v5, "BadMessageKey"

    invoke-virtual {v4, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 172
    .restart local v2       #msg:Ljava/lang/String;
    new-instance v4, Ljava/util/MissingResourceException;

    invoke-direct {v4, p2, v2, p2}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 190
    .end local v0           #e:Ljava/util/MissingResourceException;
    :cond_5
    return-object v2
.end method
