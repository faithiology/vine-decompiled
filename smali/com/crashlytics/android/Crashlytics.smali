.class public final Lcom/crashlytics/android/Crashlytics;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/crashlytics/android/Crashlytics;

.field private static n:Landroid/content/ContextWrapper;

.field private static o:Ljava/lang/String;

.field private static p:Ljava/lang/String;

.field private static q:Ljava/lang/String;

.field private static r:Ljava/lang/String;

.field private static s:Ljava/lang/String;

.field private static t:Ljava/lang/String;

.field private static u:Ljava/io/File;

.field private static v:Z

.field private static w:Lcom/crashlytics/android/PinningInfoProvider;


# instance fields
.field a:Ljava/lang/String;

.field private c:Lcom/crashlytics/android/ao;

.field private d:Lcom/crashlytics/android/CrashlyticsListener;

.field private e:Lcom/crashlytics/android/E;

.field private final f:J

.field private final g:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/crashlytics/android/IdManager;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Lcom/crashlytics/android/SettingsController;

.field private final x:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    sput-object v1, Lcom/crashlytics/android/Crashlytics;->b:Lcom/crashlytics/android/Crashlytics;

    .line 108
    const/4 v0, 0x0

    sput-boolean v0, Lcom/crashlytics/android/Crashlytics;->v:Z

    .line 109
    sput-object v1, Lcom/crashlytics/android/Crashlytics;->w:Lcom/crashlytics/android/PinningInfoProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics;->h:Lcom/crashlytics/android/IdManager;

    .line 92
    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics;->i:Ljava/lang/String;

    .line 93
    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics;->j:Ljava/lang/String;

    .line 94
    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics;->k:Ljava/lang/String;

    .line 95
    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics;->a:Ljava/lang/String;

    .line 111
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics;->x:Ljava/lang/Object;

    .line 115
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/crashlytics/android/Crashlytics;->f:J

    .line 117
    return-void
.end method

.method static synthetic a(Lcom/crashlytics/android/Crashlytics;)Lcom/crashlytics/android/E;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->e:Lcom/crashlytics/android/E;

    return-object v0
.end method

.method private a(Lcom/crashlytics/android/ah;)Lcom/crashlytics/android/h;
    .locals 11
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 1011
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/crashlytics/android/Crashlytics;->l:Ljava/lang/String;

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/crashlytics/android/av;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1013
    new-instance v0, Lcom/crashlytics/android/h;

    sget-object v1, Lcom/crashlytics/android/Crashlytics;->s:Ljava/lang/String;

    sget-object v2, Lcom/crashlytics/android/Crashlytics;->o:Ljava/lang/String;

    sget-object v3, Lcom/crashlytics/android/Crashlytics;->r:Ljava/lang/String;

    sget-object v4, Lcom/crashlytics/android/Crashlytics;->q:Ljava/lang/String;

    sget-object v6, Lcom/crashlytics/android/Crashlytics;->p:Ljava/lang/String;

    sget-object v8, Lcom/crashlytics/android/Crashlytics;->t:Ljava/lang/String;

    const-string v9, "0"

    move-object v10, p1

    invoke-direct/range {v0 .. v10}, Lcom/crashlytics/android/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/ah;)V

    return-object v0
.end method

