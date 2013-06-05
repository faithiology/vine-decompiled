.class final Lcom/flurry/android/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field private synthetic I:Lcom/flurry/android/cs;


# direct methods
.method constructor <init>(Lcom/flurry/android/cs;)V
    .locals 0
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/flurry/android/q;->I:Lcom/flurry/android/cs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 339
    iget-object v0, p0, Lcom/flurry/android/q;->I:Lcom/flurry/android/cs;

    iget-object v0, v0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    invoke-static {v0}, Lcom/flurry/android/bn;->p(Lcom/flurry/android/bn;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/flurry/android/q;->I:Lcom/flurry/android/cs;

    iget-object v0, v0, Lcom/flurry/android/cs;->dW:Lcom/flurry/android/bn;

    invoke-static {v0}, Lcom/flurry/android/bn;->p(Lcom/flurry/android/bn;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 343
    :cond_0
    return-void
.end method
