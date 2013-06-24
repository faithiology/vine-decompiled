.class public Lcom/googlecode/javacv/FrameGrabber$PropertyEditor;
.super Ljava/beans/PropertyEditorSupport;
.source "FrameGrabber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/FrameGrabber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PropertyEditor"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/beans/PropertyEditorSupport;-><init>()V

    return-void
.end method


# virtual methods
.method public getAsText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/googlecode/javacv/FrameGrabber$PropertyEditor;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 141
    .local v0, c:Ljava/lang/Class;
    if-nez v0, :cond_0

    const-string v1, "null"

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FrameGrabber"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    goto :goto_0
.end method

.method public getTags()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    sget-object v0, Lcom/googlecode/javacv/FrameGrabber;->list:Ljava/util/List;

    sget-object v1, Lcom/googlecode/javacv/FrameGrabber;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public setAsText(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 144
    if-nez p1, :cond_0

    .line 145
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/googlecode/javacv/FrameGrabber$PropertyEditor;->setValue(Ljava/lang/Object;)V

    .line 148
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/googlecode/javacv/FrameGrabber;->get(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/googlecode/javacv/FrameGrabber$PropertyEditor;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/googlecode/javacv/FrameGrabber$Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, ex:Lcom/googlecode/javacv/FrameGrabber$Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
