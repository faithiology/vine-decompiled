.class public Lcom/amazonaws/javax/xml/stream/Entity$InternalEntity;
.super Lcom/amazonaws/javax/xml/stream/Entity;
.source "Entity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/javax/xml/stream/Entity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternalEntity"
.end annotation


# instance fields
.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/Entity;-><init>()V

    .line 190
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/Entity$InternalEntity;->clear()V

    .line 191
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "name"
    .parameter "text"
    .parameter "inExternalSubset"

    .prologue
    .line 195
    invoke-direct {p0, p1, p3}, Lcom/amazonaws/javax/xml/stream/Entity;-><init>(Ljava/lang/String;Z)V

    .line 196
    iput-object p2, p0, Lcom/amazonaws/javax/xml/stream/Entity$InternalEntity;->text:Ljava/lang/String;

    .line 197
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 215
    invoke-super {p0}, Lcom/amazonaws/javax/xml/stream/Entity;->clear()V

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/Entity$InternalEntity;->text:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public final isExternal()Z
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public final isUnparsed()Z
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public setValues(Lcom/amazonaws/javax/xml/stream/Entity$InternalEntity;)V
    .locals 1
    .parameter "entity"

    .prologue
    .line 227
    invoke-super {p0, p1}, Lcom/amazonaws/javax/xml/stream/Entity;->setValues(Lcom/amazonaws/javax/xml/stream/Entity;)V

    .line 228
    iget-object v0, p1, Lcom/amazonaws/javax/xml/stream/Entity$InternalEntity;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/Entity$InternalEntity;->text:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public setValues(Lcom/amazonaws/javax/xml/stream/Entity;)V
    .locals 1
    .parameter "entity"

    .prologue
    .line 221
    invoke-super {p0, p1}, Lcom/amazonaws/javax/xml/stream/Entity;->setValues(Lcom/amazonaws/javax/xml/stream/Entity;)V

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/Entity$InternalEntity;->text:Ljava/lang/String;

    .line 223
    return-void
.end method
