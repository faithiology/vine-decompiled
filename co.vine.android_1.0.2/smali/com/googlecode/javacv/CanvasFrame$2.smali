.class Lcom/googlecode/javacv/CanvasFrame$2;
.super Ljava/awt/Canvas;
.source "CanvasFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/javacv/CanvasFrame;->initCanvas(ZLjava/awt/DisplayMode;D)V
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
    .line 190
    iput-object p1, p0, Lcom/googlecode/javacv/CanvasFrame$2;->this$0:Lcom/googlecode/javacv/CanvasFrame;

    invoke-direct {p0}, Ljava/awt/Canvas;-><init>()V

    return-void
.end method


# virtual methods
.method public paint(Ljava/awt/Graphics;)V
    .locals 8
    .parameter "g"

    .prologue
    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/googlecode/javacv/CanvasFrame$2;->this$0:Lcom/googlecode/javacv/CanvasFrame;

    iget-object v0, v0, Lcom/googlecode/javacv/CanvasFrame;->canvas:Ljava/awt/Canvas;

    invoke-virtual {v0}, Ljava/awt/Canvas;->getBufferStrategy()Ljava/awt/image/BufferStrategy;

    move-result-object v7

    .line 202
    .local v7, strategy:Ljava/awt/image/BufferStrategy;
    :cond_0
    invoke-virtual {v7}, Ljava/awt/image/BufferStrategy;->getDrawGraphics()Ljava/awt/Graphics;

    move-result-object p1

    .line 203
    iget-object v0, p0, Lcom/googlecode/javacv/CanvasFrame$2;->this$0:Lcom/googlecode/javacv/CanvasFrame;

    #getter for: Lcom/googlecode/javacv/CanvasFrame;->color:Ljava/awt/Color;
    invoke-static {v0}, Lcom/googlecode/javacv/CanvasFrame;->access$100(Lcom/googlecode/javacv/CanvasFrame;)Ljava/awt/Color;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/googlecode/javacv/CanvasFrame$2;->this$0:Lcom/googlecode/javacv/CanvasFrame;

    #getter for: Lcom/googlecode/javacv/CanvasFrame;->color:Ljava/awt/Color;
    invoke-static {v0}, Lcom/googlecode/javacv/CanvasFrame;->access$100(Lcom/googlecode/javacv/CanvasFrame;)Ljava/awt/Color;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/awt/Graphics;->setColor(Ljava/awt/Color;)V

    .line 205
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/googlecode/javacv/CanvasFrame$2;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/googlecode/javacv/CanvasFrame$2;->getHeight()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/awt/Graphics;->fillRect(IIII)V

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/googlecode/javacv/CanvasFrame$2;->this$0:Lcom/googlecode/javacv/CanvasFrame;

    #getter for: Lcom/googlecode/javacv/CanvasFrame;->image:Ljava/awt/Image;
    invoke-static {v0}, Lcom/googlecode/javacv/CanvasFrame;->access$200(Lcom/googlecode/javacv/CanvasFrame;)Ljava/awt/Image;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 208
    iget-object v0, p0, Lcom/googlecode/javacv/CanvasFrame$2;->this$0:Lcom/googlecode/javacv/CanvasFrame;

    #getter for: Lcom/googlecode/javacv/CanvasFrame;->image:Ljava/awt/Image;
    invoke-static {v0}, Lcom/googlecode/javacv/CanvasFrame;->access$200(Lcom/googlecode/javacv/CanvasFrame;)Ljava/awt/Image;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/googlecode/javacv/CanvasFrame$2;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/googlecode/javacv/CanvasFrame$2;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Ljava/awt/Graphics;->drawImage(Ljava/awt/Image;IIIILjava/awt/image/ImageObserver;)Z

    .line 210
    :cond_2
    iget-object v0, p0, Lcom/googlecode/javacv/CanvasFrame$2;->this$0:Lcom/googlecode/javacv/CanvasFrame;

    #getter for: Lcom/googlecode/javacv/CanvasFrame;->buffer:Ljava/awt/image/BufferedImage;
    invoke-static {v0}, Lcom/googlecode/javacv/CanvasFrame;->access$300(Lcom/googlecode/javacv/CanvasFrame;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 211
    iget-object v0, p0, Lcom/googlecode/javacv/CanvasFrame$2;->this$0:Lcom/googlecode/javacv/CanvasFrame;

    #getter for: Lcom/googlecode/javacv/CanvasFrame;->buffer:Ljava/awt/image/BufferedImage;
    invoke-static {v0}, Lcom/googlecode/javacv/CanvasFrame;->access$300(Lcom/googlecode/javacv/CanvasFrame;)Ljava/awt/image/BufferedImage;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/googlecode/javacv/CanvasFrame$2;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/googlecode/javacv/CanvasFrame$2;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Ljava/awt/Graphics;->drawImage(Ljava/awt/Image;IIIILjava/awt/image/ImageObserver;)Z

    .line 213
    :cond_3
    invoke-virtual {p1}, Ljava/awt/Graphics;->dispose()V

    .line 214
    invoke-virtual {v7}, Ljava/awt/image/BufferStrategy;->contentsRestored()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    invoke-virtual {v7}, Ljava/awt/image/BufferStrategy;->show()V

    .line 216
    invoke-virtual {v7}, Ljava/awt/image/BufferStrategy;->contentsLost()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 219
    .end local v7           #strategy:Ljava/awt/image/BufferStrategy;
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    goto :goto_0

    .line 217
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public update(Ljava/awt/Graphics;)V
    .locals 0
    .parameter "g"

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/CanvasFrame$2;->paint(Ljava/awt/Graphics;)V

    .line 193
    return-void
.end method
