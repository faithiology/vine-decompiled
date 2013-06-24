.class final Lcom/googlecode/javacv/GLCanvasFrame$3;
.super Ljava/lang/Object;
.source "GLCanvasFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/javacv/GLCanvasFrame;->main([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 310
    :try_start_0
    new-instance v1, Lcom/googlecode/javacv/GLCanvasFrame;

    const-string v2, "Some Title"

    invoke-direct {v1, v2}, Lcom/googlecode/javacv/GLCanvasFrame;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/googlecode/javacv/GLCanvasFrame;->access$1002(Lcom/googlecode/javacv/GLCanvasFrame;)Lcom/googlecode/javacv/GLCanvasFrame;

    .line 311
    invoke-static {}, Lcom/googlecode/javacv/GLCanvasFrame;->access$1000()Lcom/googlecode/javacv/GLCanvasFrame;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/googlecode/javacv/GLCanvasFrame;->setDefaultCloseOperation(I)V

    .line 313
    invoke-static {}, Lcom/googlecode/javacv/GLCanvasFrame;->access$1000()Lcom/googlecode/javacv/GLCanvasFrame;

    move-result-object v1

    sget-object v2, Ljava/awt/Color;->BLUE:Ljava/awt/Color;

    invoke-virtual {v1, v2}, Lcom/googlecode/javacv/GLCanvasFrame;->showColor(Ljava/awt/Color;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :goto_0
    return-void

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
