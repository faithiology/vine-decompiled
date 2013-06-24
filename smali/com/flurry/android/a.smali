.class final Lcom/flurry/android/a;
.super Lcom/flurry/android/bk;
.source "SourceFile"


# instance fields
.field private synthetic a:Z

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/flurry/android/FlurryAgent;


# direct methods
.method constructor <init>(Lcom/flurry/android/FlurryAgent;ZLandroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1214
    iput-object p1, p0, Lcom/flurry/android/a;->c:Lcom/flurry/android/FlurryAgent;

    iput-boolean p2, p0, Lcom/flurry/android/a;->a:Z

    iput-object p3, p0, Lcom/flurry/android/a;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/flurry/android/bk;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/flurry/android/a;->c:Lcom/flurry/android/FlurryAgent;

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->b(Lcom/flurry/android/FlurryAgent;)V

    .line 1219
    iget-object v0, p0, Lcom/flurry/android/a;->c:Lcom/flurry/android/FlurryAgent;

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->c(Lcom/flurry/android/FlurryAgent;)V

    .line 1220
    iget-boolean v0, p0, Lcom/flurry/android/a;->a:Z

    if-nez v0, :cond_0

    .line 1223
    iget-object v0, p0, Lcom/flurry/android/a;->c:Lcom/flurry/android/FlurryAgent;

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->d(Lcom/flurry/android/FlurryAgent;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/flurry/android/s;

    invoke-direct {v1, p0}, Lcom/flurry/android/s;-><init>(Lcom/flurry/android/a;)V

    invoke-static {}, Lcom/flurry/android/FlurryAgent;->y()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1232
    :cond_0
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1234
    const-string v0, "FlurryAgent"

    const-string v1, "Attempting to persist AdLogs"

    invoke-static {v0, v1}, Lcom/flurry/android/db;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    iget-object v0, p0, Lcom/flurry/android/a;->c:Lcom/flurry/android/FlurryAgent;

    iget-object v0, v0, Lcom/flurry/android/FlurryAgent;->Q:Lcom/flurry/android/FlurryAds;

    invoke-virtual {v0}, Lcom/flurry/android/FlurryAds;->S()V

    .line 1236
    const-string v0, "FlurryAgent"

    const-string v1, "Attempting to persist FreqCap"

    invoke-static {v0, v1}, Lcom/flurry/android/db;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    iget-object v0, p0, Lcom/flurry/android/a;->c:Lcom/flurry/android/FlurryAgent;

    iget-object v0, v0, Lcom/flurry/android/FlurryAgent;->Q:Lcom/flurry/android/FlurryAds;

    invoke-virtual {v0}, Lcom/flurry/android/FlurryAds;->U()V

    .line 1239
    :cond_1
    return-void
.end method
