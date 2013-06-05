.class public Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;
.super Ljava/lang/Object;
.source "XMLErrorReporter.java"

# interfaces
.implements Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponent;


# static fields
.field protected static final CONTINUE_AFTER_FATAL_ERROR:Ljava/lang/String; = "http://apache.org/xml/features/continue-after-fatal-error"

.field protected static final ERROR_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-handler"

.field private static final FEATURE_DEFAULTS:[Ljava/lang/Boolean; = null

.field private static final PROPERTY_DEFAULTS:[Ljava/lang/Object; = null

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String; = null

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String; = null

.field public static final SEVERITY_ERROR:S = 0x1s

.field public static final SEVERITY_FATAL_ERROR:S = 0x2s

.field public static final SEVERITY_WARNING:S


# instance fields
.field protected fContinueAfterFatalError:Z

.field protected fDefaultErrorHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLErrorHandler;

.field protected fErrorHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLErrorHandler;

.field protected fLocale:Ljava/util/Locale;

.field protected fLocator:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLLocator;

.field protected fMessageFormatters:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 194
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "http://apache.org/xml/features/continue-after-fatal-error"

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    .line 199
    new-array v0, v3, [Ljava/lang/Boolean;

    aput-object v4, v0, v2

    sput-object v0, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    .line 204
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "http://apache.org/xml/properties/internal/error-handler"

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    .line 209
    new-array v0, v3, [Ljava/lang/Object;

    aput-object v4, v0, v2

    sput-object v0, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->fMessageFormatters:Ljava/util/Hashtable;

    .line 264
    return-void
.end method


# virtual methods
.method public getErrorHandler()Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLErrorHandler;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->fErrorHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLErrorHandler;

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 2
    .parameter "featureId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 517
    const-string v1, "http://apache.org/xml/features/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 518
    const-string v1, "http://apache.org/xml/features/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 524
    .local v0, feature:Ljava/lang/String;
    const-string v1, "continue-after-fatal-error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 525
    iget-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->fContinueAfterFatalError:Z

    .line 528
    .end local v0           #feature:Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .parameter "featureId"

    .prologue
    .line 583
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 584
    sget-object v1, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 585
    sget-object v1, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    aget-object v1, v1, v0

    .line 588
    :goto_1
    return-object v1

    .line 583
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 588
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->fLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getMessageFormatter(Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/xerces/util/MessageFormatter;
    .locals 1
    .parameter "domain"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->fMessageFormatters:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/xerces/util/MessageFormatter;

    return-object v0
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "propertyId"

    .prologue
    .line 601
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 602
    sget-object v1, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 603
    sget-object v1, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 606
    :goto_1
    return-object v1

    .line 601
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 606
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 470
    sget-object v0, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 538
    sget-object v0, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public putMessageFormatter(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/util/MessageFormatter;)V
    .locals 1
    .parameter "domain"
    .parameter "messageFormatter"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->fMessageFormatters:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    return-void
.end method

.method public removeMessageFormatter(Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/xerces/util/MessageFormatter;
    .locals 1
    .parameter "domain"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->fMessageFormatters:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/xerces/util/MessageFormatter;

    return-object v0
.end method

.method public reportError(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V
    .locals 8
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
    .line 375
    invoke-virtual {p0, p2}, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/xerces/util/MessageFormatter;

    move-result-object v4

    .line 377
    .local v4, messageFormatter:Lcom/amazonaws/javax/xml/stream/xerces/util/MessageFormatter;
    if-eqz v4, :cond_3

    .line 378
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->fLocale:Ljava/util/Locale;

    invoke-interface {v4, v7, p3, p4}, Lcom/amazonaws/javax/xml/stream/xerces/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 397
    .local v3, message:Ljava/lang/String;
    :goto_0
    new-instance v5, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLParseException;

    invoke-direct {v5, p1, v3}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLParseException;-><init>(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLLocator;Ljava/lang/String;)V

    .line 401
    .local v5, parseException:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLParseException;
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->fErrorHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLErrorHandler;

    .line 402
    .local v1, errorHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLErrorHandler;
    if-nez v1, :cond_1

    .line 403
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->fDefaultErrorHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLErrorHandler;

    if-nez v7, :cond_0

    .line 404
    new-instance v7, Lcom/amazonaws/javax/xml/stream/xerces/util/DefaultErrorHandler;

    invoke-direct {v7}, Lcom/amazonaws/javax/xml/stream/xerces/util/DefaultErrorHandler;-><init>()V

    iput-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->fDefaultErrorHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLErrorHandler;

    .line 406
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->fDefaultErrorHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLErrorHandler;

    .line 410
    :cond_1
    packed-switch p5, :pswitch_data_0

    .line 428
    :cond_2
    :goto_1
    return-void

    .line 381
    .end local v1           #errorHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLErrorHandler;
    .end local v3           #message:Ljava/lang/String;
    .end local v5           #parseException:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLParseException;
    :cond_3
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 382
    .local v6, str:Ljava/lang/StringBuffer;
    invoke-virtual {v6, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 383
    const/16 v7, 0x23

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 384
    invoke-virtual {v6, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 385
    if-eqz p4, :cond_5

    array-length v0, p4

    .line 386
    .local v0, argCount:I
    :goto_2
    if-lez v0, :cond_6

    .line 387
    const/16 v7, 0x3f

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 388
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    if-ge v2, v0, :cond_6

    .line 389
    aget-object v7, p4, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 390
    add-int/lit8 v7, v0, -0x1

    if-ge v2, v7, :cond_4

    .line 391
    const/16 v7, 0x26

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 388
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 385
    .end local v0           #argCount:I
    .end local v2           #i:I
    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 395
    .restart local v0       #argCount:I
    :cond_6
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #message:Ljava/lang/String;
    goto :goto_0

    .line 412
    .end local v0           #argCount:I
    .end local v6           #str:Ljava/lang/StringBuffer;
    .restart local v1       #errorHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLErrorHandler;
    .restart local v5       #parseException:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLParseException;
    :pswitch_0
    invoke-interface {v1, p2, p3, v5}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLErrorHandler;->warning(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLParseException;)V

    goto :goto_1

    .line 416
    :pswitch_1
    invoke-interface {v1, p2, p3, v5}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLErrorHandler;->error(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLParseException;)V

    goto :goto_1

    .line 420
    :pswitch_2
    invoke-interface {v1, p2, p3, v5}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLErrorHandler;->fatalError(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLParseException;)V

    .line 421
    iget-boolean v7, p0, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->fContinueAfterFatalError:Z

    if-nez v7, :cond_2

    .line 422
    throw v5

    .line 410
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V
    .locals 6
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
    .line 350
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->fLocator:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLLocator;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->reportError(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 351
    return-void
.end method

.method public reset(Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponentManager;)V
    .locals 2
    .parameter "componentManager"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 453
    :try_start_0
    const-string v1, "http://apache.org/xml/features/continue-after-fatal-error"

    invoke-interface {p1, v1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->fContinueAfterFatalError:Z
    :try_end_0
    .catch Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    :goto_0
    const-string v1, "http://apache.org/xml/properties/internal/error-handler"

    invoke-interface {p1, v1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLErrorHandler;

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->fErrorHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLErrorHandler;

    .line 462
    return-void

    .line 455
    :catch_0
    move-exception v0

    .line 456
    .local v0, e:Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->fContinueAfterFatalError:Z

    goto :goto_0
.end method

.method public setDocumentLocator(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLLocator;)V
    .locals 0
    .parameter "locator"

    .prologue
    .line 294
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->fLocator:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLLocator;

    .line 295
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .parameter "featureId"
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 495
    const-string v1, "http://apache.org/xml/features/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 496
    const-string v1, "http://apache.org/xml/features/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, feature:Ljava/lang/String;
    const-string v1, "continue-after-fatal-error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 503
    iput-boolean p2, p0, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->fContinueAfterFatalError:Z

    .line 507
    .end local v0           #feature:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0
    .parameter "locale"

    .prologue
    .line 276
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->fLocale:Ljava/util/Locale;

    .line 277
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "propertyId"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 563
    const-string v1, "http://apache.org/xml/properties/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 564
    const-string v1, "http://apache.org/xml/properties/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 566
    .local v0, property:Ljava/lang/String;
    const-string v1, "internal/error-handler"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 567
    check-cast p2, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLErrorHandler;

    .end local p2
    iput-object p2, p0, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->fErrorHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLErrorHandler;

    .line 571
    .end local v0           #property:Ljava/lang/String;
    :cond_0
    return-void
.end method
