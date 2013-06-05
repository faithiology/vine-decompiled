.class final Lcom/flurry/android/cu;
.super Lcom/flurry/android/bk;
.source "SourceFile"


# instance fields
.field private synthetic eO:Landroid/content/Context;

.field private synthetic eS:Ljava/lang/String;

.field private synthetic eT:Lcom/flurry/android/AdUnit;

.field private synthetic eU:Z

.field private synthetic ee:Lcom/flurry/android/FlurryAds;


# direct methods
.method constructor <init>(Lcom/flurry/android/FlurryAds;Ljava/lang/String;Lcom/flurry/android/AdUnit;Landroid/content/Context;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1412
    iput-object p1, p0, Lcom/flurry/android/cu;->ee:Lcom/flurry/android/FlurryAds;

    iput-object p2, p0, Lcom/flurry/android/cu;->eS:Ljava/lang/String;

    iput-object p3, p0, Lcom/flurry/android/cu;->eT:Lcom/flurry/android/AdUnit;

    iput-object p4, p0, Lcom/flurry/android/cu;->eO:Landroid/content/Context;

    iput-boolean p5, p0, Lcom/flurry/android/cu;->eU:Z

    invoke-direct {p0}, Lcom/flurry/android/bk;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/flurry/android/cu;->eS:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1419
    iget-object v0, p0, Lcom/flurry/android/cu;->eT:Lcom/flurry/android/AdUnit;

    invoke-virtual {v0}, Lcom/flurry/android/AdUnit;->getAdSpace()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1420
    iget-object v1, p0, Lcom/flurry/android/cu;->eS:Ljava/lang/String;

    const-string v2, "market://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1422
    iget-object v0, p0, Lcom/flurry/android/cu;->ee:Lcom/flurry/android/FlurryAds;

    iget-object v1, p0, Lcom/flurry/android/cu;->eO:Landroid/content/Context;

    iget-object v2, p0, Lcom/flurry/android/cu;->eS:Ljava/lang/String;

    iget-object v3, p0, Lcom/flurry/android/cu;->eT:Lcom/flurry/android/AdUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/android/FlurryAds;->a(Landroid/content/Context;Ljava/lang/String;Lcom/flurry/android/AdUnit;)V

    .line 1455
    :cond_0
    :goto_0
    return-void

    .line 1424
    :cond_1
    iget-object v1, p0, Lcom/flurry/android/cu;->eS:Ljava/lang/String;

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1426
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/flurry/android/cu;->eO:Landroid/content/Context;

    const-class v3, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1427
    const-string v2, "url"

    iget-object v3, p0, Lcom/flurry/android/cu;->eS:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1428
    iget-boolean v2, p0, Lcom/flurry/android/cu;->eU:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/flurry/android/cu;->eO:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/flurry/android/bd;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1430
    iget-object v2, p0, Lcom/flurry/android/cu;->ee:Lcom/flurry/android/FlurryAds;

    iget-object v3, p0, Lcom/flurry/android/cu;->eO:Landroid/content/Context;

    invoke-virtual {v2, v3, v1, v0}, Lcom/flurry/android/FlurryAds;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    goto :goto_0

    .line 1434
    :cond_2
    sget-object v1, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    const-string v2, "Unable to launch FlurryFullscreenTakeoverActivity, falling back to browser. Fix by declaring this Activity in your AndroidManifest.xml"

    invoke-static {v1, v2}, Lcom/flurry/android/db;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    iget-object v1, p0, Lcom/flurry/android/cu;->ee:Lcom/flurry/android/FlurryAds;

    iget-object v2, p0, Lcom/flurry/android/cu;->eO:Landroid/content/Context;

    iget-object v3, p0, Lcom/flurry/android/cu;->eS:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/flurry/android/FlurryAds;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 1441
    :cond_3
    iget-object v1, p0, Lcom/flurry/android/cu;->ee:Lcom/flurry/android/FlurryAds;

    iget-object v2, p0, Lcom/flurry/android/cu;->eO:Landroid/content/Context;

    iget-object v3, p0, Lcom/flurry/android/cu;->eS:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/flurry/android/FlurryAds;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1442
    if-nez v0, :cond_0

    .line 1445
    sget-object v0, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to launch intent for:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/cu;->eS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/db;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1452
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to launch intent for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/cu;->eS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1453
    sget-object v1, Lcom/flurry/android/FlurryAds;->d:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/flurry/android/db;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
