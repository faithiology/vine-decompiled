.class Lcom/googlecode/javacv/GLCanvasFrame$2;
.super Ljava/lang/Object;
.source "GLCanvasFrame.java"

# interfaces
.implements Ljavax/media/opengl/GLEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/GLCanvasFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/googlecode/javacv/GLCanvasFrame;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 138
    const-class v0, Lcom/googlecode/javacv/GLCanvasFrame;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/googlecode/javacv/GLCanvasFrame$2;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/googlecode/javacv/GLCanvasFrame;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/googlecode/javacv/GLCanvasFrame$2;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public display(Ljavax/media/opengl/GLAutoDrawable;)V
    .locals 13
    .parameter "drawable"

    .prologue
    const v8, 0x8ca8

    const/4 v7, 0x1

    const/high16 v4, 0x437f

    const v6, 0x8d41

    const/4 v1, 0x0

    .line 161
    invoke-interface {p1}, Ljavax/media/opengl/GLAutoDrawable;->getGL()Ljavax/media/opengl/GL;

    move-result-object v2

    invoke-interface {v2}, Ljavax/media/opengl/GL;->getGL2()Ljavax/media/opengl/GL2;

    move-result-object v0

    .line 163
    .local v0, gl:Ljavax/media/opengl/GL2;
    iget-object v2, p0, Lcom/googlecode/javacv/GLCanvasFrame$2;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    #getter for: Lcom/googlecode/javacv/GLCanvasFrame;->color:Ljava/awt/Color;
    invoke-static {v2}, Lcom/googlecode/javacv/GLCanvasFrame;->access$300(Lcom/googlecode/javacv/GLCanvasFrame;)Ljava/awt/Color;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 164
    iget-object v1, p0, Lcom/googlecode/javacv/GLCanvasFrame$2;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    #getter for: Lcom/googlecode/javacv/GLCanvasFrame;->color:Ljava/awt/Color;
    invoke-static {v1}, Lcom/googlecode/javacv/GLCanvasFrame;->access$300(Lcom/googlecode/javacv/GLCanvasFrame;)Ljava/awt/Color;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/Color;->getRed()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget-object v2, p0, Lcom/googlecode/javacv/GLCanvasFrame$2;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    #getter for: Lcom/googlecode/javacv/GLCanvasFrame;->color:Ljava/awt/Color;
    invoke-static {v2}, Lcom/googlecode/javacv/GLCanvasFrame;->access$300(Lcom/googlecode/javacv/GLCanvasFrame;)Ljava/awt/Color;

    move-result-object v2

    invoke-virtual {v2}, Ljava/awt/Color;->getGreen()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    iget-object v3, p0, Lcom/googlecode/javacv/GLCanvasFrame$2;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    #getter for: Lcom/googlecode/javacv/GLCanvasFrame;->color:Ljava/awt/Color;
    invoke-static {v3}, Lcom/googlecode/javacv/GLCanvasFrame;->access$300(Lcom/googlecode/javacv/GLCanvasFrame;)Ljava/awt/Color;

    move-result-object v3

    invoke-virtual {v3}, Ljava/awt/Color;->getBlue()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    const/high16 v4, 0x3f80

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/media/opengl/GL2;->glClearColor(FFFF)V

    .line 165
    const/16 v1, 0x4000

    invoke-interface {v0, v1}, Ljavax/media/opengl/GL2;->glClear(I)V

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-object v2, p0, Lcom/googlecode/javacv/GLCanvasFrame$2;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    #getter for: Lcom/googlecode/javacv/GLCanvasFrame;->buffer:Ljava/nio/Buffer;
    invoke-static {v2}, Lcom/googlecode/javacv/GLCanvasFrame;->access$400(Lcom/googlecode/javacv/GLCanvasFrame;)Ljava/nio/Buffer;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 167
    iget-object v2, p0, Lcom/googlecode/javacv/GLCanvasFrame$2;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    invoke-virtual {v2}, Lcom/googlecode/javacv/GLCanvasFrame;->isResizable()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/googlecode/javacv/GLCanvasFrame$2;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    iget-boolean v2, v2, Lcom/googlecode/javacv/GLCanvasFrame;->needInitialResize:Z

    if-eqz v2, :cond_2

    .line 168
    iget-object v2, p0, Lcom/googlecode/javacv/GLCanvasFrame$2;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    #getter for: Lcom/googlecode/javacv/GLCanvasFrame;->width:I
    invoke-static {v2}, Lcom/googlecode/javacv/GLCanvasFrame;->access$500(Lcom/googlecode/javacv/GLCanvasFrame;)I

    move-result v2

    int-to-double v2, v2

    iget-object v4, p0, Lcom/googlecode/javacv/GLCanvasFrame$2;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    iget-wide v4, v4, Lcom/googlecode/javacv/GLCanvasFrame;->initialScale:D

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v12, v2

    .line 169
    .local v12, w:I
    iget-object v2, p0, Lcom/googlecode/javacv/GLCanvasFrame$2;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    #getter for: Lcom/googlecode/javacv/GLCanvasFrame;->height:I
    invoke-static {v2}, Lcom/googlecode/javacv/GLCanvasFrame;->access$600(Lcom/googlecode/javacv/GLCanvasFrame;)I

    move-result v2

    int-to-double v2, v2

    iget-object v4, p0, Lcom/googlecode/javacv/GLCanvasFrame$2;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    iget-wide v4, v4, Lcom/googlecode/javacv/GLCanvasFrame;->initialScale:D

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v11, v2

    .line 170
    .local v11, h:I
    iget-object v2, p0, Lcom/googlecode/javacv/GLCanvasFrame$2;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    invoke-virtual {v2, v12, v11}, Lcom/googlecode/javacv/GLCanvasFrame;->setCanvasSize(II)V

    .line 172
    .end local v11           #h:I
    .end local v12           #w:I
    :cond_2
    iget-object v2, p0, Lcom/googlecode/javacv/GLCanvasFrame$2;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    iget-object v2, v2, Lcom/googlecode/javacv/GLCanvasFrame;->canvas:Ljava/awt/Canvas;

    invoke-virtual {v2}, Ljava/awt/Canvas;->getHeight()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljavax/media/opengl/GL2;->glWindowPos2i(II)V

    .line 173
    iget-object v1, p0, Lcom/googlecode/javacv/GLCanvasFrame$2;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    iget-object v1, v1, Lcom/googlecode/javacv/GLCanvasFrame;->canvas:Ljava/awt/Canvas;

    invoke-virtual {v1}, Ljava/awt/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/googlecode/javacv/GLCanvasFrame$2;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    #getter for: Lcom/googlecode/javacv/GLCanvasFrame;->width:I
    invoke-static {v2}, Lcom/googlecode/javacv/GLCanvasFrame;->access$500(Lcom/googlecode/javacv/GLCanvasFrame;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/googlecode/javacv/GLCanvasFrame$2;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    iget-object v2, v2, Lcom/googlecode/javacv/GLCanvasFrame;->canvas:Ljava/awt/Canvas;

    invoke-virtual {v2}, Ljava/awt/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    neg-float v2, v2

    iget-object v3, p0, Lcom/googlecode/javacv/GLCanvasFrame$2;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    #getter for: Lcom/googlecode/javacv/GLCanvasFrame;->height:I
    invoke-static {v3}, Lcom/googlecode/javacv/GLCanvasFrame;->access$600(Lcom/googlecode/javacv/GLCanvasFrame;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-interface {v0, v1, v2}, Ljavax/media/opengl/GL2;->glPixelZoom(FF)V

    .line 175
    iget-object v1, p0, Lcom/googlecode/javacv/GLCanvasFrame$2;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    #getter for: Lcom/googlecode/javacv/GLCanvasFrame;->width:I
    invoke-static {v1}, Lcom/googlecode/javacv/GLCanvasFrame;->access$500(Lcom/googlecode/javacv/GLCanvasFrame;)I

    move-result v1

    iget-object v2, p0, Lcom/googlecode/javacv/GLCanvasFrame$2;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    #getter for: Lcom/googlecode/javacv/GLCanvasFrame;->height:I
    invoke-static {v2}, Lcom/googlecode/javacv/GLCanvasFrame;->access$600(Lcom/googlecode/javacv/GLCanvasFrame;)I

    move-result v2

    iget-object v3, p0, Lcom/googlecode/javacv/GLCanvasFrame$2;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    #getter for: Lcom/googlecode/javacv/GLCanvasFrame;->format:I
    invoke-static {v3}, Lcom/googlecode/javacv/GLCanvasFrame;->access$700(Lcom/googlecode/javacv/GLCanvasFrame;)I

    move-result v3

    iget-object v4, p0, Lcom/googlecode/javacv/GLCanvasFrame$2;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    #getter for: Lcom/googlecode/javacv/GLCanvasFrame;->type:I
    invoke-static {v4}, Lcom/googlecode/javacv/GLCanvasFrame;->access$800(Lcom/googlecode/javacv/GLCanvasFrame;)I

    move-result v4

    iget-object v5, p0, Lcom/googlecode/javacv/GLCanvasFrame$2;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    #getter for: Lcom/googlecode/javacv/GLCanvasFrame;->buffer:Ljava/nio/Buffer;
    invoke-static {v5}, Lcom/googlecode/javacv/GLCanvasFrame;->access$400(Lcom/googlecode/javacv/GLCanvasFrame;)Ljava/nio/Buffer;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Ljavax/media/opengl/GL2;->glDrawPixels(IIIILjava/nio/Buffer;)V

    goto/16 :goto_0

    .line 176
    :cond_3
    iget-object v2, p0, Lcom/googlecode/javacv/GLCanvasFrame$2;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    #getter for: Lcom/googlecode/javacv/GLCanvasFrame;->renderBuffer:I
    invoke-static {v2}, Lcom/googlecode/javacv/GLCanvasFrame;->access$900(Lcom/googlecode/javacv/GLCanvasFrame;)I

    move-result v2

    if-lez v2, :cond_0

    .line 177
    iget-object v2, p0, Lcom/googlecode/javacv/GLCanvasFrame$2;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    #getter for: Lcom/googlecode/javacv/GLCanvasFrame;->renderBuffer:I
    invoke-static {v2}, Lcom/googlecode/javacv/GLCanvasFrame;->access$900(Lcom/googlecode/javacv/GLCanvasFrame;)I

    move-result v2

    invoke-interface {v0, v6, v2}, Ljavax/media/opengl/GL2;->glBindRenderbuffer(II)V

    .line 178
    const v2, 0x8d42

    iget-object v3, p0, Lcom/googlecode/javacv/GLCanvasFrame$2;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    #getter for: Lcom/googlecode/javacv/GLCanvasFrame;->params:[I
    invoke-static {v3}, Lcom/googlecode/javacv/GLCanvasFrame;->access$100(Lcom/googlecode/javacv/GLCanvasFrame;)[I

    move-result-object v3

    invoke-interface {v0, v6, v2, v3, v1}, Ljavax/media/opengl/GL2;->glGetRenderbufferParameteriv(II[II)V

    .line 180
    const v2, 0x8d43

    iget-object v3, p0, Lcom/googlecode/javacv/GLCanvasFrame$2;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    #getter for: Lcom/googlecode/javacv/GLCanvasFrame;->params:[I
    invoke-static {v3}, Lcom/googlecode/javacv/GLCanvasFrame;->access$100(Lcom/googlecode/javacv/GLCanvasFrame;)[I

    move-result-object v3

    invoke-interface {v0, v6, v2, v3, v7}, Ljavax/media/opengl/GL2;->glGetRenderbufferParameteriv(II[II)V

    .line 182
    iget-object v2, p0, Lcom/googlecode/javacv/GLCanvasFrame$2;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    invoke-virtual {v2}, Lcom/googlecode/javacv/GLCanvasFrame;->isResizable()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/googlecode/javacv/GLCanvasFrame$2;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    iget-boolean v2, v2, Lcom/googlecode/javacv/GLCanvasFrame;->needInitialResize:Z

    if-eqz v2, :cond_4

    .line 183
    iget-object v2, p0, Lcom/googlecode/javacv/GLCanvasFrame$2;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    #getter for: Lcom/googlecode/javacv/GLCanvasFrame;->params:[I
    invoke-static {v2}, Lcom/googlecode/javacv/GLCanvasFrame;->access$100(Lcom/googlecode/javacv/GLCanvasFrame;)[I

    move-result-object v2

    aget v2, v2, v1

    int-to-double v2, v2

    iget-object v4, p0, Lcom/googlecode/javacv/GLCanvasFrame$2;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    iget-wide v4, v4, Lcom/googlecode/javacv/GLCanvasFrame;->initialScale:D

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v12, v2

    .line 184
    .restart local v12       #w:I
    iget-object v2, p0, Lcom/googlecode/javacv/GLCanvasFrame$2;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    #getter for: Lcom/googlecode/javacv/GLCanvasFrame;->params:[I
    invoke-static {v2}, Lcom/googlecode/javacv/GLCanvasFrame;->access$100(Lcom/googlecode/javacv/GLCanvasFrame;)[I

    move-result-object v2

    aget v2, v2, v7

    int-to-double v2, v2

    iget-object v4, p0, Lcom/googlecode/javacv/GLCanvasFrame$2;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    iget-wide v4, v4, Lcom/googlecode/javacv/GLCanvasFrame;->initialScale:D

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v11, v2

    .line 185
    .restart local v11       #h:I
    iget-object v2, p0, Lcom/googlecode/javacv/GLCanvasFrame$2;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    invoke-virtual {v2, v12, v11}, Lcom/googlecode/javacv/GLCanvasFrame;->setCanvasSize(II)V

    .line 187
    .end local v11           #h:I
    .end local v12           #w:I
    :cond_4
    iget-object v2, p0, Lcom/googlecode/javacv/GLCanvasFrame$2;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    #getter for: Lcom/googlecode/javacv/GLCanvasFrame;->frameBuffer:I
    invoke-static {v2}, Lcom/googlecode/javacv/GLCanvasFrame;->access$200(Lcom/googlecode/javacv/GLCanvasFrame;)I

    move-result v2

    invoke-interface {v0, v8, v2}, Ljavax/media/opengl/GL2;->glBindFramebuffer(II)V

    .line 188
    const v2, 0x8ce0

    iget-object v3, p0, Lcom/googlecode/javacv/GLCanvasFrame$2;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    #getter for: Lcom/googlecode/javacv/GLCanvasFrame;->renderBuffer:I
    invoke-static {v3}, Lcom/googlecode/javacv/GLCanvasFrame;->access$900(Lcom/googlecode/javacv/GLCanvasFrame;)I

    move-result v3

    invoke-interface {v0, v8, v2, v6, v3}, Ljavax/media/opengl/GL2;->glFramebufferRenderbuffer(IIII)V

    .line 197
    sget-boolean v2, Lcom/googlecode/javacv/GLCanvasFrame$2;->$assertionsDisabled:Z

    if-nez v2, :cond_5

    invoke-interface {v0, v8}, Ljavax/media/opengl/GL2;->glCheckFramebufferStatus(I)I

    move-result v2

    const v3, 0x8cd5

    if-eq v2, v3, :cond_5

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 198
    :cond_5
    iget-object v2, p0, Lcom/googlecode/javacv/GLCanvasFrame$2;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    #getter for: Lcom/googlecode/javacv/GLCanvasFrame;->params:[I
    invoke-static {v2}, Lcom/googlecode/javacv/GLCanvasFrame;->access$100(Lcom/googlecode/javacv/GLCanvasFrame;)[I

    move-result-object v2

    aget v3, v2, v1

    iget-object v2, p0, Lcom/googlecode/javacv/GLCanvasFrame$2;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    #getter for: Lcom/googlecode/javacv/GLCanvasFrame;->params:[I
    invoke-static {v2}, Lcom/googlecode/javacv/GLCanvasFrame;->access$100(Lcom/googlecode/javacv/GLCanvasFrame;)[I

    move-result-object v2

    aget v4, v2, v7

    iget-object v2, p0, Lcom/googlecode/javacv/GLCanvasFrame$2;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    iget-object v2, v2, Lcom/googlecode/javacv/GLCanvasFrame;->canvas:Ljava/awt/Canvas;

    invoke-virtual {v2}, Ljava/awt/Canvas;->getHeight()I

    move-result v6

    iget-object v2, p0, Lcom/googlecode/javacv/GLCanvasFrame$2;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    iget-object v2, v2, Lcom/googlecode/javacv/GLCanvasFrame;->canvas:Ljava/awt/Canvas;

    invoke-virtual {v2}, Ljava/awt/Canvas;->getWidth()I

    move-result v7

    const/16 v9, 0x4000

    const/16 v10, 0x2601

    move v2, v1

    move v5, v1

    move v8, v1

    invoke-interface/range {v0 .. v10}, Ljavax/media/opengl/GL2;->glBlitFramebuffer(IIIIIIIIII)V

    goto/16 :goto_0
.end method

.method public dispose(Ljavax/media/opengl/GLAutoDrawable;)V
    .locals 5
    .parameter "drawable"

    .prologue
    const/4 v3, 0x0

    .line 152
    invoke-interface {p1}, Ljavax/media/opengl/GLAutoDrawable;->getGL()Ljavax/media/opengl/GL;

    move-result-object v1

    invoke-interface {v1}, Ljavax/media/opengl/GL;->getGL2()Ljavax/media/opengl/GL2;

    move-result-object v0

    .line 154
    .local v0, gl:Ljavax/media/opengl/GL2;
    iget-object v1, p0, Lcom/googlecode/javacv/GLCanvasFrame$2;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    #getter for: Lcom/googlecode/javacv/GLCanvasFrame;->params:[I
    invoke-static {v1}, Lcom/googlecode/javacv/GLCanvasFrame;->access$100(Lcom/googlecode/javacv/GLCanvasFrame;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/googlecode/javacv/GLCanvasFrame$2;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    #getter for: Lcom/googlecode/javacv/GLCanvasFrame;->frameBuffer:I
    invoke-static {v2}, Lcom/googlecode/javacv/GLCanvasFrame;->access$200(Lcom/googlecode/javacv/GLCanvasFrame;)I

    move-result v2

    aput v2, v1, v3

    .line 155
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/googlecode/javacv/GLCanvasFrame$2;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    #getter for: Lcom/googlecode/javacv/GLCanvasFrame;->params:[I
    invoke-static {v2}, Lcom/googlecode/javacv/GLCanvasFrame;->access$100(Lcom/googlecode/javacv/GLCanvasFrame;)[I

    move-result-object v2

    invoke-interface {v0, v1, v2, v3}, Ljavax/media/opengl/GL2;->glDeleteFramebuffers(I[II)V

    .line 156
    iget-object v1, p0, Lcom/googlecode/javacv/GLCanvasFrame$2;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    iget-wide v1, v1, Lcom/googlecode/javacv/GLCanvasFrame;->inverseGamma:D

    const-wide/high16 v3, 0x3ff0

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_0

    .line 157
    invoke-static {v0}, Lcom/jogamp/opengl/util/Gamma;->resetDisplayGamma(Ljavax/media/opengl/GL;)V

    .line 159
    :cond_0
    return-void
.end method

.method public init(Ljavax/media/opengl/GLAutoDrawable;)V
    .locals 7
    .parameter "drawable"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 140
    invoke-interface {p1}, Ljavax/media/opengl/GLAutoDrawable;->getGL()Ljavax/media/opengl/GL;

    move-result-object v1

    invoke-interface {v1}, Ljavax/media/opengl/GL;->getGL2()Ljavax/media/opengl/GL2;

    move-result-object v0

    .line 142
    .local v0, gl:Ljavax/media/opengl/GL2;
    invoke-interface {v0, v6}, Ljavax/media/opengl/GL2;->setSwapInterval(I)V

    .line 144
    iget-object v1, p0, Lcom/googlecode/javacv/GLCanvasFrame$2;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    iget-wide v1, v1, Lcom/googlecode/javacv/GLCanvasFrame;->inverseGamma:D

    const-wide/high16 v3, 0x3ff0

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/googlecode/javacv/GLCanvasFrame$2;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    iget-wide v1, v1, Lcom/googlecode/javacv/GLCanvasFrame;->inverseGamma:D

    double-to-float v1, v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-static {v0, v1, v2, v3}, Lcom/jogamp/opengl/util/Gamma;->setDisplayGamma(Ljavax/media/opengl/GL;FFF)Z

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/googlecode/javacv/GLCanvasFrame$2;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    #getter for: Lcom/googlecode/javacv/GLCanvasFrame;->params:[I
    invoke-static {v1}, Lcom/googlecode/javacv/GLCanvasFrame;->access$100(Lcom/googlecode/javacv/GLCanvasFrame;)[I

    move-result-object v1

    invoke-interface {v0, v6, v1, v5}, Ljavax/media/opengl/GL2;->glGenFramebuffers(I[II)V

    .line 149
    iget-object v1, p0, Lcom/googlecode/javacv/GLCanvasFrame$2;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    iget-object v2, p0, Lcom/googlecode/javacv/GLCanvasFrame$2;->this$0:Lcom/googlecode/javacv/GLCanvasFrame;

    #getter for: Lcom/googlecode/javacv/GLCanvasFrame;->params:[I
    invoke-static {v2}, Lcom/googlecode/javacv/GLCanvasFrame;->access$100(Lcom/googlecode/javacv/GLCanvasFrame;)[I

    move-result-object v2

    aget v2, v2, v5

    #setter for: Lcom/googlecode/javacv/GLCanvasFrame;->frameBuffer:I
    invoke-static {v1, v2}, Lcom/googlecode/javacv/GLCanvasFrame;->access$202(Lcom/googlecode/javacv/GLCanvasFrame;I)I

    .line 150
    return-void
.end method

.method public reshape(Ljavax/media/opengl/GLAutoDrawable;IIII)V
    .locals 0
    .parameter "drawable"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 203
    return-void
.end method
