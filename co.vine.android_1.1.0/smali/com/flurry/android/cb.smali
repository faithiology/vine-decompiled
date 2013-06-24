.class final Lcom/flurry/android/cb;
.super Lcom/flurry/android/bf;
.source "SourceFile"


# instance fields
.field private final eo:Lcom/flurry/android/ao;


# direct methods
.method public constructor <init>(Lcom/flurry/android/ao;Lcom/flurry/android/AdUnit;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0, p2}, Lcom/flurry/android/bf;-><init>(Lcom/flurry/android/AdUnit;)V

    .line 12
    iput-object p1, p0, Lcom/flurry/android/cb;->eo:Lcom/flurry/android/ao;

    .line 13
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/flurry/android/cb;->eo:Lcom/flurry/android/ao;

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/flurry/android/cb;->eo:Lcom/flurry/android/ao;

    invoke-virtual {v0}, Lcom/flurry/android/ao;->f()V

    .line 20
    :cond_0
    return-void
.end method
