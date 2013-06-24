.class Lcom/googlecode/javacv/CanvasFrame$1;
.super Ljava/lang/Object;
.source "CanvasFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/javacv/CanvasFrame;->init(ZLjava/awt/DisplayMode;D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlecode/javacv/CanvasFrame;

.field final synthetic val$displayMode:Ljava/awt/DisplayMode;

.field final synthetic val$fullScreen:Z

.field final synthetic val$gamma:D


# direct methods
.method constructor <init>(Lcom/googlecode/javacv/CanvasFrame;Ljava/awt/DisplayMode;ZD)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/googlecode/javacv/CanvasFrame$1;->this$0:Lcom/googlecode/javacv/CanvasFrame;

    iput-object p2, p0, Lcom/googlecode/javacv/CanvasFrame$1;->val$displayMode:Ljava/awt/DisplayMode;

    iput-boolean p3, p0, Lcom/googlecode/javacv/CanvasFrame$1;->val$fullScreen:Z

    iput-wide p4, p0, Lcom/googlecode/javacv/CanvasFrame$1;->val$gamma:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 146
    invoke-static {}, Ljava/awt/KeyboardFocusManager;->getCurrentKeyboardFocusManager()Ljava/awt/KeyboardFocusManager;

    move-result-object v9

    iget-object v10, p0, Lcom/googlecode/javacv/CanvasFrame$1;->this$0:Lcom/googlecode/javacv/CanvasFrame;

    #getter for: Lcom/googlecode/javacv/CanvasFrame;->keyEventDispatch:Ljava/awt/KeyEventDispatcher;
    invoke-static {v10}, Lcom/googlecode/javacv/CanvasFrame;->access$000(Lcom/googlecode/javacv/CanvasFrame;)Ljava/awt/KeyEventDispatcher;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/awt/KeyboardFocusManager;->addKeyEventDispatcher(Ljava/awt/KeyEventDispatcher;)V

    .line 149
    iget-object v9, p0, Lcom/googlecode/javacv/CanvasFrame$1;->this$0:Lcom/googlecode/javacv/CanvasFrame;

    invoke-virtual {v9}, Lcom/googlecode/javacv/CanvasFrame;->getGraphicsConfiguration()Ljava/awt/GraphicsConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Ljava/awt/GraphicsConfiguration;->getDevice()Ljava/awt/GraphicsDevice;

    move-result-object v5

    .line 150
    .local v5, gd:Ljava/awt/GraphicsDevice;
    invoke-virtual {v5}, Ljava/awt/GraphicsDevice;->getDisplayMode()Ljava/awt/DisplayMode;

    move-result-object v1

    .local v1, d:Ljava/awt/DisplayMode;
    const/4 v2, 0x0

    .line 151
    .local v2, d2:Ljava/awt/DisplayMode;
    iget-object v9, p0, Lcom/googlecode/javacv/CanvasFrame$1;->val$displayMode:Ljava/awt/DisplayMode;

    if-eqz v9, :cond_0

    if-eqz v1, :cond_0

    .line 152
    iget-object v9, p0, Lcom/googlecode/javacv/CanvasFrame$1;->val$displayMode:Ljava/awt/DisplayMode;

    invoke-virtual {v9}, Ljava/awt/DisplayMode;->getWidth()I

    move-result v8

    .line 153
    .local v8, w:I
    iget-object v9, p0, Lcom/googlecode/javacv/CanvasFrame$1;->val$displayMode:Ljava/awt/DisplayMode;

    invoke-virtual {v9}, Ljava/awt/DisplayMode;->getHeight()I

    move-result v6

    .line 154
    .local v6, h:I
    iget-object v9, p0, Lcom/googlecode/javacv/CanvasFrame$1;->val$displayMode:Ljava/awt/DisplayMode;

    invoke-virtual {v9}, Ljava/awt/DisplayMode;->getBitDepth()I

    move-result v0

    .line 155
    .local v0, b:I
    iget-object v9, p0, Lcom/googlecode/javacv/CanvasFrame$1;->val$displayMode:Ljava/awt/DisplayMode;

    invoke-virtual {v9}, Ljava/awt/DisplayMode;->getRefreshRate()I

    move-result v7

    .line 156
    .local v7, r:I
    new-instance v2, Ljava/awt/DisplayMode;

    .end local v2           #d2:Ljava/awt/DisplayMode;
    if-lez v8, :cond_2

    .end local v8           #w:I
    :goto_0
    if-lez v6, :cond_3

    .end local v6           #h:I
    :goto_1
    if-lez v0, :cond_4

    .end local v0           #b:I
    :goto_2
    if-lez v7, :cond_5

    .end local v7           #r:I
    :goto_3
    invoke-direct {v2, v8, v6, v0, v7}, Ljava/awt/DisplayMode;-><init>(IIII)V

    .line 159
    .restart local v2       #d2:Ljava/awt/DisplayMode;
    :cond_0
    iget-boolean v9, p0, Lcom/googlecode/javacv/CanvasFrame$1;->val$fullScreen:Z

    if-eqz v9, :cond_6

    .line 160
    iget-object v9, p0, Lcom/googlecode/javacv/CanvasFrame$1;->this$0:Lcom/googlecode/javacv/CanvasFrame;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/googlecode/javacv/CanvasFrame;->setUndecorated(Z)V

    .line 161
    iget-object v9, p0, Lcom/googlecode/javacv/CanvasFrame$1;->this$0:Lcom/googlecode/javacv/CanvasFrame;

    invoke-virtual {v9}, Lcom/googlecode/javacv/CanvasFrame;->getRootPane()Ljavax/swing/JRootPane;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljavax/swing/JRootPane;->setWindowDecorationStyle(I)V

    .line 162
    iget-object v9, p0, Lcom/googlecode/javacv/CanvasFrame$1;->this$0:Lcom/googlecode/javacv/CanvasFrame;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/googlecode/javacv/CanvasFrame;->setResizable(Z)V

    .line 163
    iget-object v9, p0, Lcom/googlecode/javacv/CanvasFrame$1;->this$0:Lcom/googlecode/javacv/CanvasFrame;

    invoke-virtual {v5, v9}, Ljava/awt/GraphicsDevice;->setFullScreenWindow(Ljava/awt/Window;)V

    .line 167
    :goto_4
    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Ljava/awt/DisplayMode;->equals(Ljava/awt/DisplayMode;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 168
    invoke-virtual {v5, v2}, Ljava/awt/GraphicsDevice;->setDisplayMode(Ljava/awt/DisplayMode;)V

    .line 170
    :cond_1
    iget-wide v9, p0, Lcom/googlecode/javacv/CanvasFrame$1;->val$gamma:D

    const-wide/16 v11, 0x0

    cmpl-double v9, v9, v11

    if-nez v9, :cond_7

    invoke-static {v5}, Lcom/googlecode/javacv/CanvasFrame;->getGamma(Ljava/awt/GraphicsDevice;)D

    move-result-wide v3

    .line 171
    .local v3, g:D
    :goto_5
    iget-object v11, p0, Lcom/googlecode/javacv/CanvasFrame$1;->this$0:Lcom/googlecode/javacv/CanvasFrame;

    const-wide/16 v9, 0x0

    cmpl-double v9, v3, v9

    if-nez v9, :cond_8

    const-wide/high16 v9, 0x3ff0

    :goto_6
    iput-wide v9, v11, Lcom/googlecode/javacv/CanvasFrame;->inverseGamma:D

    .line 175
    iget-object v9, p0, Lcom/googlecode/javacv/CanvasFrame$1;->this$0:Lcom/googlecode/javacv/CanvasFrame;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/googlecode/javacv/CanvasFrame;->setVisible(Z)V

    .line 177
    iget-object v9, p0, Lcom/googlecode/javacv/CanvasFrame$1;->this$0:Lcom/googlecode/javacv/CanvasFrame;

    iget-boolean v10, p0, Lcom/googlecode/javacv/CanvasFrame$1;->val$fullScreen:Z

    iget-object v11, p0, Lcom/googlecode/javacv/CanvasFrame$1;->val$displayMode:Ljava/awt/DisplayMode;

    iget-wide v12, p0, Lcom/googlecode/javacv/CanvasFrame$1;->val$gamma:D

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/googlecode/javacv/CanvasFrame;->initCanvas(ZLjava/awt/DisplayMode;D)V

    .line 178
    return-void

    .line 156
    .end local v2           #d2:Ljava/awt/DisplayMode;
    .end local v3           #g:D
    .restart local v0       #b:I
    .restart local v6       #h:I
    .restart local v7       #r:I
    .restart local v8       #w:I
    :cond_2
    invoke-virtual {v1}, Ljava/awt/DisplayMode;->getWidth()I

    move-result v8

    goto :goto_0

    .end local v8           #w:I
    :cond_3
    invoke-virtual {v1}, Ljava/awt/DisplayMode;->getHeight()I

    move-result v6

    goto :goto_1

    .end local v6           #h:I
    :cond_4
    invoke-virtual {v1}, Ljava/awt/DisplayMode;->getBitDepth()I

    move-result v0

    goto :goto_2

    .end local v0           #b:I
    :cond_5
    invoke-virtual {v1}, Ljava/awt/DisplayMode;->getRefreshRate()I

    move-result v7

    goto :goto_3

    .line 165
    .end local v7           #r:I
    .restart local v2       #d2:Ljava/awt/DisplayMode;
    :cond_6
    iget-object v9, p0, Lcom/googlecode/javacv/CanvasFrame$1;->this$0:Lcom/googlecode/javacv/CanvasFrame;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/googlecode/javacv/CanvasFrame;->setLocationByPlatform(Z)V

    goto :goto_4

    .line 170
    :cond_7
    iget-wide v3, p0, Lcom/googlecode/javacv/CanvasFrame$1;->val$gamma:D

    goto :goto_5

    .line 171
    .restart local v3       #g:D
    :cond_8
    const-wide/high16 v9, 0x3ff0

    div-double/2addr v9, v3

    goto :goto_6
.end method
