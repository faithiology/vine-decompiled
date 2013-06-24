.class final Lcom/flurry/android/d;
.super Lcom/flurry/android/bk;
.source "SourceFile"


# instance fields
.field private synthetic b:Landroid/content/Context;

.field private synthetic c:Lcom/flurry/android/FlurryAgent;

.field private synthetic f:Z


# direct methods
.method constructor <init>(Lcom/flurry/android/FlurryAgent;Landroid/content/Context;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1103
    iput-object p1, p0, Lcom/flurry/android/d;->c:Lcom/flurry/android/FlurryAgent;

    iput-object p2, p0, Lcom/flurry/android/d;->b:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/flurry/android/d;->f:Z

    invoke-direct {p0}, Lcom/flurry/android/bk;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/flurry/android/d;->c:Lcom/flurry/android/FlurryAgent;

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->a(Lcom/flurry/android/FlurryAgent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1109
    iget-object v0, p0, Lcom/flurry/android/d;->c:Lcom/flurry/android/FlurryAgent;

    iget-object v1, p0, Lcom/flurry/android/d;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/flurry/android/FlurryAgent;->a(Lcom/flurry/android/FlurryAgent;Landroid/content/Context;)V

    .line 1111
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/d;->c:Lcom/flurry/android/FlurryAgent;

    iget-object v1, p0, Lcom/flurry/android/d;->b:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/flurry/android/d;->f:Z

    invoke-static {v0, v1, v2}, Lcom/flurry/android/FlurryAgent;->a(Lcom/flurry/android/FlurryAgent;Landroid/content/Context;Z)V

    .line 1112
    return-void
.end method
