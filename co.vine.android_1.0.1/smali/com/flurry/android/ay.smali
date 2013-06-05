.class final Lcom/flurry/android/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic n:Lcom/flurry/android/ac;


# direct methods
.method constructor <init>(Lcom/flurry/android/ac;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/flurry/android/ay;->n:Lcom/flurry/android/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/flurry/android/ay;->n:Lcom/flurry/android/ac;

    invoke-static {v0}, Lcom/flurry/android/ac;->a(Lcom/flurry/android/ac;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/flurry/android/ay;->n:Lcom/flurry/android/ac;

    iget-object v1, p0, Lcom/flurry/android/ay;->n:Lcom/flurry/android/ac;

    invoke-static {v1}, Lcom/flurry/android/ac;->b(Lcom/flurry/android/ac;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/ac;->post(Ljava/lang/Runnable;)Z

    .line 78
    :cond_0
    return-void
.end method
