.class public Lcom/amazonaws/javax/xml/stream/xerces/util/ParserConfigurationSettings;
.super Ljava/lang/Object;
.source "ParserConfigurationSettings.java"

# interfaces
.implements Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponentManager;


# static fields
.field static counter:I


# instance fields
.field protected fFeatures:Ljava/util/Hashtable;

.field protected fParentSettings:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponentManager;

.field protected fProperties:Ljava/util/Hashtable;

.field protected fRecognizedFeatures:Ljava/util/Vector;

.field protected fRecognizedProperties:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x1

    sput v0, Lcom/amazonaws/javax/xml/stream/xerces/util/ParserConfigurationSettings;->counter:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/ParserConfigurationSettings;-><init>(Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponentManager;)V

    .line 148
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponentManager;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/ParserConfigurationSettings;->fRecognizedFeatures:Ljava/util/Vector;

    .line 158
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/ParserConfigurationSettings;->fRecognizedProperties:Ljava/util/Vector;

    .line 161
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/Hashtable;

    .line 162
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/ParserConfigurationSettings;->fProperties:Ljava/util/Hashtable;

    .line 165
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/ParserConfigurationSettings;->fParentSettings:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponentManager;

    .line 167
    return-void
.end method


# virtual methods
.method public addRecognizedFeatures([Ljava/lang/String;)V
    .locals 4
    .parameter "featureIds"

    .prologue
    .line 183
    if-eqz p1, :cond_1

    array-length v1, p1

    .line 184
    .local v1, featureIdsCount:I
    :goto_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 185
    aget-object v0, p1, v2

    .line 186
    .local v0, featureId:Ljava/lang/String;
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/ParserConfigurationSettings;->fRecognizedFeatures:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 187
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/ParserConfigurationSettings;->fRecognizedFeatures:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 184
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 183
    .end local v0           #featureId:Ljava/lang/String;
    .end local v1           #featureIdsCount:I
    .end local v2           #i:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 191
    .restart local v1       #featureIdsCount:I
    .restart local v2       #i:I
    :cond_2
    return-void
.end method

.method public addRecognizedProperties([Ljava/lang/String;)V
    .locals 4
    .parameter "propertyIds"

    .prologue
    .line 226
    if-eqz p1, :cond_1

    array-length v2, p1

    .line 227
    .local v2, propertyIdsCount:I
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 228
    aget-object v1, p1, v0

    .line 229
    .local v1, propertyId:Ljava/lang/String;
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/ParserConfigurationSettings;->fRecognizedProperties:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 230
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/ParserConfigurationSettings;->fRecognizedProperties:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 227
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 226
    .end local v0           #i:I
    .end local v1           #propertyId:Ljava/lang/String;
    .end local v2           #propertyIdsCount:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 234
    .restart local v0       #i:I
    .restart local v2       #propertyIdsCount:I
    :cond_2
    return-void
.end method

.method protected checkFeature(Ljava/lang/String;)V
    .locals 2
    .parameter "featureId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 326
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/ParserConfigurationSettings;->fRecognizedFeatures:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 327
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/ParserConfigurationSettings;->fParentSettings:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponentManager;

    if-eqz v1, :cond_1

    .line 328
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/ParserConfigurationSettings;->fParentSettings:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponentManager;

    invoke-interface {v1, p1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    .line 336
    :cond_0
    return-void

    .line 331
    :cond_1
    const/4 v0, 0x0

    .line 332
    .local v0, type:S
    new-instance v1, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {v1, v0, p1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method protected checkProperty(Ljava/lang/String;)V
    .locals 2
    .parameter "propertyId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 351
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/ParserConfigurationSettings;->fRecognizedProperties:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 352
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/ParserConfigurationSettings;->fParentSettings:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponentManager;

    if-eqz v1, :cond_1

    .line 353
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/ParserConfigurationSettings;->fParentSettings:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponentManager;

    invoke-interface {v1, p1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    .line 361
    :cond_0
    return-void

    .line 356
    :cond_1
    const/4 v0, 0x0

    .line 357
    .local v0, type:S
    new-instance v1, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {v1, v0, p1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v1
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
    .line 274
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 276
    .local v0, state:Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 277
    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/ParserConfigurationSettings;->checkFeature(Ljava/lang/String;)V

    .line 278
    const/4 v1, 0x0

    .line 280
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "propertyId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 299
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/ParserConfigurationSettings;->fProperties:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 301
    .local v0, propertyValue:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 302
    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/ParserConfigurationSettings;->checkProperty(Ljava/lang/String;)V

    .line 305
    :cond_0
    return-object v0
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
    .line 211
    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/ParserConfigurationSettings;->checkFeature(Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/ParserConfigurationSettings;->fFeatures:Ljava/util/Hashtable;

    if-eqz p2, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    return-void

    .line 213
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "propertyId"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 250
    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/ParserConfigurationSettings;->checkProperty(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/ParserConfigurationSettings;->fProperties:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    return-void
.end method
