.class Lcom/googlecode/javacv/CanvasFrame$3;
.super Ljava/lang/Object;
.source "CanvasFrame.java"

# interfaces
.implements Ljava/awt/KeyEventDispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/CanvasFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlecode/javacv/CanvasFrame;


# direct methods
.method constructor <init>(Lcom/googlecode/javacv/CanvasFrame;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/googlecode/javacv/CanvasFrame$3;->this$0:Lcom/googlecode/javacv/CanvasFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Ljava/awt/event/KeyEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 245
    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->getID()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/googlecode/javacv/CanvasFrame$3;->this$0:Lcom/googlecode/javacv/CanvasFrame;

    monitor-enter v1

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/googlecode/javacv/CanvasFrame$3;->this$0:Lcom/googlecode/javacv/CanvasFrame;

    #setter for: Lcom/googlecode/javacv/CanvasFrame;->keyEvent:Ljava/awt/event/KeyEvent;
    invoke-static {v0, p1}, Lcom/googlecode/javacv/CanvasFrame;->access$402(Lcom/googlecode/javacv/CanvasFrame;Ljava/awt/event/KeyEvent;)Ljava/awt/event/KeyEvent;

    .line 248
    iget-object v0, p0, Lcom/googlecode/javacv/CanvasFrame$3;->this$0:Lcom/googlecode/javacv/CanvasFrame;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 249
    monitor-exit v1

    .line 251
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
