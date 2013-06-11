.class final Lcom/flurry/android/bx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic dU:Lcom/flurry/android/cw;

.field private synthetic dV:I

.field private synthetic dW:Lcom/flurry/android/bn;


# direct methods
.method constructor <init>(Lcom/flurry/android/bn;Lcom/flurry/android/cw;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 835
    iput-object p1, p0, Lcom/flurry/android/bx;->dW:Lcom/flurry/android/bn;

    iput-object p2, p0, Lcom/flurry/android/bx;->dU:Lcom/flurry/android/cw;

    iput p3, p0, Lcom/flurry/android/bx;->dV:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 838
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 839
    const-string v0, "sourceEvent"

    iget-object v1, p0, Lcom/flurry/android/bx;->dU:Lcom/flurry/android/cw;

    iget-object v1, v1, Lcom/flurry/android/cw;->eW:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    iget-object v0, p0, Lcom/flurry/android/bx;->dW:Lcom/flurry/android/bn;

    const-string v1, "userConfirmed"

    iget-object v3, p0, Lcom/flurry/android/bx;->dW:Lcom/flurry/android/bn;

    iget-object v3, v3, Lcom/flurry/android/bn;->M:Lcom/flurry/android/AdUnit;

    iget-object v4, p0, Lcom/flurry/android/bx;->dW:Lcom/flurry/android/bn;

    iget-object v4, v4, Lcom/flurry/android/bn;->L:Lcom/flurry/android/cz;

    iget-object v5, p0, Lcom/flurry/android/bx;->dW:Lcom/flurry/android/bn;

    iget v5, v5, Lcom/flurry/android/bn;->N:I

    iget v6, p0, Lcom/flurry/android/bx;->dV:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/bn;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/AdUnit;Lcom/flurry/android/cz;II)V

    .line 841
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 842
    iget-object v0, p0, Lcom/flurry/android/bx;->dW:Lcom/flurry/android/bn;

    invoke-static {v0}, Lcom/flurry/android/bn;->s(Lcom/flurry/android/bn;)Lcom/flurry/android/ce;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/bx;->dW:Lcom/flurry/android/bn;

    invoke-virtual {v0}, Lcom/flurry/android/bn;->ad()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 844
    iget-object v0, p0, Lcom/flurry/android/bx;->dW:Lcom/flurry/android/bn;

    invoke-static {v0}, Lcom/flurry/android/bn;->s(Lcom/flurry/android/bn;)Lcom/flurry/android/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/ce;->start()V

    .line 846
    :cond_0
    return-void
.end method