.method private a(Lcom/crashlytics/android/D;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/crashlytics/android/D",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 661
    iget-object v1, p0, Lcom/crashlytics/android/Crashlytics;->x:Ljava/lang/Object;

    monitor-enter v1

    .line 662
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->c:Lcom/crashlytics/android/ao;

    if-nez v0, :cond_0

    :goto_0
    monitor-exit v1

    return-object p2

    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->c:Lcom/crashlytics/android/ao;

    invoke-interface {p1, v0}, Lcom/crashlytics/android/D;->a(Lcom/crashlytics/android/ao;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p2

    goto :goto_0

    .line 663
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    const/16 v1, 0x400

    .line 712
    if-eqz p0, :cond_0

    .line 713
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 714
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 715
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 718
    :cond_0
    return-object p0
.end method

.method private a(Landroid/content/Context;F)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 861
    .line 866
    :try_start_0
    iget-object v5, p0, Lcom/crashlytics/android/Crashlytics;->x:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 867
    :try_start_1
    iget-object v3, p0, Lcom/crashlytics/android/Crashlytics;->m:Lcom/crashlytics/android/SettingsController;

    invoke-virtual {v3}, Lcom/crashlytics/android/SettingsController;->a()Lcom/crashlytics/android/ao;

    move-result-object v3

    iput-object v3, p0, Lcom/crashlytics/android/Crashlytics;->c:Lcom/crashlytics/android/ao;

    .line 868
    iget-object v3, p0, Lcom/crashlytics/android/Crashlytics;->c:Lcom/crashlytics/android/ao;

    if-eqz v3, :cond_d

    .line 869
    iget-object v3, p0, Lcom/crashlytics/android/Crashlytics;->c:Lcom/crashlytics/android/ao;

    invoke-virtual {v3}, Lcom/crashlytics/android/ao;->b()Lcom/crashlytics/android/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/crashlytics/android/i;->e()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->u()Lcom/crashlytics/android/ah;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/crashlytics/android/Crashlytics;->a(Lcom/crashlytics/android/ah;)Lcom/crashlytics/android/h;

    move-result-object v2

    new-instance v3, Lcom/crashlytics/android/W;

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->j()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/crashlytics/android/i;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v6, v4}, Lcom/crashlytics/android/W;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/crashlytics/android/W;->a(Lcom/crashlytics/android/h;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/crashlytics/android/Crashlytics;->t()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .line 870
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/crashlytics/android/Crashlytics;->c:Lcom/crashlytics/android/ao;

    invoke-virtual {v2}, Lcom/crashlytics/android/ao;->c()Lcom/crashlytics/android/ar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/crashlytics/android/ar;->a()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v2

    move v4, v3

    move v3, v2

    .line 872
    :goto_1
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 878
    :goto_2
    if-eqz v4, :cond_b

    if-eqz v3, :cond_b

    .line 880
    :try_start_4
    iget-object v1, p0, Lcom/crashlytics/android/Crashlytics;->e:Lcom/crashlytics/android/E;

    invoke-virtual {v1}, Lcom/crashlytics/android/E;->c()V

    .line 882
    invoke-virtual {p0}, Lcom/crashlytics/android/Crashlytics;->q()Lcom/crashlytics/android/Y;

    move-result-object v1

    .line 883
    if-eqz v1, :cond_0

    .line 884
    new-instance v2, Lcom/crashlytics/android/al;

    invoke-direct {v2, v1}, Lcom/crashlytics/android/al;-><init>(Lcom/crashlytics/android/Y;)V

    invoke-virtual {v2, p1, p2}, Lcom/crashlytics/android/al;->a(Landroid/content/Context;F)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 891
    :cond_0
    :goto_3
    if-eqz v0, :cond_1

    .line 892
    const-string v0, "Crash reporting disabled."

    invoke-static {v0}, Lcom/crashlytics/android/av;->b(Ljava/lang/String;)V

    .line 894
    :cond_1
    return-void

    .line 869
    :cond_2
    :try_start_5
    const-string v2, "Failed to create app with Crashlytics service."

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/crashlytics/android/av;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v3, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Lcom/crashlytics/android/i;->f()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/crashlytics/android/Crashlytics;->t()Z

    move-result v3

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Lcom/crashlytics/android/i;->c()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v2, "Server says an update is required - forcing a full App update."

    invoke-static {v2}, Lcom/crashlytics/android/av;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->u()Lcom/crashlytics/android/ah;

    move-result-object v2

    invoke-direct {p0, v4, v2}, Lcom/crashlytics/android/Crashlytics;->a(Lcom/crashlytics/android/i;Lcom/crashlytics/android/ah;)Z

    move v3, v1

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->u()Lcom/crashlytics/android/ah;

    move-result-object v3

    invoke-virtual {v4}, Lcom/crashlytics/android/i;->d()Lcom/crashlytics/android/c;

    move-result-object v6

    if-nez v6, :cond_7

    :goto_4
    if-eqz v2, :cond_6

    const-string v3, "We have an improved App icon. Performing an App update."

    invoke-static {v3}, Lcom/crashlytics/android/av;->b(Ljava/lang/String;)V

    invoke-direct {p0, v4, v2}, Lcom/crashlytics/android/Crashlytics;->a(Lcom/crashlytics/android/i;Lcom/crashlytics/android/ah;)Z

    :cond_6
    move v3, v1

    goto :goto_0

    :cond_7
    if-eqz v3, :cond_c

    const-string v7, "Comparing our App icon data with that returned by the server."

    invoke-static {v7}, Lcom/crashlytics/android/av;->b(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/crashlytics/android/ah;->c()I

    move-result v7

    invoke-virtual {v3}, Lcom/crashlytics/android/ah;->d()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {v6}, Lcom/crashlytics/android/c;->b()I

    move-result v8

    invoke-virtual {v6}, Lcom/crashlytics/android/c;->c()I

    move-result v9

    mul-int/2addr v8, v9

    invoke-virtual {v3}, Lcom/crashlytics/android/ah;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Lcom/crashlytics/android/c;->a()Ljava/lang/String;

    move-result-object v6

    if-eqz v9, :cond_8

    if-nez v6, :cond_9

    :cond_8
    const-string v3, "Local icon hash or server icon hash is null. Clearing icon request."

    const/4 v6, 0x0

    invoke-static {v3, v6}, Lcom/crashlytics/android/av;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 872
    :catchall_0
    move-exception v2

    move v3, v0

    move v4, v0

    :goto_5
    :try_start_6
    monitor-exit v5

    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 875
    :catch_0
    move-exception v2

    .line 874
    :goto_6
    const-string v5, "Error dealing with settings"

    invoke-static {v5, v2}, Lcom/crashlytics/android/av;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 869
    :cond_9
    if-ne v7, v8, :cond_a

    :try_start_7
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v3, "Our App icon is not an improvement over what is on the server."

    invoke-static {v3}, Lcom/crashlytics/android/av;->b(Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    if-ge v7, v8, :cond_c

    const-string v3, "Our App icon is not an improvement over what is on the server."

    invoke-static {v3}, Lcom/crashlytics/android/av;->b(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 887
    :catch_1
    move-exception v1

    .line 888
    const-string v2, "Error sending crash report"

    invoke-static {v2, v1}, Lcom/crashlytics/android/av;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 875
    :catch_2
    move-exception v2

    move v3, v0

    move v4, v0

    goto :goto_6

    .line 872
    :catchall_1
    move-exception v2

    move v4, v3

    move v3, v0

    goto :goto_5

    :catchall_2
    move-exception v2

    goto :goto_5

    :cond_b
    move v0, v1

    goto/16 :goto_3

    :cond_c
    move-object v2, v3

    goto :goto_4

    :cond_d
    move v3, v0

    move v4, v0

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/crashlytics/android/Crashlytics;Landroid/content/Context;F)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/crashlytics/android/Crashlytics;->a(Landroid/content/Context;F)V

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;Landroid/content/Context;F)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 728
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/crashlytics/android/Crashlytics;->n:Landroid/content/ContextWrapper;

    if-eqz v0, :cond_0

    .line 729
    const-string v0, "Crashlytics already started, ignoring re-initialization attempt."

    invoke-static {v0}, Lcom/crashlytics/android/av;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 761
    :goto_0
    monitor-exit p0

    return-void

    .line 733
    :cond_0
    :try_start_1
    const-string v0, "Crashlytics"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Initializing Crashlytics "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getCrashlyticsVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    sput-object p1, Lcom/crashlytics/android/Crashlytics;->s:Ljava/lang/String;

    .line 736
    new-instance v0, Landroid/content/ContextWrapper;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/crashlytics/android/Crashlytics;->n:Landroid/content/ContextWrapper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 739
    :try_start_2
    sget-object v0, Lcom/crashlytics/android/Crashlytics;->n:Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/Crashlytics;->o:Ljava/lang/String;

    .line 740
    sget-object v0, Lcom/crashlytics/android/Crashlytics;->n:Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/crashlytics/android/Crashlytics;->o:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 741
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/crashlytics/android/Crashlytics;->q:Ljava/lang/String;

    .line 742
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lcom/crashlytics/android/Crashlytics;->r:Ljava/lang/String;

    .line 743
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/Crashlytics;->p:Ljava/lang/String;

    .line 745
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/Crashlytics;->t:Ljava/lang/String;

    .line 748
    sget-object v1, Lcom/crashlytics/android/Crashlytics;->o:Ljava/lang/String;

    const/4 v0, 0x0

    sget-object v2, Lcom/crashlytics/android/Crashlytics;->n:Landroid/content/ContextWrapper;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "com.crashlytics.android.build_id"

    const-string v4, "string"

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/crashlytics/android/Crashlytics;->n:Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Build ID is: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/crashlytics/android/Crashlytics;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/crashlytics/android/av;->b(Ljava/lang/String;)V

    :cond_1
    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics;->l:Ljava/lang/String;

    .line 750
    sget-object v0, Lcom/crashlytics/android/Crashlytics;->n:Landroid/content/ContextWrapper;

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v2, "com.crashlytics.sdk.android"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Lcom/crashlytics/android/Crashlytics;->u:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/crashlytics/android/Crashlytics;->u:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 755
    :cond_2
    :goto_1
    :try_start_3
    new-instance v0, Lcom/crashlytics/android/IdManager;

    sget-object v1, Lcom/crashlytics/android/Crashlytics;->n:Landroid/content/ContextWrapper;

    invoke-direct {v0, v1}, Lcom/crashlytics/android/IdManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics;->h:Lcom/crashlytics/android/IdManager;

    .line 758
    new-instance v0, Lcom/crashlytics/android/j;

    iget-object v1, p0, Lcom/crashlytics/android/Crashlytics;->l:Ljava/lang/String;

    sget-object v2, Lcom/crashlytics/android/Crashlytics;->n:Landroid/content/ContextWrapper;

    const-string v3, "com.crashlytics.RequireBuildId"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/crashlytics/android/av;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/crashlytics/android/j;-><init>(Ljava/lang/String;Z)V

    sget-object v1, Lcom/crashlytics/android/Crashlytics;->o:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/crashlytics/android/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    const-string v0, "https://settings.crashlytics.com/spi/v1/platforms/android/apps/%s/settings"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/crashlytics/android/Crashlytics;->o:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Lcom/crashlytics/android/ab;

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->j()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1, v0}, Lcom/crashlytics/android/ab;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/crashlytics/android/Z;

    invoke-direct {v7}, Lcom/crashlytics/android/Z;-><init>()V

    new-instance v8, Lcom/crashlytics/android/ap;

    invoke-direct {v8}, Lcom/crashlytics/android/ap;-><init>()V

    new-instance v9, Lcom/crashlytics/android/m;

    invoke-direct {v9}, Lcom/crashlytics/android/m;-><init>()V

    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->m:Lcom/crashlytics/android/SettingsController;

    if-nez v0, :cond_3

    sget-object v0, Lcom/crashlytics/android/Crashlytics;->s:Ljava/lang/String;

    sget-object v1, Lcom/crashlytics/android/Crashlytics;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/crashlytics/android/av;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/crashlytics/android/Crashlytics;->l:Ljava/lang/String;

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/crashlytics/android/av;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lcom/crashlytics/android/aq;

    sget-object v1, Lcom/crashlytics/android/Crashlytics;->s:Ljava/lang/String;

    sget-object v4, Lcom/crashlytics/android/Crashlytics;->r:Ljava/lang/String;

    sget-object v5, Lcom/crashlytics/android/Crashlytics;->q:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/crashlytics/android/aq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/crashlytics/android/SettingsController;

    move-object v2, v0

    move-object v3, v7

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v1 .. v6}, Lcom/crashlytics/android/SettingsController;-><init>(Lcom/crashlytics/android/aq;Lcom/crashlytics/android/Z;Lcom/crashlytics/android/ap;Lcom/crashlytics/android/m;Lcom/crashlytics/android/as;)V

    iput-object v1, p0, Lcom/crashlytics/android/Crashlytics;->m:Lcom/crashlytics/android/SettingsController;

    :cond_3
    const-string v0, "Installing exception handler..."

    invoke-static {v0}, Lcom/crashlytics/android/av;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/crashlytics/android/E;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/crashlytics/android/Crashlytics;->d:Lcom/crashlytics/android/CrashlyticsListener;

    iget-object v3, p0, Lcom/crashlytics/android/Crashlytics;->l:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/crashlytics/android/E;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/crashlytics/android/CrashlyticsListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics;->e:Lcom/crashlytics/android/E;

    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->e:Lcom/crashlytics/android/E;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const-string v0, "Successfully installed exception handler."

    invoke-static {v0}, Lcom/crashlytics/android/av;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/crashlytics/android/Crashlytics;->u:Ljava/io/File;

    const-string v2, "settings_marker"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Lcom/crashlytics/android/t;

    invoke-direct {v1, p0, p2, p3, v0}, Lcom/crashlytics/android/t;-><init>(Lcom/crashlytics/android/Crashlytics;Landroid/content/Context;FLjava/io/File;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, p2, p3}, Lcom/crashlytics/android/Crashlytics;->a(Landroid/content/Context;F)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 728
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 751
    :catch_0
    move-exception v0

    .line 752
    :try_start_4
    const-string v1, "Error setting up app properties"

    invoke-static {v1, v0}, Lcom/crashlytics/android/av;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 760
    :cond_4
    :try_start_5
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :goto_2
    const/4 v0, 0x0

    :try_start_6
    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v2, "Error writing settings marker"

    invoke-static {v2, v0}, Lcom/crashlytics/android/av;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method

.method static a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 516
    invoke-static {}, Lcom/crashlytics/android/av;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "always_send_reports_opt_in"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 517
    return-void
.end method

.method static synthetic a(Lcom/crashlytics/android/Crashlytics;Landroid/content/Context;Lcom/crashlytics/android/aj;)Z
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 42
    new-instance v0, Lcom/crashlytics/android/ac;

    invoke-direct {v0, p1, p2}, Lcom/crashlytics/android/ac;-><init>(Landroid/content/Context;Lcom/crashlytics/android/aj;)V

    new-instance v1, Lcom/crashlytics/android/C;

    invoke-direct {v1, p0, v6}, Lcom/crashlytics/android/C;-><init>(Lcom/crashlytics/android/Crashlytics;B)V

    check-cast p1, Landroid/app/Activity;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/crashlytics/android/y;

    invoke-direct {v3, p0, v1}, Lcom/crashlytics/android/y;-><init>(Lcom/crashlytics/android/Crashlytics;Lcom/crashlytics/android/C;)V

    invoke-virtual {v0}, Lcom/crashlytics/android/ac;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/crashlytics/android/ac;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/crashlytics/android/ac;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p2}, Lcom/crashlytics/android/aj;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/crashlytics/android/z;

    invoke-direct {v3, p0, v1}, Lcom/crashlytics/android/z;-><init>(Lcom/crashlytics/android/Crashlytics;Lcom/crashlytics/android/C;)V

    invoke-virtual {v0}, Lcom/crashlytics/android/ac;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_0
    invoke-virtual {p2}, Lcom/crashlytics/android/aj;->g()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lcom/crashlytics/android/A;

    invoke-direct {v3, p0, v1}, Lcom/crashlytics/android/A;-><init>(Lcom/crashlytics/android/Crashlytics;Lcom/crashlytics/android/C;)V

    invoke-virtual {v0}, Lcom/crashlytics/android/ac;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_1
    new-instance v0, Lcom/crashlytics/android/B;

    invoke-direct {v0, p0, v2}, Lcom/crashlytics/android/B;-><init>(Lcom/crashlytics/android/Crashlytics;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const-string v0, "Waiting for user opt-in."

    invoke-static {v0}, Lcom/crashlytics/android/av;->b(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/crashlytics/android/C;->b()V

    invoke-virtual {v1}, Lcom/crashlytics/android/C;->a()Z

    move-result v0

    return v0
.end method

.method private a(Lcom/crashlytics/android/i;Lcom/crashlytics/android/ah;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 952
    invoke-direct {p0, p2}, Lcom/crashlytics/android/Crashlytics;->a(Lcom/crashlytics/android/ah;)Lcom/crashlytics/android/h;

    move-result-object v0

    .line 953
    new-instance v1, Lcom/crashlytics/android/au;

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/crashlytics/android/i;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/crashlytics/android/au;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/crashlytics/android/au;->a(Lcom/crashlytics/android/h;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/crashlytics/android/Crashlytics;)Lcom/crashlytics/android/IdManager;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->h:Lcom/crashlytics/android/IdManager;

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 667
    .line 670
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 671
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 672
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 674
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 675
    if-eqz v0, :cond_2

    .line 676
    const-string v2, "com.crashlytics.ApiKey"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 684
    :goto_0
    invoke-static {v0}, Lcom/crashlytics/android/av;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 686
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "com.crashlytics.ApiKey"

    const-string v4, "string"

    sget-object v5, Lcom/crashlytics/android/Crashlytics;->o:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 688
    if-eqz v2, :cond_0

    .line 689
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 693
    :cond_0
    invoke-static {v0}, Lcom/crashlytics/android/av;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 694
    sget-boolean v2, Lcom/crashlytics/android/Crashlytics;->v:Z

    if-nez v2, :cond_1

    invoke-static {p0}, Lcom/crashlytics/android/av;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 695
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Crashlytics could not be initialized, API key missing from AndroidManifest.xml. Add the following tag to your Application element \n\t<meta-data android:name=\"com.crashlytics.ApiKey\" android:value=\"YOUR_API_KEY\"/>"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 678
    :catch_0
    move-exception v0

    .line 681
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Caught non-fatal exception while retrieving apiKey: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/av;->b(Ljava/lang/String;)V

    :cond_2
    move-object v0, v1

    goto :goto_0

    .line 697
    :cond_3
    const-string v2, "Crashlytics could not be initialized, API key missing from AndroidManifest.xml. Add the following tag to your Application element \n\t<meta-data android:name=\"com.crashlytics.ApiKey\" android:value=\"YOUR_API_KEY\"/>"

    invoke-static {v2, v1}, Lcom/crashlytics/android/av;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 701
    :cond_4
    return-object v0
.end method

.method static c()Landroid/content/ContextWrapper;
    .locals 1

    .prologue
    .line 450
    sget-object v0, Lcom/crashlytics/android/Crashlytics;->n:Landroid/content/ContextWrapper;

    return-object v0
.end method

.method static d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 459
    sget-object v0, Lcom/crashlytics/android/Crashlytics;->o:Ljava/lang/String;

    return-object v0
.end method

.method static e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 463
    sget-object v0, Lcom/crashlytics/android/Crashlytics;->r:Ljava/lang/String;

    return-object v0
.end method

.method static f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 467
    sget-object v0, Lcom/crashlytics/android/Crashlytics;->q:Ljava/lang/String;

    return-object v0
.end method

.method static g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 471
    sget-object v0, Lcom/crashlytics/android/Crashlytics;->s:Ljava/lang/String;

    return-object v0
.end method

.method public static getCrashlyticsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 435
    const-string v0, "1.0.0.22"

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/crashlytics/android/Crashlytics;
    .locals 2

    .prologue
    .line 161
    const-class v1, Lcom/crashlytics/android/Crashlytics;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/crashlytics/android/Crashlytics;->b:Lcom/crashlytics/android/Crashlytics;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Lcom/crashlytics/android/Crashlytics;

    invoke-direct {v0}, Lcom/crashlytics/android/Crashlytics;-><init>()V

    sput-object v0, Lcom/crashlytics/android/Crashlytics;->b:Lcom/crashlytics/android/Crashlytics;

    .line 165
    :cond_0
    sget-object v0, Lcom/crashlytics/android/Crashlytics;->b:Lcom/crashlytics/android/Crashlytics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getPinningInfoProvider()Lcom/crashlytics/android/PinningInfoProvider;
    .locals 1

    .prologue
    .line 399
    sget-object v0, Lcom/crashlytics/android/Crashlytics;->w:Lcom/crashlytics/android/PinningInfoProvider;

    return-object v0
.end method

.method static h()Ljava/io/File;
    .locals 1

    .prologue
    .line 475
    sget-object v0, Lcom/crashlytics/android/Crashlytics;->u:Ljava/io/File;

    return-object v0
.end method

.method static i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 479
    sget-object v0, Lcom/crashlytics/android/Crashlytics;->p:Ljava/lang/String;

    return-object v0
.end method

.method static j()Ljava/lang/String;
    .locals 2

    .prologue
    .line 483
    sget-object v0, Lcom/crashlytics/android/Crashlytics;->n:Landroid/content/ContextWrapper;

    const-string v1, "com.crashlytics.ApiEndpoint"

    invoke-static {v0, v1}, Lcom/crashlytics/android/av;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static l()Z
    .locals 3

    .prologue
    .line 512
    invoke-static {}, Lcom/crashlytics/android/av;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "always_send_reports_opt_in"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "priority"
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 224
    invoke-static {p2}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 227
    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 195
    sget-object v0, Lcom/crashlytics/android/Crashlytics;->b:Lcom/crashlytics/android/Crashlytics;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/crashlytics/android/Crashlytics;->b:Lcom/crashlytics/android/Crashlytics;

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->e:Lcom/crashlytics/android/E;

    if-nez v0, :cond_1

    .line 196
    :cond_0
    const-string v0, "Crashlytics must be initialized by calling Crashlytics.start(Context) prior to logging messages."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/crashlytics/android/av;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 208
    :goto_0
    return-void

    .line 200
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/crashlytics/android/Crashlytics;->b:Lcom/crashlytics/android/Crashlytics;

    iget-wide v2, v2, Lcom/crashlytics/android/Crashlytics;->f:J

    sub-long/2addr v0, v2

    .line 202
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/crashlytics/android/s;

    invoke-direct {v3, v0, v1, p0}, Lcom/crashlytics/android/s;-><init>(JLjava/lang/String;)V

    const-string v0, "Crashlytics Logger"

    invoke-direct {v2, v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static logException(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "throwable"

    .prologue
    .line 177
    sget-object v0, Lcom/crashlytics/android/Crashlytics;->b:Lcom/crashlytics/android/Crashlytics;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/crashlytics/android/Crashlytics;->b:Lcom/crashlytics/android/Crashlytics;

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->e:Lcom/crashlytics/android/E;

    if-nez v0, :cond_1

    .line 178
    :cond_0
    const-string v0, "Crashlytics must be initialized by calling Crashlytics.start(Context) prior to logging exceptions."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/crashlytics/android/av;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 184
    :goto_0
    return-void

    .line 183
    :cond_1
    sget-object v0, Lcom/crashlytics/android/Crashlytics;->b:Lcom/crashlytics/android/Crashlytics;

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->e:Lcom/crashlytics/android/E;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/crashlytics/android/E;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic s()Lcom/crashlytics/android/Crashlytics;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/crashlytics/android/Crashlytics;->b:Lcom/crashlytics/android/Crashlytics;

    return-object v0
.end method

.method public static setApplicationInstallationIdentifier(Ljava/lang/String;)V
    .locals 2
    .parameter "identifier"

    .prologue
    .line 276
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    invoke-static {p0}, Lcom/crashlytics/android/Crashlytics;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/crashlytics/android/Crashlytics;->a:Ljava/lang/String;

    .line 277
    return-void
.end method

.method public static setBool(Ljava/lang/String;Z)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 316
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/crashlytics/android/Crashlytics;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method public static setDouble(Ljava/lang/String;D)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 325
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/crashlytics/android/Crashlytics;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method public static setFloat(Ljava/lang/String;F)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 334
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/crashlytics/android/Crashlytics;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method public static setInt(Ljava/lang/String;I)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 343
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/crashlytics/android/Crashlytics;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    return-void
.end method

.method public static setLong(Ljava/lang/String;J)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 352
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/crashlytics/android/Crashlytics;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method public static setPinningInfoProvider(Lcom/crashlytics/android/PinningInfoProvider;)V
    .locals 1
    .parameter "pinningInfo"

    .prologue
    .line 392
    sget-object v0, Lcom/crashlytics/android/Crashlytics;->w:Lcom/crashlytics/android/PinningInfoProvider;

    if-eq v0, p0, :cond_0

    .line 393
    sput-object p0, Lcom/crashlytics/android/Crashlytics;->w:Lcom/crashlytics/android/PinningInfoProvider;

    .line 394
    invoke-static {}, Lcom/crashlytics/android/av;->g()V

    .line 396
    :cond_0
    return-void
.end method

.method public static setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 288
    if-nez p0, :cond_1

    .line 289
    sget-object v0, Lcom/crashlytics/android/Crashlytics;->n:Landroid/content/ContextWrapper;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/crashlytics/android/Crashlytics;->n:Landroid/content/ContextWrapper;

    invoke-static {v0}, Lcom/crashlytics/android/av;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Custom attribute key cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_0
    const-string v0, "Attempting to set custom attribute with null key, ignoring."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/crashlytics/android/av;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 308
    :goto_0
    return-void

    .line 296
    :cond_1
    invoke-static {p0}, Lcom/crashlytics/android/Crashlytics;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 297
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/16 v1, 0x40

    if-lt v0, v1, :cond_2

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 299
    :cond_2
    if-nez p1, :cond_3

    .line 300
    const-string p1, ""

    .line 304
    :goto_1
    sget-object v0, Lcom/crashlytics/android/Crashlytics;->b:Lcom/crashlytics/android/Crashlytics;

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 302
    :cond_3
    invoke-static {p1}, Lcom/crashlytics/android/Crashlytics;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 306
    :cond_4
    const-string v0, "Exceeded maximum number of custom attributes (64)"

    invoke-static {v0}, Lcom/crashlytics/android/av;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setUserEmail(Ljava/lang/String;)V
    .locals 2
    .parameter "email"

    .prologue
    .line 269
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    invoke-static {p0}, Lcom/crashlytics/android/Crashlytics;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/crashlytics/android/Crashlytics;->j:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public static setUserIdentifier(Ljava/lang/String;)V
    .locals 2
    .parameter "identifier"

    .prologue
    .line 251
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    invoke-static {p0}, Lcom/crashlytics/android/Crashlytics;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/crashlytics/android/Crashlytics;->i:Ljava/lang/String;

    .line 252
    return-void
.end method

.method public static setUserName(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 260
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    invoke-static {p0}, Lcom/crashlytics/android/Crashlytics;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/crashlytics/android/Crashlytics;->k:Ljava/lang/String;

    .line 261
    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 126
    const/high16 v0, 0x3f80

    invoke-static {p0, v0}, Lcom/crashlytics/android/Crashlytics;->start(Landroid/content/Context;F)V

    .line 127
    return-void
.end method

.method public static start(Landroid/content/Context;F)V
    .locals 2
    .parameter "context"
    .parameter "delay"

    .prologue
    .line 137
    if-nez p0, :cond_0

    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    invoke-static {p0}, Lcom/crashlytics/android/Crashlytics;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 143
    if-nez v0, :cond_1

    .line 155
    :goto_0
    return-void

    .line 148
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v1

    invoke-direct {v1, v0, p0, p1}, Lcom/crashlytics/android/Crashlytics;->a(Ljava/lang/String;Landroid/content/Context;F)V
    :try_end_0
    .catch Lcom/crashlytics/android/CrashlyticsMissingDependencyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 151
    throw v0

    .line 152
    :catch_1
    move-exception v0

    .line 153
    const-string v1, "Crashlytics was not started due to an exception during initialization"

    invoke-static {v1, v0}, Lcom/crashlytics/android/av;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private t()Z
    .locals 3

    .prologue
    .line 925
    iget-object v1, p0, Lcom/crashlytics/android/Crashlytics;->x:Ljava/lang/Object;

    monitor-enter v1

    .line 926
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->m:Lcom/crashlytics/android/SettingsController;

    sget-object v2, Lcom/crashlytics/android/SettingsController$CacheBehavior;->SKIP_CACHE_LOOKUP:Lcom/crashlytics/android/SettingsController$CacheBehavior;

    invoke-virtual {v0, v2}, Lcom/crashlytics/android/SettingsController;->a(Lcom/crashlytics/android/SettingsController$CacheBehavior;)Lcom/crashlytics/android/ao;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics;->c:Lcom/crashlytics/android/ao;

    .line 928
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->c:Lcom/crashlytics/android/ao;

    if-nez v0, :cond_0

    .line 929
    const-string v0, "Failed to force reload of settings from Crashlytics."

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/crashlytics/android/av;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 932
    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->c:Lcom/crashlytics/android/ao;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 933
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static u()Lcom/crashlytics/android/ah;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1022
    :try_start_0
    sget-object v0, Lcom/crashlytics/android/Crashlytics;->n:Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 1023
    sget-object v2, Lcom/crashlytics/android/Crashlytics;->n:Landroid/content/ContextWrapper;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1024
    :try_start_1
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1025
    invoke-static {v3}, Lcom/crashlytics/android/av;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v4

    .line 1026
    invoke-static {v4}, Lcom/crashlytics/android/av;->a([B)Ljava/lang/String;

    move-result-object v5

    .line 1027
    new-instance v0, Lcom/crashlytics/android/ah;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v0, v5, v4, v6, v3}, Lcom/crashlytics/android/ah;-><init>(Ljava/lang/String;[BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1031
    const-string v1, "Failed to close icon input stream."

    invoke-static {v2, v1}, Lcom/crashlytics/android/av;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1034
    :goto_0
    return-object v0

    .line 1028
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 1029
    :goto_1
    :try_start_2
    const-string v3, "Failed to load icon"

    invoke-static {v3, v0}, Lcom/crashlytics/android/av;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1031
    const-string v0, "Failed to close icon input stream."

    invoke-static {v2, v0}, Lcom/crashlytics/android/av;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    move-object v0, v1

    .line 1032
    goto :goto_0

    .line 1031
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_2
    const-string v1, "Failed to close icon input stream."

    invoke-static {v2, v1}, Lcom/crashlytics/android/av;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 1028
    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method final a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 357
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method final a(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 545
    new-instance v0, Lcom/crashlytics/android/v;

    invoke-direct {v0, p0, p1}, Lcom/crashlytics/android/v;-><init>(Lcom/crashlytics/android/Crashlytics;Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/Crashlytics;->a(Lcom/crashlytics/android/D;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method final b()Lcom/crashlytics/android/IdManager;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->h:Lcom/crashlytics/android/IdManager;

    return-object v0
.end method

.method public final crash()V
    .locals 1

    .prologue
    .line 442
    new-instance v0, Lcom/crashlytics/android/CrashTest;

    invoke-direct {v0}, Lcom/crashlytics/android/CrashTest;-><init>()V

    invoke-virtual {v0}, Lcom/crashlytics/android/CrashTest;->indexOutOfBounds()V

    .line 443
    return-void
.end method

.method public final getDebugMode()Z
    .locals 1

    .prologue
    .line 384
    sget-boolean v0, Lcom/crashlytics/android/Crashlytics;->v:Z

    return v0
.end method

.method final k()Z
    .locals 2

    .prologue
    .line 499
    new-instance v0, Lcom/crashlytics/android/u;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/u;-><init>(Lcom/crashlytics/android/Crashlytics;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/Crashlytics;->a(Lcom/crashlytics/android/D;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method final m()Lcom/crashlytics/android/E;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->e:Lcom/crashlytics/android/E;

    return-object v0
.end method

.method final n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->h:Lcom/crashlytics/android/IdManager;

    invoke-virtual {v0}, Lcom/crashlytics/android/IdManager;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->i:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->h:Lcom/crashlytics/android/IdManager;

    invoke-virtual {v0}, Lcom/crashlytics/android/IdManager;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->j:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->h:Lcom/crashlytics/android/IdManager;

    invoke-virtual {v0}, Lcom/crashlytics/android/IdManager;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->k:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final q()Lcom/crashlytics/android/Y;
    .locals 2

    .prologue
    .line 563
    new-instance v0, Lcom/crashlytics/android/w;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/w;-><init>(Lcom/crashlytics/android/Crashlytics;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/Crashlytics;->a(Lcom/crashlytics/android/D;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/Y;

    return-object v0
.end method

.method final r()Lcom/crashlytics/android/ar;
    .locals 2

    .prologue
    .line 576
    new-instance v0, Lcom/crashlytics/android/x;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/x;-><init>(Lcom/crashlytics/android/Crashlytics;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/Crashlytics;->a(Lcom/crashlytics/android/D;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/ar;

    return-object v0
.end method

.method public final setDebugMode(Z)V
    .locals 0
    .parameter "bool"

    .prologue
    .line 375
    sput-boolean p1, Lcom/crashlytics/android/Crashlytics;->v:Z

    .line 376
    return-void
.end method

.method public final setListener(Lcom/crashlytics/android/CrashlyticsListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 366
    iput-object p1, p0, Lcom/crashlytics/android/Crashlytics;->d:Lcom/crashlytics/android/CrashlyticsListener;

    .line 367
    return-void
.end method

.method public final verifyPinning(Ljava/net/URL;)Z
    .locals 4
    .parameter "url"

    .prologue
    const/4 v1, 0x0

    .line 411
    .line 413
    sget-object v0, Lcom/crashlytics/android/Crashlytics;->w:Lcom/crashlytics/android/PinningInfoProvider;

    if-eqz v0, :cond_1

    .line 415
    :try_start_0
    invoke-static {p1}, Lcom/crashlytics/android/HttpRequest;->a(Ljava/net/URL;)Lcom/crashlytics/android/HttpRequest;

    move-result-object v2

    .line 416
    sget-object v0, Lcom/crashlytics/android/Crashlytics;->w:Lcom/crashlytics/android/PinningInfoProvider;

    invoke-static {v0}, Lcom/crashlytics/android/av;->a(Lcom/crashlytics/android/PinningInfoProvider;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    .line 417
    invoke-virtual {v2}, Lcom/crashlytics/android/HttpRequest;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 418
    invoke-virtual {v2}, Lcom/crashlytics/android/HttpRequest;->b()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 419
    const/16 v2, 0xc8

    if-lt v0, v2, :cond_0

    const/16 v2, 0x12c

    if-ge v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v1, v0

    .line 425
    :goto_1
    return v1

    :cond_0
    move v0, v1

    .line 419
    goto :goto_0

    .line 420
    :catch_0
    move-exception v0

    .line 421
    const-string v2, "Could not verify SSL pinning"

    invoke-static {v2, v0}, Lcom/crashlytics/android/av;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method
