.class Lcom/googlecode/javacv/CanvasFrame$1MovedListener;
.super Ljava/awt/event/ComponentAdapter;
.source "CanvasFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/javacv/CanvasFrame;->tile([Lcom/googlecode/javacv/CanvasFrame;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MovedListener"
.end annotation


# instance fields
.field moved:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 387
    invoke-direct {p0}, Ljava/awt/event/ComponentAdapter;-><init>()V

    .line 388
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/googlecode/javacv/CanvasFrame$1MovedListener;->moved:Z

    return-void
.end method


# virtual methods
.method public componentMoved(Ljava/awt/event/ComponentEvent;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 390
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/googlecode/javacv/CanvasFrame$1MovedListener;->moved:Z

    .line 391
    invoke-virtual {p1}, Ljava/awt/event/ComponentEvent;->getComponent()Ljava/awt/Component;

    move-result-object v0

    .line 392
    .local v0, c:Ljava/awt/Component;
    monitor-enter v0

    .line 393
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 394
    monitor-exit v0

    .line 395
    return-void

    .line 394
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
