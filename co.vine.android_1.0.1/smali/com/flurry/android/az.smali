.class abstract Lcom/flurry/android/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/bq;
.implements Lcom/flurry/android/k;


# static fields
.field private static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/flurry/android/az;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/az;->d:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/flurry/android/av;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x6

    .line 82
    if-nez p0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v0

    .line 88
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/flurry/android/av;->H()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 89
    invoke-virtual {p0}, Lcom/flurry/android/av;->H()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_2

    .line 90
    const/4 v0, 0x1

    .line 103
    :cond_2
    :goto_1
    if-nez v0, :cond_0

    .line 104
    sget-object v1, Lcom/flurry/android/az;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Please consider to add to the project the library: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/android/av;->F()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/android/av;->G()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " or higher"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/android/db;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :catch_0
    move-exception v1

    .line 93
    sget-object v2, Lcom/flurry/android/az;->d:Ljava/lang/String;

    const-string v3, "failed to find third party ad network api with exception: "

    invoke-static {v4, v2, v3, v1}, Lcom/flurry/android/db;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 95
    :catch_1
    move-exception v1

    .line 96
    sget-object v2, Lcom/flurry/android/az;->d:Ljava/lang/String;

    const-string v3, "failed to initialize third party ad network api with exception: "

    invoke-static {v4, v2, v3, v1}, Lcom/flurry/android/db;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 98
    :catch_2
    move-exception v1

    .line 99
    sget-object v2, Lcom/flurry/android/az;->d:Ljava/lang/String;

    const-string v3, "failed to link third party ad network api with exception: "

    invoke-static {v4, v2, v3, v1}, Lcom/flurry/android/db;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;)Landroid/os/Bundle;
.end method

.method public final a(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cz;Lcom/flurry/android/AdUnit;)Lcom/flurry/android/ao;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 20
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 38
    :cond_0
    :goto_0
    return-object v0

    .line 24
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/android/az;->b()Lcom/flurry/android/av;

    move-result-object v1

    .line 25
    if-eqz v1, :cond_0

    .line 29
    invoke-static {v1}, Lcom/flurry/android/az;->a(Lcom/flurry/android/av;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    invoke-virtual {p0, p1}, Lcom/flurry/android/az;->a(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v5

    .line 34
    if-eqz v5, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 38
    invoke-virtual/range {v0 .. v5}, Lcom/flurry/android/az;->a(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cz;Lcom/flurry/android/AdUnit;Landroid/os/Bundle;)Lcom/flurry/android/ao;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract a(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cz;Lcom/flurry/android/AdUnit;Landroid/os/Bundle;)Lcom/flurry/android/ao;
.end method

.method protected abstract a(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cz;Lcom/flurry/android/AdCreative;Landroid/os/Bundle;)Lcom/flurry/android/p;
.end method

.method protected abstract b()Lcom/flurry/android/av;
.end method

.method public final b(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cz;Lcom/flurry/android/AdUnit;)Lcom/flurry/android/p;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 44
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    move-object v0, v1

    .line 66
    :goto_0
    return-object v0

    .line 47
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/android/az;->c()Lcom/flurry/android/av;

    move-result-object v0

    .line 48
    if-nez v0, :cond_2

    move-object v0, v1

    .line 49
    goto :goto_0

    .line 52
    :cond_2
    invoke-static {v0}, Lcom/flurry/android/az;->a(Lcom/flurry/android/av;)Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    .line 53
    goto :goto_0

    .line 56
    :cond_3
    invoke-virtual {p0, p1}, Lcom/flurry/android/az;->a(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v5

    .line 57
    if-nez v5, :cond_4

    move-object v0, v1

    .line 58
    goto :goto_0

    .line 61
    :cond_4
    if-nez p4, :cond_5

    move-object v4, v1

    .line 62
    :goto_1
    if-nez v4, :cond_a

    move-object v0, v1

    .line 63
    goto :goto_0

    .line 61
    :cond_5
    invoke-virtual {p4}, Lcom/flurry/android/AdUnit;->getAdFrames()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    move-object v4, v1

    goto :goto_1

    :cond_7
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AdFrame;

    if-nez v0, :cond_8

    move-object v4, v1

    goto :goto_1

    :cond_8
    invoke-virtual {v0}, Lcom/flurry/android/AdFrame;->getAdSpaceLayout()Lcom/flurry/android/AdSpaceLayout;

    move-result-object v0

    if-nez v0, :cond_9

    move-object v4, v1

    goto :goto_1

    :cond_9
    invoke-static {v0}, Lcom/flurry/android/cx;->b(Lcom/flurry/android/AdSpaceLayout;)Lcom/flurry/android/AdCreative;

    move-result-object v4

    goto :goto_1

    :cond_a
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 66
    invoke-virtual/range {v0 .. v5}, Lcom/flurry/android/az;->a(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cz;Lcom/flurry/android/AdCreative;Landroid/os/Bundle;)Lcom/flurry/android/p;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract c()Lcom/flurry/android/av;
.end method
