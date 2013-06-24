.class Lcom/googlecode/javacv/GLCanvasFrame$1;
.super Ljava/lang/Object;
.source "GLCanvasFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/javacv/GLCanvasFrame;->init(ZLjavax/media/opengl/GLCapabilitiesImmutable;Ljavax/media/opengl/GLContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlecode/javacv/GLCanvasFrame;

.field final synthetic val$caps:Ljavax/media/opengl/GLCapabilitiesImmutable;

.field final synthetic val$fullScreen:Z

.field final synthetic val$shareWith:Ljavax/media/opengl/GLContext;


# direct methods
.method constructor <init>(Lcom/googlecode/javacv/GLCanvasFrame;Ljavax/media/opengl/GLCapabilitiesImmutable;Ljavax/media/opengl/GLContext;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/googlecode/javacv/GLCanvasFrame$1;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    iput-object p2, p0, Lcom/googlecode/javacv/GLCanvasFrame$1;->val$caps:Ljavax/media/opengl/GLCapabilitiesImmutable;

    iput-object p3, p0, Lcom/googlecode/javacv/GLCanvasFrame$1;->val$shareWith:Ljavax/media/opengl/GLContext;

    iput-boolean p4, p0, Lcom/googlecode/javacv/GLCanvasFrame$1;->val$fullScreen:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 100
    const-string v1, "sun.awt.noerasebackground"

    const-string v2, "true"

    invoke-static {v1, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, wasErase:Ljava/lang/String;
    iget-object v1, p0, Lcom/googlecode/javacv/GLCanvasFrame$1;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    new-instance v2, Ljavax/media/opengl/awt/GLCanvas;

    iget-object v3, p0, Lcom/googlecode/javacv/GLCanvasFrame$1;->val$caps:Ljavax/media/opengl/GLCapabilitiesImmutable;

    iget-object v4, p0, Lcom/googlecode/javacv/GLCanvasFrame$1;->val$shareWith:Ljavax/media/opengl/GLContext;

    invoke-direct {v2, v3, v4}, Ljavax/media/opengl/awt/GLCanvas;-><init>(Ljavax/media/opengl/GLCapabilitiesImmutable;Ljavax/media/opengl/GLContext;)V

    iput-object v2, v1, Lcom/googlecode/javacv/GLCanvasFrame;->canvas:Ljava/awt/Canvas;

    .line 103
    iget-object v1, p0, Lcom/googlecode/javacv/GLCanvasFrame$1;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    iget-object v1, v1, Lcom/googlecode/javacv/GLCanvasFrame;->canvas:Ljava/awt/Canvas;

    check-cast v1, Ljavax/media/opengl/awt/GLCanvas;

    iget-object v2, p0, Lcom/googlecode/javacv/GLCanvasFrame$1;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    #getter for: Lcom/googlecode/javacv/GLCanvasFrame;->eventListener:Ljavax/media/opengl/GLEventListener;
    invoke-static {v2}, Lcom/googlecode/javacv/GLCanvasFrame;->access$000(Lcom/googlecode/javacv/GLCanvasFrame;)Ljavax/media/opengl/GLEventListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/media/opengl/awt/GLCanvas;->addGLEventListener(Ljavax/media/opengl/GLEventListener;)V

    .line 104
    iget-boolean v1, p0, Lcom/googlecode/javacv/GLCanvasFrame$1;->val$fullScreen:Z

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/googlecode/javacv/GLCanvasFrame$1;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    iget-object v1, v1, Lcom/googlecode/javacv/GLCanvasFrame;->canvas:Ljava/awt/Canvas;

    iget-object v2, p0, Lcom/googlecode/javacv/GLCanvasFrame$1;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    invoke-virtual {v2}, Lcom/googlecode/javacv/GLCanvasFrame;->getSize()Ljava/awt/Dimension;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/awt/Canvas;->setSize(Ljava/awt/Dimension;)V

    .line 106
    iget-object v1, p0, Lcom/googlecode/javacv/GLCanvasFrame$1;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/googlecode/javacv/GLCanvasFrame;->needInitialResize:Z

    .line 111
    :goto_0
    iget-object v1, p0, Lcom/googlecode/javacv/GLCanvasFrame$1;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    invoke-virtual {v1}, Lcom/googlecode/javacv/GLCanvasFrame;->getContentPane()Ljava/awt/Container;

    move-result-object v1

    iget-object v2, p0, Lcom/googlecode/javacv/GLCanvasFrame$1;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    iget-object v2, v2, Lcom/googlecode/javacv/GLCanvasFrame;->canvas:Ljava/awt/Canvas;

    invoke-virtual {v1, v2}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 112
    iget-object v1, p0, Lcom/googlecode/javacv/GLCanvasFrame$1;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    iget-object v1, v1, Lcom/googlecode/javacv/GLCanvasFrame;->canvas:Ljava/awt/Canvas;

    invoke-virtual {v1, v5}, Ljava/awt/Canvas;->setVisible(Z)V

    .line 114
    if-eqz v0, :cond_1

    .line 115
    const-string v1, "sun.awt.noerasebackground"

    invoke-static {v1, v0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    :goto_1
    return-void

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/googlecode/javacv/GLCanvasFrame$1;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    iget-object v1, v1, Lcom/googlecode/javacv/GLCanvasFrame;->canvas:Ljava/awt/Canvas;

    invoke-virtual {v1, v5, v5}, Ljava/awt/Canvas;->setSize(II)V

    .line 109
    iget-object v1, p0, Lcom/googlecode/javacv/GLCanvasFrame$1;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    iput-boolean v5, v1, Lcom/googlecode/javacv/GLCanvasFrame;->needInitialResize:Z

    goto :goto_0

    .line 117
    :cond_1
    const-string v1, "sun.awt.noerasebackground"

    invoke-static {v1}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1
.end method
