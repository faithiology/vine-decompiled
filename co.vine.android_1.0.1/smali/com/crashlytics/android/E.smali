.class final Lcom/crashlytics/android/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field static final a:Ljava/io/FilenameFilter;

.field private static b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/regex/Pattern;

.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Lcom/crashlytics/android/k;


# instance fields
.field private final g:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final i:I

.field private final j:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final k:Ljava/io/File;

.field private final l:Ljava/io/File;

.field private final m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final n:Ljava/lang/String;

.field private final o:Landroid/content/BroadcastReceiver;

.field private final p:Landroid/content/BroadcastReceiver;

.field private final q:Lcom/crashlytics/android/k;

.field private final r:Lcom/crashlytics/android/k;

.field private final s:Ljava/util/concurrent/ExecutorService;

.field private t:Landroid/app/ActivityManager$RunningAppProcessInfo;

.field private u:Ljava/io/RandomAccessFile;

.field private v:Z

.field private w:Z

.field private x:[Ljava/lang/Thread;

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation
.end field

.field private z:[Ljava/lang/StackTraceElement;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 120
    new-instance v0, Lcom/crashlytics/android/F;

    invoke-direct {v0}, Lcom/crashlytics/android/F;-><init>()V

    sput-object v0, Lcom/crashlytics/android/E;->a:Ljava/io/FilenameFilter;

    .line 128
    new-instance v0, Lcom/crashlytics/android/L;

    invoke-direct {v0}, Lcom/crashlytics/android/L;-><init>()V

    sput-object v0, Lcom/crashlytics/android/E;->b:Ljava/util/Comparator;

    .line 135
    new-instance v0, Lcom/crashlytics/android/M;

    invoke-direct {v0}, Lcom/crashlytics/android/M;-><init>()V

    sput-object v0, Lcom/crashlytics/android/E;->c:Ljava/util/Comparator;

    .line 145
    new-instance v0, Lcom/crashlytics/android/N;

    invoke-direct {v0}, Lcom/crashlytics/android/N;-><init>()V

    .line 152
    const-string v0, "([\\d|A-Z|a-z]{12}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{12}).+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/E;->d:Ljava/util/regex/Pattern;

    .line 155
    const-string v0, "X-CRASHLYTICS-SEND-FLAGS"

    const-string v1, "1"

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/E;->e:Ljava/util/Map;

    .line 175
    const-string v0, "0"

    invoke-static {v0}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/E;->f:Lcom/crashlytics/android/k;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/crashlytics/android/CrashlyticsListener;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 235
    const-string v1, "Crashlytics Exception Handler"

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    new-instance v2, Lcom/crashlytics/android/ad;

    invoke-direct {v2, v1, v0}, Lcom/crashlytics/android/ad;-><init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;)V

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/crashlytics/android/ae;

    const-wide/16 v3, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/crashlytics/android/ae;-><init>(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Crashlytics Shutdown Hook for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    invoke-direct {p0, p1, p2, v2, p3}, Lcom/crashlytics/android/E;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/crashlytics/android/CrashlyticsListener;Ljava/util/concurrent/ExecutorService;Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method private constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/crashlytics/android/CrashlyticsListener;Ljava/util/concurrent/ExecutorService;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/crashlytics/android/E;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 186
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/crashlytics/android/E;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 243
    iput-object p1, p0, Lcom/crashlytics/android/E;->j:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 244
    iput-object p3, p0, Lcom/crashlytics/android/E;->s:Ljava/util/concurrent/ExecutorService;

    .line 245
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/crashlytics/android/E;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 246
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->h()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/E;->k:Ljava/io/File;

    .line 247
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/crashlytics/android/E;->k:Ljava/io/File;

    const-string v2, "invalidClsFiles"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/crashlytics/android/E;->l:Ljava/io/File;

    .line 249
    const-string v0, "Crashlytics Android SDK/%s"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getCrashlyticsVersion()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/E;->n:Ljava/lang/String;

    .line 256
    const/16 v0, 0x8

    iput v0, p0, Lcom/crashlytics/android/E;->i:I

    .line 258
    const-string v0, "Checking for previous crash marker."

    invoke-static {v0}, Lcom/crashlytics/android/av;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->h()Ljava/io/File;

    move-result-object v1

    const-string v2, "crash_marker"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface {p2}, Lcom/crashlytics/android/CrashlyticsListener;->crashlyticsDidDetectCrashDuringPreviousExecution()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :cond_0
    :goto_0
    sget-object v0, Lcom/crashlytics/android/n;->a:Ljava/io/FilenameFilter;

    invoke-direct {p0, v0}, Lcom/crashlytics/android/E;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcom/crashlytics/android/I;

    invoke-direct {v1, p0, v0}, Lcom/crashlytics/android/I;-><init>(Lcom/crashlytics/android/E;[Ljava/io/File;)V

    invoke-direct {p0, v1}, Lcom/crashlytics/android/E;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 264
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/E;->q:Lcom/crashlytics/android/k;

    .line 265
    if-nez p4, :cond_1

    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/crashlytics/android/E;->r:Lcom/crashlytics/android/k;

    .line 267
    new-instance v0, Lcom/crashlytics/android/O;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/O;-><init>(Lcom/crashlytics/android/E;)V

    iput-object v0, p0, Lcom/crashlytics/android/E;->p:Landroid/content/BroadcastReceiver;

    .line 274
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 276
    new-instance v1, Lcom/crashlytics/android/P;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/P;-><init>(Lcom/crashlytics/android/E;)V

    iput-object v1, p0, Lcom/crashlytics/android/E;->o:Landroid/content/BroadcastReceiver;

    .line 283
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->c()Landroid/content/ContextWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/crashlytics/android/E;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 286
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->c()Landroid/content/ContextWrapper;

    move-result-object v0

    iget-object v2, p0, Lcom/crashlytics/android/E;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 287
    iget-object v0, p0, Lcom/crashlytics/android/E;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 288
    return-void

    .line 258
    :catch_0
    move-exception v0

    const-string v1, "Exception thrown by CrashlyticsListener while notifying of previous crash."

    invoke-static {v1, v0}, Lcom/crashlytics/android/av;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 265
    :cond_1
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p4, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v0

    goto :goto_1
.end method

.method private static a(FIZIJJ)I
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1697
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/crashlytics/android/p;->b(IF)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 1700
    const/4 v1, 0x2

    invoke-static {v1, p1}, Lcom/crashlytics/android/p;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1701
    const/4 v1, 0x3

    invoke-static {v1, p2}, Lcom/crashlytics/android/p;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1702
    const/4 v1, 0x4

    invoke-static {v1, p3}, Lcom/crashlytics/android/p;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1703
    const/4 v1, 0x5

    invoke-static {v1, p4, p5}, Lcom/crashlytics/android/p;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1704
    const/4 v1, 0x6

    invoke-static {v1, p6, p7}, Lcom/crashlytics/android/p;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1706
    return v0
.end method

.method private a(ILcom/crashlytics/android/k;Lcom/crashlytics/android/k;IJJZLjava/util/Map;ILcom/crashlytics/android/k;Lcom/crashlytics/android/k;)I
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/crashlytics/android/k;",
            "Lcom/crashlytics/android/k;",
            "IJJZ",
            "Ljava/util/Map",
            "<",
            "Lcom/crashlytics/android/IdManager$DeviceIdentifierType;",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/crashlytics/android/k;",
            "Lcom/crashlytics/android/k;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1214
    const/4 v1, 0x1

    invoke-static {v1, p2}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    .line 1217
    const/4 v2, 0x3

    invoke-static {v2, p1}, Lcom/crashlytics/android/p;->e(II)I

    move-result v2

    add-int/2addr v2, v1

    .line 1218
    if-nez p3, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int/2addr v1, v2

    .line 1219
    const/4 v2, 0x5

    invoke-static {v2, p4}, Lcom/crashlytics/android/p;->d(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 1220
    const/4 v2, 0x6

    invoke-static {v2, p5, p6}, Lcom/crashlytics/android/p;->b(IJ)I

    move-result v2

    add-int/2addr v1, v2

    .line 1221
    const/4 v2, 0x7

    invoke-static {v2, p7, p8}, Lcom/crashlytics/android/p;->b(IJ)I

    move-result v2

    add-int/2addr v1, v2

    .line 1222
    const/16 v2, 0xa

    invoke-static {v2, p9}, Lcom/crashlytics/android/p;->b(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 1223
    if-eqz p10, :cond_1

    .line 1224
    invoke-interface/range {p10 .. p10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v1

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/Map$Entry;

    .line 1225
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/IdManager$DeviceIdentifierType;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/crashlytics/android/E;->a(Lcom/crashlytics/android/IdManager$DeviceIdentifierType;Ljava/lang/String;)I

    move-result v1

    .line 1226
    const/16 v2, 0xb

    invoke-static {v2}, Lcom/crashlytics/android/p;->a(I)I

    move-result v2

    invoke-static {v1}, Lcom/crashlytics/android/p;->c(I)I

    move-result v5

    add-int/2addr v2, v5

    add-int/2addr v1, v2

    add-int/2addr v1, v3

    move v3, v1

    .line 1228
    goto :goto_1

    .line 1218
    :cond_0
    const/4 v1, 0x4

    invoke-static {v1, p3}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v1

    goto :goto_0

    :cond_1
    move v3, v1

    .line 1230
    :cond_2
    const/16 v1, 0xc

    move/from16 v0, p11

    invoke-static {v1, v0}, Lcom/crashlytics/android/p;->d(II)I

    move-result v1

    add-int v2, v3, v1

    .line 1231
    if-nez p12, :cond_3

    const/4 v1, 0x0

    :goto_2
    add-int/2addr v2, v1

    .line 1232
    if-nez p13, :cond_4

    const/4 v1, 0x0

    :goto_3
    add-int/2addr v1, v2

    .line 1234
    return v1

    .line 1231
    :cond_3
    const/16 v1, 0xd

    move-object/from16 v0, p12

    invoke-static {v1, v0}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v1

    goto :goto_2

    .line 1232
    :cond_4
    const/16 v1, 0xe

    move-object/from16 v0, p13

    invoke-static {v1, v0}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v1

    goto :goto_3
.end method

.method private static a(Lcom/crashlytics/android/IdManager$DeviceIdentifierType;Ljava/lang/String;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1205
    const/4 v0, 0x1

    iget v1, p0, Lcom/crashlytics/android/IdManager$DeviceIdentifierType;->protobufIndex:I

    invoke-static {v0, v1}, Lcom/crashlytics/android/p;->e(II)I

    move-result v0

    .line 1206
    const/4 v1, 0x2

    invoke-static {p1}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1208
    return v0
.end method

.method private static a(Ljava/lang/StackTraceElement;Z)I
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 1530
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1534
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v3, v0

    invoke-static {v5, v3, v4}, Lcom/crashlytics/android/p;->b(IJ)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 1539
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v3

    add-int/2addr v0, v3

    .line 1543
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1544
    const/4 v3, 0x3

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v3

    add-int/2addr v0, v3

    .line 1547
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1548
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    if-lez v3, :cond_3

    .line 1550
    const/4 v3, 0x4

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Lcom/crashlytics/android/p;->b(IJ)I

    move-result v3

    add-int/2addr v0, v3

    move v3, v0

    .line 1553
    :goto_1
    const/4 v4, 0x5

    if-eqz p1, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v4, v0}, Lcom/crashlytics/android/p;->d(II)I

    move-result v0

    add-int/2addr v0, v3

    .line 1555
    return v0

    .line 1536
    :cond_1
    const-wide/16 v3, 0x0

    invoke-static {v5, v3, v4}, Lcom/crashlytics/android/p;->b(IJ)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1553
    goto :goto_2

    :cond_3
    move v3, v0

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1690
    const/4 v0, 0x1

    invoke-static {p0}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v0

    .line 1691
    const/4 v1, 0x2

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-static {p1}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1692
    return v0
.end method

.method private a(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/util/Map;)I
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Thread;",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1636
    invoke-direct {p0, p1, p2}, Lcom/crashlytics/android/E;->b(Ljava/lang/Thread;Ljava/lang/Throwable;)I

    move-result v0

    .line 1639
    invoke-static {v3}, Lcom/crashlytics/android/p;->a(I)I

    move-result v1

    invoke-static {v0}, Lcom/crashlytics/android/p;->c(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x0

    .line 1642
    if-eqz p3, :cond_0

    .line 1643
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 1644
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/crashlytics/android/E;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1645
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/crashlytics/android/p;->a(I)I

    move-result v1

    invoke-static {v0}, Lcom/crashlytics/android/p;->c(I)I

    move-result v5

    add-int/2addr v1, v5

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    move v2, v0

    .line 1647
    goto :goto_0

    :cond_0
    move v2, v0

    .line 1651
    :cond_1
    iget-object v0, p0, Lcom/crashlytics/android/E;->t:Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v0, :cond_2

    .line 1652
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/crashlytics/android/E;->t:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v4, 0x64

    if-eq v0, v4, :cond_3

    move v0, v3

    :goto_1
    invoke-static {v1, v0}, Lcom/crashlytics/android/p;->b(IZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 1655
    :cond_2
    const/4 v0, 0x4

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->c()Landroid/content/ContextWrapper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v0, v1}, Lcom/crashlytics/android/p;->d(II)I

    move-result v0

    add-int/2addr v0, v2

    .line 1658
    return v0

    .line 1652
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1500
    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 1503
    const/4 v1, 0x2

    invoke-static {v1, p3}, Lcom/crashlytics/android/p;->d(II)I

    move-result v1

    add-int/2addr v1, v0

    .line 1504
    array-length v2, p2

    .line 1506
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 1507
    aget-object v3, p2, v0

    invoke-static {v3, p4}, Lcom/crashlytics/android/E;->a(Ljava/lang/StackTraceElement;Z)I

    move-result v3

    .line 1508
    const/4 v4, 0x3

    invoke-static {v4}, Lcom/crashlytics/android/p;->a(I)I

    move-result v4

    invoke-static {v3}, Lcom/crashlytics/android/p;->c(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 1506
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1512
    :cond_0
    return v1
.end method

.method private a(Ljava/lang/Throwable;I)I
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 1715
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 1720
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    .line 1721
    if-eqz v2, :cond_0

    .line 1722
    const/4 v3, 0x3

    invoke-static {v2}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1725
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    array-length v5, v4

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v3, v4, v2

    .line 1726
    invoke-static {v3, v8}, Lcom/crashlytics/android/E;->a(Ljava/lang/StackTraceElement;Z)I

    move-result v3

    .line 1727
    const/4 v6, 0x4

    invoke-static {v6}, Lcom/crashlytics/android/p;->a(I)I

    move-result v6

    invoke-static {v3}, Lcom/crashlytics/android/p;->c(I)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    add-int/2addr v3, v0

    .line 1725
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_0

    .line 1733
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 1734
    if-eqz v2, :cond_2

    .line 1735
    const/16 v3, 0x8

    if-ge p2, v3, :cond_3

    .line 1736
    add-int/lit8 v1, p2, 0x1

    invoke-direct {p0, v2, v1}, Lcom/crashlytics/android/E;->a(Ljava/lang/Throwable;I)I

    move-result v1

    .line 1737
    const/4 v2, 0x6

    invoke-static {v2}, Lcom/crashlytics/android/p;->a(I)I

    move-result v2

    invoke-static {v1}, Lcom/crashlytics/android/p;->c(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1752
    :cond_2
    :goto_1
    return v0

    .line 1743
    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    .line 1744
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 1745
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1748
    :cond_4
    const/4 v2, 0x7

    invoke-static {v2, v1}, Lcom/crashlytics/android/p;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method private a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1845
    :try_start_0
    iget-object v1, p0, Lcom/crashlytics/android/E;->s:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1851
    :goto_0
    return-object v0

    .line 1847
    :catch_0
    move-exception v1

    const-string v1, "Executor is shut down because we\'re handling a fatal crash."

    invoke-static {v1}, Lcom/crashlytics/android/av;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 1849
    :catch_1
    move-exception v1

    .line 1850
    const-string v2, "Failed to execute task."

    invoke-static {v2, v1}, Lcom/crashlytics/android/av;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static a(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 679
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 680
    const/4 v1, 0x0

    const-string v2, "BeginSession"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1867
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/E;->s:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/crashlytics/android/J;

    invoke-direct {v1, p0, p1}, Lcom/crashlytics/android/J;-><init>(Lcom/crashlytics/android/E;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1879
    :goto_0
    return-object v0

    .line 1878
    :catch_0
    move-exception v0

    const-string v0, "Executor is shut down because we\'re handling a fatal crash."

    invoke-static {v0}, Lcom/crashlytics/android/av;->b(Ljava/lang/String;)V

    .line 1879
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/crashlytics/android/E;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/crashlytics/android/E;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic a(Lcom/crashlytics/android/E;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 62
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/crashlytics/android/E;->k:Ljava/io/File;

    const-string v3, "crash_marker"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    invoke-direct {p0}, Lcom/crashlytics/android/E;->j()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v1, Lcom/crashlytics/android/n;

    iget-object v3, p0, Lcom/crashlytics/android/E;->k:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "SessionCrash"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lcom/crashlytics/android/n;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v1}, Lcom/crashlytics/android/p;->a(Ljava/io/OutputStream;)Lcom/crashlytics/android/p;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :try_start_2
    const-string v2, "crash"

    invoke-direct {p0, v0, p2, p3, v2}, Lcom/crashlytics/android/E;->a(Lcom/crashlytics/android/p;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_0
    const-string v2, "Failed to flush to session begin file."

    invoke-static {v0, v2}, Lcom/crashlytics/android/av;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v0, "Failed to close fatal exception file output stream."

    invoke-static {v1, v0}, Lcom/crashlytics/android/av;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0}, Lcom/crashlytics/android/E;->i()V

    invoke-direct {p0}, Lcom/crashlytics/android/E;->h()V

    iget-object v0, p0, Lcom/crashlytics/android/E;->k:Ljava/io/File;

    sget-object v1, Lcom/crashlytics/android/E;->a:Ljava/io/FilenameFilter;

    const/4 v2, 0x4

    sget-object v3, Lcom/crashlytics/android/E;->c:Ljava/util/Comparator;

    invoke-static {v0, v1, v2, v3}, Lcom/crashlytics/android/av;->a(Ljava/io/File;Ljava/io/FilenameFilter;ILjava/util/Comparator;)V

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/Crashlytics;->k()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/crashlytics/android/E;->l()V

    :cond_0
    return-void

    :cond_1
    :try_start_3
    const-string v1, "Tried to write a fatal exception while no session was open."

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/crashlytics/android/av;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_2
    :try_start_4
    const-string v3, "An error occurred in the fatal exception logger"

    invoke-static {v3, v0}, Lcom/crashlytics/android/av;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0, v2}, Lcom/crashlytics/android/E;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const-string v0, "Failed to flush to session begin file."

    invoke-static {v1, v0}, Lcom/crashlytics/android/av;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v0, "Failed to close fatal exception file output stream."

    invoke-static {v2, v0}, Lcom/crashlytics/android/av;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_3
    const-string v3, "Failed to flush to session begin file."

    invoke-static {v1, v3}, Lcom/crashlytics/android/av;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v1, "Failed to close fatal exception file output stream."

    invoke-static {v2, v1}, Lcom/crashlytics/android/av;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3

    :catchall_2
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    :catch_2
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2
.end method

.method static synthetic a(Lcom/crashlytics/android/E;[Ljava/io/File;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/crashlytics/android/E;->l:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/E;->l:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v2, p1, v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Stashing invalid temp file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/crashlytics/android/av;->b(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/crashlytics/android/E;->l:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not rename temp file "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/crashlytics/android/av;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static a(Lcom/crashlytics/android/n;)V
    .locals 2
    .parameter

    .prologue
    .line 765
    if-eqz p0, :cond_0

    .line 767
    :try_start_0
    invoke-virtual {p0}, Lcom/crashlytics/android/n;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    :cond_0
    :goto_0
    return-void

    .line 768
    :catch_0
    move-exception v0

    .line 769
    const-string v1, "Error closing session file stream in the presence of an exception"

    invoke-static {v1, v0}, Lcom/crashlytics/android/av;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Lcom/crashlytics/android/p;ILjava/lang/StackTraceElement;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1560
    invoke-virtual {p1, p2, v5}, Lcom/crashlytics/android/p;->g(II)V

    .line 1561
    invoke-static {p3, p4}, Lcom/crashlytics/android/E;->a(Ljava/lang/StackTraceElement;Z)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/crashlytics/android/p;->b(I)V

    .line 1563
    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1566
    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v4, v2, v3}, Lcom/crashlytics/android/p;->a(IJ)V

    .line 1571
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v2

    invoke-virtual {p1, v5, v2}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V

    .line 1573
    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1574
    const/4 v2, 0x3

    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V

    .line 1577
    :cond_0
    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1580
    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    if-lez v2, :cond_1

    .line 1581
    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/crashlytics/android/p;->a(IJ)V

    .line 1588
    :cond_1
    const/4 v2, 0x5

    if-eqz p4, :cond_3

    :goto_1
    invoke-virtual {p1, v2, v0}, Lcom/crashlytics/android/p;->a(II)V

    .line 1589
    return-void

    .line 1568
    :cond_2
    const-wide/16 v2, 0x0

    invoke-virtual {p1, v4, v2, v3}, Lcom/crashlytics/android/p;->a(IJ)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1588
    goto :goto_1
.end method

.method private static a(Lcom/crashlytics/android/p;Ljava/io/File;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1241
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1243
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 1244
    long-to-int v0, v0

    new-array v3, v0, [B

    .line 1249
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1251
    const/4 v0, 0x0

    .line 1254
    :goto_0
    :try_start_1
    array-length v2, v3

    if-ge v0, v2, :cond_0

    array-length v2, v3

    sub-int/2addr v2, v0

    invoke-virtual {v1, v3, v0, v2}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-ltz v2, :cond_0

    .line 1255
    add-int/2addr v0, v2

    goto :goto_0

    .line 1258
    :cond_0
    const-string v0, "Failed to close file input stream."

    invoke-static {v1, v0}, Lcom/crashlytics/android/av;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1261
    invoke-virtual {p0, v3}, Lcom/crashlytics/android/p;->a([B)V

    .line 1265
    :goto_1
    return-void

    .line 1258
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    const-string v2, "Failed to close file input stream."

    invoke-static {v1, v2}, Lcom/crashlytics/android/av;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 1263
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tried to include a file that doesn\'t exist: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/crashlytics/android/av;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1258
    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method private a(Lcom/crashlytics/android/p;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 789
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "SessionUser"

    aput-object v0, v2, v1

    const/4 v0, 0x1

    const-string v3, "SessionApp"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "SessionOS"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "SessionDevice"

    aput-object v3, v2, v0

    .line 791
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 792
    new-instance v5, Lcom/crashlytics/android/U;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/crashlytics/android/U;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/crashlytics/android/E;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    .line 794
    array-length v6, v5

    if-nez v6, :cond_0

    .line 795
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Can\'t find "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " data for session ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/crashlytics/android/av;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 791
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 797
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Collecting "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " data for session ID "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/crashlytics/android/av;->b(Ljava/lang/String;)V

    .line 798
    aget-object v4, v5, v1

    invoke-static {p1, v4}, Lcom/crashlytics/android/E;->a(Lcom/crashlytics/android/p;Ljava/io/File;)V

    goto :goto_1

    .line 801
    :cond_1
    return-void
.end method

.method private a(Lcom/crashlytics/android/p;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1409
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/p;->g(II)V

    .line 1410
    invoke-direct {p0, p2, p3}, Lcom/crashlytics/android/E;->b(Ljava/lang/Thread;Ljava/lang/Throwable;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/crashlytics/android/p;->b(I)V

    .line 1412
    iget-object v3, p0, Lcom/crashlytics/android/E;->z:[Ljava/lang/StackTraceElement;

    const/4 v4, 0x4

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/crashlytics/android/E;->a(Lcom/crashlytics/android/p;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)V

    .line 1416
    iget-object v0, p0, Lcom/crashlytics/android/E;->x:[Ljava/lang/Thread;

    array-length v7, v0

    .line 1417
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v7, :cond_0

    .line 1418
    iget-object v0, p0, Lcom/crashlytics/android/E;->x:[Ljava/lang/Thread;

    aget-object v2, v0, v6

    .line 1419
    iget-object v0, p0, Lcom/crashlytics/android/E;->y:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/StackTraceElement;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/crashlytics/android/E;->a(Lcom/crashlytics/android/p;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)V

    .line 1417
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 1422
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/crashlytics/android/E;->a(Lcom/crashlytics/android/p;Ljava/lang/Throwable;II)V

    .line 1424
    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/p;->g(II)V

    .line 1425
    invoke-static {}, Lcom/crashlytics/android/E;->p()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/crashlytics/android/p;->b(I)V

    .line 1426
    const/4 v0, 0x1

    sget-object v1, Lcom/crashlytics/android/E;->f:Lcom/crashlytics/android/k;

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V

    .line 1427
    const/4 v0, 0x2

    sget-object v1, Lcom/crashlytics/android/E;->f:Lcom/crashlytics/android/k;

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V

    .line 1428
    const/4 v0, 0x3

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/crashlytics/android/p;->a(IJ)V

    .line 1430
    const/4 v0, 0x4

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/p;->g(II)V

    .line 1431
    invoke-direct {p0}, Lcom/crashlytics/android/E;->o()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/crashlytics/android/p;->b(I)V

    .line 1432
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/crashlytics/android/p;->a(IJ)V

    .line 1433
    const/4 v0, 0x2

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/crashlytics/android/p;->a(IJ)V

    .line 1434
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/crashlytics/android/E;->q:Lcom/crashlytics/android/k;

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V

    .line 1435
    iget-object v0, p0, Lcom/crashlytics/android/E;->r:Lcom/crashlytics/android/k;

    if-eqz v0, :cond_1

    .line 1436
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/crashlytics/android/E;->r:Lcom/crashlytics/android/k;

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V

    .line 1438
    :cond_1
    return-void
.end method

.method private a(Lcom/crashlytics/android/p;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 19
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1328
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long v13, v3, v5

    .line 1329
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->c()Landroid/content/ContextWrapper;

    move-result-object v3

    invoke-static {v3}, Lcom/crashlytics/android/av;->a(Landroid/content/Context;)F

    move-result v3

    .line 1330
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/crashlytics/android/E;->w:Z

    invoke-static {v4}, Lcom/crashlytics/android/av;->a(Z)I

    move-result v4

    .line 1331
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->c()Landroid/content/ContextWrapper;

    move-result-object v5

    invoke-static {v5}, Lcom/crashlytics/android/av;->b(Landroid/content/Context;)Z

    move-result v5

    .line 1332
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->c()Landroid/content/ContextWrapper;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    .line 1333
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v7

    .line 1334
    new-instance v9, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1335
    invoke-virtual {v9}, Landroid/os/StatFs;->getBlockCount()I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v9}, Landroid/os/StatFs;->getBlockSize()I

    move-result v12

    int-to-long v15, v12

    mul-long/2addr v10, v15

    invoke-virtual {v9}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v12

    int-to-long v15, v12

    invoke-virtual {v9}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v0, v9

    move-wide/from16 v17, v0

    mul-long v15, v15, v17

    sub-long v9, v10, v15

    .line 1338
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->d()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->c()Landroid/content/ContextWrapper;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/crashlytics/android/av;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/crashlytics/android/E;->t:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1339
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    .line 1341
    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/Thread;

    invoke-interface {v12, v11}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/Thread;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/crashlytics/android/E;->x:[Ljava/lang/Thread;

    .line 1343
    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/crashlytics/android/E;->y:Ljava/util/List;

    .line 1344
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Thread;

    .line 1345
    invoke-virtual {v11}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v15

    .line 1346
    const-class v11, Ljava/lang/StackTraceElement;

    array-length v0, v15

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v11, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/StackTraceElement;

    .line 1347
    const/16 v16, 0x0

    const/16 v17, 0x0

    array-length v0, v15

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v15, v0, v11, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1349
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/crashlytics/android/E;->y:Ljava/util/List;

    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1352
    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v11

    array-length v12, v11

    .line 1353
    const-class v11, Ljava/lang/StackTraceElement;

    invoke-static {v11, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/StackTraceElement;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/crashlytics/android/E;->z:[Ljava/lang/StackTraceElement;

    .line 1354
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v11

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/crashlytics/android/E;->z:[Ljava/lang/StackTraceElement;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v11, v15, v0, v1, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1356
    invoke-direct/range {p0 .. p0}, Lcom/crashlytics/android/E;->f()Lcom/crashlytics/android/k;

    move-result-object v15

    .line 1358
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/crashlytics/android/E;->u:Ljava/io/RandomAccessFile;

    .line 1359
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/crashlytics/android/E;->v:Z

    .line 1361
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->c()Landroid/content/ContextWrapper;

    move-result-object v11

    const-string v12, "com.crashlytics.CollectCustomKeys"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v11, v12, v0}, Lcom/crashlytics/android/av;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_5

    .line 1363
    new-instance v11, Ljava/util/TreeMap;

    invoke-direct {v11}, Ljava/util/TreeMap;-><init>()V

    .line 1374
    :goto_1
    const/16 v12, 0xa

    const/16 v16, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v12, v1}, Lcom/crashlytics/android/p;->g(II)V

    .line 1375
    const/4 v12, 0x1

    invoke-static {v12, v13, v14}, Lcom/crashlytics/android/p;->b(IJ)I

    move-result v12

    add-int/lit8 v12, v12, 0x0

    const/16 v16, 0x2

    invoke-static/range {p4 .. p4}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v16

    add-int v12, v12, v16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v11}, Lcom/crashlytics/android/E;->a(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/util/Map;)I

    move-result v16

    const/16 v17, 0x3

    invoke-static/range {v17 .. v17}, Lcom/crashlytics/android/p;->a(I)I

    move-result v17

    invoke-static/range {v16 .. v16}, Lcom/crashlytics/android/p;->c(I)I

    move-result v18

    add-int v17, v17, v18

    add-int v16, v16, v17

    add-int v12, v12, v16

    invoke-static/range {v3 .. v10}, Lcom/crashlytics/android/E;->a(FIZIJJ)I

    move-result v16

    const/16 v17, 0x5

    invoke-static/range {v17 .. v17}, Lcom/crashlytics/android/p;->a(I)I

    move-result v17

    invoke-static/range {v16 .. v16}, Lcom/crashlytics/android/p;->c(I)I

    move-result v18

    add-int v17, v17, v18

    add-int v16, v16, v17

    add-int v12, v12, v16

    if-eqz v15, :cond_1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v0, v15}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v16

    const/16 v17, 0x6

    invoke-static/range {v17 .. v17}, Lcom/crashlytics/android/p;->a(I)I

    move-result v17

    invoke-static/range {v16 .. v16}, Lcom/crashlytics/android/p;->c(I)I

    move-result v18

    add-int v17, v17, v18

    add-int v16, v16, v17

    add-int v12, v12, v16

    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/crashlytics/android/p;->b(I)V

    .line 1378
    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14}, Lcom/crashlytics/android/p;->a(IJ)V

    .line 1379
    const/4 v12, 0x2

    invoke-static/range {p4 .. p4}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V

    .line 1381
    const/4 v12, 0x3

    const/4 v13, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lcom/crashlytics/android/p;->g(II)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v11}, Lcom/crashlytics/android/E;->a(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/util/Map;)I

    move-result v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/crashlytics/android/p;->b(I)V

    invoke-direct/range {p0 .. p3}, Lcom/crashlytics/android/E;->a(Lcom/crashlytics/android/p;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    if-eqz v11, :cond_2

    invoke-interface {v11}, Ljava/util/Map;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/crashlytics/android/E;->a(Lcom/crashlytics/android/p;Ljava/util/Map;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/crashlytics/android/E;->t:Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v11, :cond_3

    const/4 v12, 0x3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/crashlytics/android/E;->t:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v11, v11, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v13, 0x64

    if-eq v11, v13, :cond_6

    const/4 v11, 0x1

    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v11}, Lcom/crashlytics/android/p;->a(IZ)V

    :cond_3
    const/4 v11, 0x4

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->c()Landroid/content/ContextWrapper;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Lcom/crashlytics/android/p;->a(II)V

    .line 1382
    const/4 v11, 0x5

    const/4 v12, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Lcom/crashlytics/android/p;->g(II)V

    invoke-static/range {v3 .. v10}, Lcom/crashlytics/android/E;->a(FIZIJJ)I

    move-result v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/crashlytics/android/p;->b(I)V

    const/4 v11, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v3}, Lcom/crashlytics/android/p;->a(IF)V

    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/crashlytics/android/p;->c(II)V

    const/4 v3, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Lcom/crashlytics/android/p;->a(IZ)V

    const/4 v3, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v6}, Lcom/crashlytics/android/p;->a(II)V

    const/4 v3, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v7, v8}, Lcom/crashlytics/android/p;->a(IJ)V

    const/4 v3, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v9, v10}, Lcom/crashlytics/android/p;->a(IJ)V

    .line 1384
    if-eqz v15, :cond_4

    const/4 v3, 0x6

    const/4 v4, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/crashlytics/android/p;->g(II)V

    const/4 v3, 0x1

    invoke-static {v3, v15}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/crashlytics/android/p;->b(I)V

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v15}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V

    .line 1385
    :cond_4
    return-void

    .line 1365
    :cond_5
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v11

    invoke-virtual {v11}, Lcom/crashlytics/android/Crashlytics;->a()Ljava/util/Map;

    move-result-object v12

    .line 1366
    if-eqz v12, :cond_7

    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v11

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v11, v0, :cond_7

    .line 1370
    new-instance v11, Ljava/util/TreeMap;

    invoke-direct {v11, v12}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    goto/16 :goto_1

    .line 1381
    :cond_6
    const/4 v11, 0x0

    goto/16 :goto_2

    :cond_7
    move-object v11, v12

    goto/16 :goto_1
.end method

.method private a(Lcom/crashlytics/android/p;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1517
    invoke-virtual {p1, v1, v2}, Lcom/crashlytics/android/p;->g(II)V

    .line 1518
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/crashlytics/android/E;->a(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I

    move-result v0

    .line 1519
    invoke-virtual {p1, v0}, Lcom/crashlytics/android/p;->b(I)V

    .line 1520
    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V

    .line 1521
    invoke-virtual {p1, v2, p4}, Lcom/crashlytics/android/p;->a(II)V

    .line 1523
    array-length v1, p3

    .line 1524
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1525
    const/4 v2, 0x3

    aget-object v3, p3, v0

    invoke-direct {p0, p1, v2, v3, p5}, Lcom/crashlytics/android/E;->a(Lcom/crashlytics/android/p;ILjava/lang/StackTraceElement;Z)V

    .line 1524
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1527
    :cond_0
    return-void
.end method

.method private a(Lcom/crashlytics/android/p;Ljava/lang/Throwable;II)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 1468
    const/4 v1, 0x2

    invoke-virtual {p1, p4, v1}, Lcom/crashlytics/android/p;->g(II)V

    .line 1469
    invoke-direct {p0, p2, v6}, Lcom/crashlytics/android/E;->a(Ljava/lang/Throwable;I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/crashlytics/android/p;->b(I)V

    .line 1471
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v1

    invoke-virtual {p1, v6, v1}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V

    .line 1472
    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    .line 1473
    if-eqz v1, :cond_0

    .line 1474
    const/4 v2, 0x3

    invoke-static {v1}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V

    .line 1477
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 1478
    const/4 v5, 0x4

    invoke-direct {p0, p1, v5, v4, v6}, Lcom/crashlytics/android/E;->a(Lcom/crashlytics/android/p;ILjava/lang/StackTraceElement;Z)V

    .line 1477
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1481
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 1482
    if-eqz v1, :cond_2

    .line 1483
    const/16 v2, 0x8

    if-ge p3, v2, :cond_3

    .line 1484
    add-int/lit8 v0, p3, 0x1

    const/4 v2, 0x6

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/crashlytics/android/E;->a(Lcom/crashlytics/android/p;Ljava/lang/Throwable;II)V

    .line 1496
    :cond_2
    :goto_1
    return-void

    .line 1489
    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 1490
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 1491
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1493
    :cond_4
    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/crashlytics/android/p;->a(II)V

    goto :goto_1
.end method

.method private a(Lcom/crashlytics/android/p;Ljava/util/Map;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/crashlytics/android/p;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 1443
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1444
    invoke-virtual {p1, v4, v4}, Lcom/crashlytics/android/p;->g(II)V

    .line 1445
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/crashlytics/android/E;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/crashlytics/android/p;->b(I)V

    .line 1447
    const/4 v2, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V

    .line 1448
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1449
    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-static {v0}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V

    goto :goto_0

    .line 1451
    :cond_1
    return-void
.end method

.method private a(Lcom/crashlytics/android/p;[Ljava/io/File;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 775
    sget-object v1, Lcom/crashlytics/android/av;->a:Ljava/util/Comparator;

    invoke-static {p2, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 777
    array-length v2, p2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p2, v1

    .line 779
    :try_start_0
    const-string v3, "Found Non Fatal for session ID %s in %s "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/crashlytics/android/av;->b(Ljava/lang/String;)V

    .line 781
    invoke-static {p1, v0}, Lcom/crashlytics/android/E;->a(Lcom/crashlytics/android/p;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 777
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 782
    :catch_0
    move-exception v0

    .line 783
    const-string v3, "Error writting non-fatal to session."

    invoke-static {v3, v0}, Lcom/crashlytics/android/av;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 786
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 807
    new-instance v0, Lcom/crashlytics/android/V;

    invoke-direct {v0, p1}, Lcom/crashlytics/android/V;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/E;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 808
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 807
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 810
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/crashlytics/android/E;->k:Ljava/io/File;

    new-instance v1, Lcom/crashlytics/android/U;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SessionEvent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/crashlytics/android/U;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/crashlytics/android/E;->c:Ljava/util/Comparator;

    invoke-static {v0, v1, p2, v2}, Lcom/crashlytics/android/av;->a(Ljava/io/File;Ljava/io/FilenameFilter;ILjava/util/Comparator;)V

    .line 1279
    return-void
.end method

.method private a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 992
    if-eqz p2, :cond_0

    .line 993
    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p1, v1}, Lcom/crashlytics/android/E;->a(Ljava/lang/Throwable;Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v0, "Failed to close stack trace writer."

    invoke-static {v1, v0}, Lcom/crashlytics/android/av;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 995
    :cond_0
    :goto_0
    return-void

    .line 993
    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_2
    const-string v2, "Failed to create PrintWriter"

    invoke-static {v2, v0}, Lcom/crashlytics/android/av;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v0, "Failed to close stack trace writer."

    invoke-static {v1, v0}, Lcom/crashlytics/android/av;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    const-string v2, "Failed to close stack trace writer."

    invoke-static {v1, v2}, Lcom/crashlytics/android/av;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static a(Ljava/lang/Throwable;Ljava/io/Writer;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1025
    const/4 v0, 0x1

    move v3, v0

    .line 1027
    :goto_0
    if-eqz p0, :cond_4

    .line 1028
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1029
    :goto_1
    if-eqz v0, :cond_1

    move-object v2, v0

    .line 1031
    :goto_2
    if-eqz v3, :cond_2

    const-string v0, ""

    .line 1032
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1036
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_4
    if-ge v0, v3, :cond_3

    aget-object v4, v2, v0

    .line 1037
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\tat "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1036
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1028
    :cond_0
    const-string v2, "(\r\n|\n|\u000c)"

    const-string v4, " "

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1029
    :cond_1
    const-string v0, ""

    move-object v2, v0

    goto :goto_2

    .line 1031
    :cond_2
    const-string v0, "Caused by: "

    goto :goto_3

    .line 1040
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    move v3, v1

    .line 1041
    goto :goto_0

    .line 1042
    :catch_0
    move-exception v0

    .line 1043
    const-string v1, "Could not write stack trace"

    invoke-static {v1, v0}, Lcom/crashlytics/android/av;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1045
    :cond_4
    return-void
.end method

.method static synthetic a(Lcom/crashlytics/android/E;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/crashlytics/android/E;->w:Z

    return p1
.end method

.method private a(Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 835
    iget-object v0, p0, Lcom/crashlytics/android/E;->k:Ljava/io/File;

    invoke-virtual {v0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    :cond_0
    return-object v0
.end method

.method private b(Ljava/lang/Thread;Ljava/lang/Throwable;)I
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x3

    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 1662
    iget-object v0, p0, Lcom/crashlytics/android/E;->z:[Ljava/lang/StackTraceElement;

    const/4 v1, 0x4

    invoke-direct {p0, p1, v0, v1, v7}, Lcom/crashlytics/android/E;->a(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I

    move-result v0

    .line 1665
    invoke-static {v7}, Lcom/crashlytics/android/p;->a(I)I

    move-result v1

    invoke-static {v0}, Lcom/crashlytics/android/p;->c(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x0

    .line 1667
    iget-object v1, p0, Lcom/crashlytics/android/E;->x:[Ljava/lang/Thread;

    array-length v4, v1

    move v1, v2

    move v3, v0

    .line 1668
    :goto_0
    if-ge v1, v4, :cond_0

    .line 1669
    iget-object v0, p0, Lcom/crashlytics/android/E;->x:[Ljava/lang/Thread;

    aget-object v5, v0, v1

    .line 1670
    iget-object v0, p0, Lcom/crashlytics/android/E;->y:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    invoke-direct {p0, v5, v0, v2, v2}, Lcom/crashlytics/android/E;->a(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I

    move-result v0

    .line 1671
    invoke-static {v7}, Lcom/crashlytics/android/p;->a(I)I

    move-result v5

    invoke-static {v0}, Lcom/crashlytics/android/p;->c(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    add-int/2addr v3, v0

    .line 1668
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1675
    :cond_0
    invoke-direct {p0, p2, v7}, Lcom/crashlytics/android/E;->a(Ljava/lang/Throwable;I)I

    move-result v0

    .line 1676
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/crashlytics/android/p;->a(I)I

    move-result v1

    invoke-static {v0}, Lcom/crashlytics/android/p;->c(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    .line 1679
    invoke-static {}, Lcom/crashlytics/android/E;->p()I

    move-result v1

    .line 1680
    invoke-static {v8}, Lcom/crashlytics/android/p;->a(I)I

    move-result v2

    invoke-static {v1}, Lcom/crashlytics/android/p;->c(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1682
    invoke-direct {p0}, Lcom/crashlytics/android/E;->o()I

    move-result v1

    .line 1683
    invoke-static {v8}, Lcom/crashlytics/android/p;->a(I)I

    move-result v2

    invoke-static {v1}, Lcom/crashlytics/android/p;->c(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1686
    return v0
.end method

.method private static b(Ljava/lang/String;)Lcom/crashlytics/android/k;
    .locals 1
    .parameter

    .prologue
    .line 1133
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1895
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/E;->s:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/crashlytics/android/K;

    invoke-direct {v1, p0, p1}, Lcom/crashlytics/android/K;-><init>(Lcom/crashlytics/android/E;Ljava/util/concurrent/Callable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1908
    :goto_0
    return-object v0

    .line 1907
    :catch_0
    move-exception v0

    const-string v0, "Executor is shut down because we\'re handling a fatal crash."

    invoke-static {v0}, Lcom/crashlytics/android/av;->b(Ljava/lang/String;)V

    .line 1908
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/crashlytics/android/E;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/crashlytics/android/E;->i()V

    return-void
.end method

.method static synthetic b(Lcom/crashlytics/android/E;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Lcom/crashlytics/android/E;->j()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Crashlytics is logging non-fatal exception \""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" from thread "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/av;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/crashlytics/android/E;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-static {v0}, Lcom/crashlytics/android/av;->b(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "SessionEvent"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/crashlytics/android/n;

    iget-object v4, p0, Lcom/crashlytics/android/E;->k:Ljava/io/File;

    invoke-direct {v2, v4, v0}, Lcom/crashlytics/android/n;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v2}, Lcom/crashlytics/android/p;->a(Ljava/io/OutputStream;)Lcom/crashlytics/android/p;

    move-result-object v1

    const-string v0, "error"

    invoke-direct {p0, v1, p2, p3, v0}, Lcom/crashlytics/android/E;->a(Lcom/crashlytics/android/p;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const-string v0, "Failed to flush to non-fatal file."

    invoke-static {v1, v0}, Lcom/crashlytics/android/av;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v0, "Failed to close non-fatal file output stream."

    invoke-static {v2, v0}, Lcom/crashlytics/android/av;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    :goto_0
    const/16 v0, 0x40

    :try_start_2
    invoke-direct {p0, v3, v0}, Lcom/crashlytics/android/E;->a(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    move-object v2, v1

    :goto_2
    :try_start_3
    const-string v4, "An error occurred in the non-fatal exception logger"

    invoke-static {v4, v0}, Lcom/crashlytics/android/av;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0, v2}, Lcom/crashlytics/android/E;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v0, "Failed to flush to non-fatal file."

    invoke-static {v1, v0}, Lcom/crashlytics/android/av;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v0, "Failed to close non-fatal file output stream."

    invoke-static {v2, v0}, Lcom/crashlytics/android/av;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_3
    const-string v3, "Failed to flush to non-fatal file."

    invoke-static {v1, v3}, Lcom/crashlytics/android/av;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v1, "Failed to close non-fatal file output stream."

    invoke-static {v2, v1}, Lcom/crashlytics/android/av;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    const-string v1, "An error occurred when trimming non-fatal files."

    invoke-static {v1, v0}, Lcom/crashlytics/android/av;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    const-string v0, "Tried to write a non-fatal exception while no session was open."

    invoke-static {v0, v1}, Lcom/crashlytics/android/av;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method static synthetic c(Lcom/crashlytics/android/E;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/crashlytics/android/E;->h()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 18
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1140
    const/4 v3, 0x0

    .line 1141
    const/4 v2, 0x0

    .line 1143
    :try_start_0
    new-instance v16, Lcom/crashlytics/android/n;

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->h()Ljava/io/File;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SessionDevice"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-direct {v0, v1, v4}, Lcom/crashlytics/android/n;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1144
    :try_start_1
    invoke-static/range {v16 .. v16}, Lcom/crashlytics/android/p;->a(Ljava/io/OutputStream;)Lcom/crashlytics/android/p;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v15

    .line 1146
    :try_start_2
    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1148
    invoke-static {}, Lcom/crashlytics/android/av;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ARMV7"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x6

    .line 1150
    :goto_0
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v3}, Lcom/crashlytics/android/E;->b(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v4

    .line 1151
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v3}, Lcom/crashlytics/android/E;->b(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v13

    .line 1152
    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {v3}, Lcom/crashlytics/android/E;->b(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v14

    .line 1154
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v5

    .line 1155
    invoke-static {}, Lcom/crashlytics/android/av;->c()J

    move-result-wide v6

    .line 1156
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v3

    int-to-long v8, v3

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v10, v1

    mul-long/2addr v8, v10

    .line 1157
    invoke-static {}, Lcom/crashlytics/android/av;->d()Z

    move-result v10

    .line 1159
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crashlytics/android/Crashlytics;->b()Lcom/crashlytics/android/IdManager;

    move-result-object v1

    .line 1160
    invoke-virtual {v1}, Lcom/crashlytics/android/IdManager;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v3

    .line 1162
    invoke-virtual {v1}, Lcom/crashlytics/android/IdManager;->f()Ljava/util/Map;

    move-result-object v11

    .line 1164
    invoke-static {}, Lcom/crashlytics/android/av;->f()I

    move-result v12

    .line 1166
    const/16 v1, 0x9

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v15, v1, v0}, Lcom/crashlytics/android/p;->g(II)V

    move-object/from16 v1, p0

    .line 1168
    invoke-direct/range {v1 .. v14}, Lcom/crashlytics/android/E;->a(ILcom/crashlytics/android/k;Lcom/crashlytics/android/k;IJJZLjava/util/Map;ILcom/crashlytics/android/k;Lcom/crashlytics/android/k;)I

    move-result v1

    invoke-virtual {v15, v1}, Lcom/crashlytics/android/p;->b(I)V

    .line 1171
    const/4 v1, 0x1

    invoke-virtual {v15, v1, v3}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V

    .line 1173
    const/4 v1, 0x3

    invoke-virtual {v15, v1, v2}, Lcom/crashlytics/android/p;->b(II)V

    .line 1174
    const/4 v1, 0x4

    invoke-virtual {v15, v1, v4}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V

    .line 1175
    const/4 v1, 0x5

    invoke-virtual {v15, v1, v5}, Lcom/crashlytics/android/p;->a(II)V

    .line 1176
    const/4 v1, 0x6

    invoke-virtual {v15, v1, v6, v7}, Lcom/crashlytics/android/p;->a(IJ)V

    .line 1177
    const/4 v1, 0x7

    invoke-virtual {v15, v1, v8, v9}, Lcom/crashlytics/android/p;->a(IJ)V

    .line 1178
    const/16 v1, 0xa

    invoke-virtual {v15, v1, v10}, Lcom/crashlytics/android/p;->a(IZ)V

    .line 1180
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v3, v0

    .line 1181
    const/16 v1, 0xb

    const/4 v2, 0x2

    invoke-virtual {v15, v1, v2}, Lcom/crashlytics/android/p;->g(II)V

    .line 1182
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/IdManager$DeviceIdentifierType;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/crashlytics/android/E;->a(Lcom/crashlytics/android/IdManager$DeviceIdentifierType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v15, v1}, Lcom/crashlytics/android/p;->b(I)V

    .line 1184
    const/4 v2, 0x1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/IdManager$DeviceIdentifierType;

    iget v1, v1, Lcom/crashlytics/android/IdManager$DeviceIdentifierType;->protobufIndex:I

    invoke-virtual {v15, v2, v1}, Lcom/crashlytics/android/p;->b(II)V

    .line 1185
    const/4 v2, 0x2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v1

    invoke-virtual {v15, v2, v1}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1195
    :catch_0
    move-exception v1

    move-object v2, v15

    move-object/from16 v3, v16

    .line 1196
    :goto_2
    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/crashlytics/android/E;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 1197
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1199
    :catchall_0
    move-exception v1

    move-object v15, v2

    move-object/from16 v16, v3

    :goto_3
    const-string v2, "Failed to flush session device info."

    invoke-static {v15, v2}, Lcom/crashlytics/android/av;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 1200
    const-string v2, "Failed to close session device file."

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/crashlytics/android/av;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v1

    .line 1148
    :cond_0
    :try_start_4
    const-string v3, "ARMV6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x5

    goto/16 :goto_0

    :cond_1
    const-string v3, "ARMV"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x7

    goto/16 :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected non-ARM architecture type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/crashlytics/android/av;->b(Ljava/lang/String;)V

    const/4 v2, 0x7

    goto/16 :goto_0

    .line 1187
    :cond_3
    const/16 v1, 0xc

    invoke-virtual {v15, v1, v12}, Lcom/crashlytics/android/p;->a(II)V

    .line 1189
    if-eqz v13, :cond_4

    .line 1190
    const/16 v1, 0xd

    invoke-virtual {v15, v1, v13}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V

    .line 1192
    :cond_4
    if-eqz v14, :cond_5

    .line 1193
    const/16 v1, 0xe

    invoke-virtual {v15, v1, v14}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1199
    :cond_5
    const-string v1, "Failed to flush session device info."

    invoke-static {v15, v1}, Lcom/crashlytics/android/av;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 1200
    const-string v1, "Failed to close session device file."

    move-object/from16 v0, v16

    invoke-static {v0, v1}, Lcom/crashlytics/android/av;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1201
    return-void

    .line 1199
    :catchall_1
    move-exception v1

    move-object v15, v2

    move-object/from16 v16, v3

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v15, v2

    goto :goto_3

    :catchall_3
    move-exception v1

    goto :goto_3

    .line 1195
    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    move-object/from16 v3, v16

    goto :goto_2
.end method

.method static synthetic d()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/crashlytics/android/E;->d:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic e()Ljava/util/Map;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/crashlytics/android/E;->e:Ljava/util/Map;

    return-object v0
.end method

.method private f()Lcom/crashlytics/android/k;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 395
    iget-object v1, p0, Lcom/crashlytics/android/E;->u:Ljava/io/RandomAccessFile;

    if-nez v1, :cond_1

    .line 429
    :cond_0
    :goto_0
    return-object v0

    .line 400
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/crashlytics/android/E;->u:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    long-to-int v1, v1

    .line 401
    if-nez v1, :cond_2

    iget-boolean v2, p0, Lcom/crashlytics/android/E;->v:Z

    if-eqz v2, :cond_0

    .line 405
    :cond_2
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 406
    iget-object v3, p0, Lcom/crashlytics/android/E;->u:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 407
    const-wide/16 v4, 0x0

    invoke-virtual {v3, v2, v4, v5}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    .line 408
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 410
    iget-boolean v4, p0, Lcom/crashlytics/android/E;->v:Z

    if-eqz v4, :cond_3

    .line 413
    iget-object v4, p0, Lcom/crashlytics/android/E;->u:Ljava/io/RandomAccessFile;

    int-to-long v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 414
    iget-object v1, p0, Lcom/crashlytics/android/E;->u:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    .line 416
    const v1, 0xfa00

    iget-object v4, p0, Lcom/crashlytics/android/E;->u:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    long-to-int v4, v4

    sub-int/2addr v1, v4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 417
    iget-object v4, p0, Lcom/crashlytics/android/E;->u:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    invoke-virtual {v3, v1, v4, v5}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    .line 418
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 420
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/crashlytics/android/k;

    const/4 v4, 0x0

    invoke-static {v1}, Lcom/crashlytics/android/k;->a(Ljava/nio/ByteBuffer;)Lcom/crashlytics/android/k;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-static {v2}, Lcom/crashlytics/android/k;->a(Ljava/nio/ByteBuffer;)Lcom/crashlytics/android/k;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/crashlytics/android/k;->a(Ljava/util/List;)Lcom/crashlytics/android/k;

    move-result-object v0

    goto :goto_0

    .line 423
    :cond_3
    invoke-static {v2}, Lcom/crashlytics/android/k;->a(Ljava/nio/ByteBuffer;)Lcom/crashlytics/android/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 425
    :catch_0
    move-exception v1

    .line 426
    const-string v2, "Could not convert log to ByteString"

    invoke-static {v2, v1}, Lcom/crashlytics/android/av;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private g()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 517
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->c()Landroid/content/ContextWrapper;

    move-result-object v2

    const-string v3, "com.crashlytics.CollectCustomLogs"

    invoke-static {v2, v3, v1}, Lcom/crashlytics/android/av;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    .line 519
    if-nez v2, :cond_0

    .line 542
    :goto_0
    return v0

    .line 524
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/crashlytics/android/E;->u:Ljava/io/RandomAccessFile;

    if-eqz v2, :cond_1

    .line 525
    iget-object v2, p0, Lcom/crashlytics/android/E;->u:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    :cond_1
    :goto_1
    const/4 v2, 0x0

    .line 533
    :try_start_1
    const-string v3, "crashlytics-userlog-"

    const-string v4, ".temp"

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->c()Landroid/content/ContextWrapper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-static {v3, v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 534
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v3, v2, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/crashlytics/android/E;->u:Ljava/io/RandomAccessFile;

    .line 535
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/crashlytics/android/E;->v:Z

    .line 536
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    .line 542
    goto :goto_0

    .line 527
    :catch_0
    move-exception v2

    .line 528
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not close log file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/crashlytics/android/E;->u:Ljava/io/RandomAccessFile;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/crashlytics/android/av;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 537
    :catch_1
    move-exception v1

    .line 538
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not create log file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/crashlytics/android/av;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private h()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v14, 0x1

    .line 616
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 617
    new-instance v1, Lcom/crashlytics/android/l;

    invoke-direct {v1}, Lcom/crashlytics/android/l;-><init>()V

    invoke-virtual {v1}, Lcom/crashlytics/android/l;->toString()Ljava/lang/String;

    move-result-object v4

    .line 619
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Opening an new session with ID "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/crashlytics/android/av;->b(Ljava/lang/String;)V

    .line 621
    :try_start_0
    new-instance v3, Lcom/crashlytics/android/n;

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->h()Ljava/io/File;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "BeginSession"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v1, v5}, Lcom/crashlytics/android/n;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v3}, Lcom/crashlytics/android/p;->a(Ljava/io/OutputStream;)Lcom/crashlytics/android/p;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v1

    const/4 v5, 0x1

    :try_start_2
    iget-object v6, p0, Lcom/crashlytics/android/E;->n:Ljava/lang/String;

    invoke-static {v6}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V

    const/4 v5, 0x2

    invoke-static {v4}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V

    const/4 v5, 0x3

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v1, v5, v6, v7}, Lcom/crashlytics/android/p;->a(IJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    const-string v0, "Failed to flush to session begin file."

    invoke-static {v1, v0}, Lcom/crashlytics/android/av;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v0, "Failed to close begin session file."

    invoke-static {v3, v0}, Lcom/crashlytics/android/av;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 622
    :try_start_3
    new-instance v3, Lcom/crashlytics/android/n;

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->h()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "SessionApp"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Lcom/crashlytics/android/n;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    invoke-static {v3}, Lcom/crashlytics/android/p;->a(Ljava/io/OutputStream;)Lcom/crashlytics/android/p;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v1

    :try_start_5
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v0

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->f()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v5

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->e()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v6

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->i()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v7

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->c()Landroid/content/ContextWrapper;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getPackageCodePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v8

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v9

    invoke-virtual {v9}, Lcom/crashlytics/android/Crashlytics;->b()Lcom/crashlytics/android/IdManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/crashlytics/android/IdManager;->b()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v9

    const/4 v10, 0x7

    const/4 v11, 0x2

    invoke-virtual {v1, v10, v11}, Lcom/crashlytics/android/p;->g(II)V

    const/4 v10, 0x1

    invoke-static {v10, v0}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v10

    add-int/lit8 v10, v10, 0x0

    const/4 v11, 0x2

    invoke-static {v11, v5}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v11

    add-int/2addr v10, v11

    const/4 v11, 0x3

    invoke-static {v11, v6}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v11

    add-int/2addr v10, v11

    invoke-static {}, Lcom/crashlytics/android/E;->m()I

    move-result v11

    const/4 v12, 0x4

    invoke-static {v12}, Lcom/crashlytics/android/p;->a(I)I

    move-result v12

    invoke-static {v11}, Lcom/crashlytics/android/p;->c(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-static {}, Lcom/crashlytics/android/E;->n()I

    move-result v11

    const/4 v12, 0x5

    invoke-static {v12}, Lcom/crashlytics/android/p;->a(I)I

    move-result v12

    invoke-static {v11}, Lcom/crashlytics/android/p;->c(I)I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    add-int/2addr v10, v11

    const/4 v11, 0x6

    invoke-static {v11, v9}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v1, v10}, Lcom/crashlytics/android/p;->b(I)V

    const/4 v10, 0x1

    invoke-virtual {v1, v10, v0}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V

    const/4 v0, 0x2

    invoke-virtual {v1, v0, v5}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V

    const/4 v0, 0x3

    invoke-virtual {v1, v0, v6}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V

    const/4 v0, 0x4

    const/4 v5, 0x2

    invoke-virtual {v1, v0, v5}, Lcom/crashlytics/android/p;->g(II)V

    invoke-static {}, Lcom/crashlytics/android/E;->m()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/crashlytics/android/p;->b(I)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0, v7}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const/4 v5, 0x2

    invoke-virtual {v1, v5, v0}, Lcom/crashlytics/android/p;->a(II)V

    const/4 v5, 0x3

    invoke-virtual {v1, v5, v8}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V

    invoke-static {v0}, Lcom/crashlytics/android/av;->a(I)[Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    array-length v0, v5

    if-le v0, v14, :cond_0

    const/4 v6, 0x4

    const/4 v0, 0x1

    aget-object v0, v5, v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V

    const/4 v6, 0x5

    const/4 v0, 0x0

    aget-object v0, v5, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v6, v0}, Lcom/crashlytics/android/p;->a(II)V

    :cond_0
    const/4 v0, 0x5

    const/4 v5, 0x2

    invoke-virtual {v1, v0, v5}, Lcom/crashlytics/android/p;->g(II)V

    invoke-static {}, Lcom/crashlytics/android/E;->n()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/crashlytics/android/p;->b(I)V

    const/4 v0, 0x1

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Lcom/crashlytics/android/p;->a(ILjava/lang/String;)V

    const/4 v0, 0x6

    invoke-virtual {v1, v0, v9}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    const-string v0, "Failed to flush to session app file."

    invoke-static {v1, v0}, Lcom/crashlytics/android/av;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v0, "Failed to close session app file."

    invoke-static {v3, v0}, Lcom/crashlytics/android/av;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 623
    :try_start_6
    new-instance v1, Lcom/crashlytics/android/n;

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->h()Ljava/io/File;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "SessionOS"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/crashlytics/android/n;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :try_start_7
    invoke-static {v1}, Lcom/crashlytics/android/p;->a(Ljava/io/OutputStream;)Lcom/crashlytics/android/p;

    move-result-object v2

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v0}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v0

    sget-object v3, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-static {v3}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v3

    invoke-static {}, Lcom/crashlytics/android/av;->e()Z

    move-result v5

    const/16 v6, 0x8

    const/4 v7, 0x2

    invoke-virtual {v2, v6, v7}, Lcom/crashlytics/android/p;->g(II)V

    const/4 v6, 0x1

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/crashlytics/android/p;->e(II)I

    move-result v6

    add-int/lit8 v6, v6, 0x0

    const/4 v7, 0x2

    invoke-static {v7, v0}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v7

    add-int/2addr v6, v7

    const/4 v7, 0x3

    invoke-static {v7, v3}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v7

    add-int/2addr v6, v7

    const/4 v7, 0x4

    invoke-static {v7, v5}, Lcom/crashlytics/android/p;->b(IZ)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2, v6}, Lcom/crashlytics/android/p;->b(I)V

    const/4 v6, 0x1

    const/4 v7, 0x3

    invoke-virtual {v2, v6, v7}, Lcom/crashlytics/android/p;->b(II)V

    const/4 v6, 0x2

    invoke-virtual {v2, v6, v0}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v3}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V

    const/4 v0, 0x4

    invoke-virtual {v2, v0, v5}, Lcom/crashlytics/android/p;->a(IZ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    const-string v0, "Failed to flush to session OS file."

    invoke-static {v2, v0}, Lcom/crashlytics/android/av;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v0, "Failed to close session OS file."

    invoke-static {v1, v0}, Lcom/crashlytics/android/av;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 624
    invoke-direct {p0, v4}, Lcom/crashlytics/android/E;->c(Ljava/lang/String;)V

    .line 625
    return-void

    .line 621
    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_0
    :try_start_8
    invoke-direct {p0, v0, v2}, Lcom/crashlytics/android/E;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_0
    move-exception v0

    :goto_1
    const-string v3, "Failed to flush to session begin file."

    invoke-static {v1, v3}, Lcom/crashlytics/android/av;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v1, "Failed to close begin session file."

    invoke-static {v2, v1}, Lcom/crashlytics/android/av;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 622
    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_9
    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/E;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v1

    move-object v1, v2

    :goto_3
    const-string v2, "Failed to flush to session app file."

    invoke-static {v1, v2}, Lcom/crashlytics/android/av;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v1, "Failed to close session app file."

    invoke-static {v3, v1}, Lcom/crashlytics/android/av;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 623
    :catch_2
    move-exception v0

    move-object v1, v2

    :goto_4
    :try_start_a
    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/E;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception v0

    :goto_5
    const-string v3, "Failed to flush to session OS file."

    invoke-static {v2, v3}, Lcom/crashlytics/android/av;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v2, "Failed to close session OS file."

    invoke-static {v1, v2}, Lcom/crashlytics/android/av;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_4

    .line 622
    :catchall_4
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_3

    :catchall_5
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catchall_6
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v1, v3

    goto :goto_2

    :catch_5
    move-exception v0

    move-object v2, v1

    move-object v1, v3

    goto :goto_2

    .line 621
    :catchall_7
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catchall_8
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_1

    :catchall_9
    move-exception v0

    move-object v2, v3

    goto :goto_1

    :catch_6
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_0

    :catch_7
    move-exception v0

    move-object v2, v3

    goto :goto_0
.end method

.method private i()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 631
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/crashlytics/android/E;->k()[Ljava/io/File;

    move-result-object v3

    sget-object v1, Lcom/crashlytics/android/E;->b:Ljava/util/Comparator;

    invoke-static {v3, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/16 v1, 0x8

    array-length v4, v3

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    invoke-static {v5}, Lcom/crashlytics/android/E;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/crashlytics/android/T;

    invoke-direct {v1}, Lcom/crashlytics/android/T;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/crashlytics/android/E;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_2

    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/crashlytics/android/E;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Trimming open session file: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/crashlytics/android/av;->b(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 633
    :cond_2
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crashlytics/android/Crashlytics;->r()Lcom/crashlytics/android/ar;

    move-result-object v1

    .line 635
    if-eqz v1, :cond_13

    .line 636
    invoke-virtual {v1}, Lcom/crashlytics/android/ar;->c()I

    move-result v8

    .line 638
    invoke-direct/range {p0 .. p0}, Lcom/crashlytics/android/E;->j()Ljava/lang/String;

    move-result-object v1

    .line 640
    if-eqz v1, :cond_11

    .line 643
    const/4 v4, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lcom/crashlytics/android/n;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/crashlytics/android/E;->k:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "SessionUser"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v5, v1}, Lcom/crashlytics/android/n;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v3}, Lcom/crashlytics/android/p;->a(Ljava/io/OutputStream;)Lcom/crashlytics/android/p;

    move-result-object v2

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crashlytics/android/Crashlytics;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v4

    invoke-virtual {v4}, Lcom/crashlytics/android/Crashlytics;->p()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v5

    invoke-virtual {v5}, Lcom/crashlytics/android/Crashlytics;->o()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v6

    if-nez v1, :cond_6

    if-nez v4, :cond_6

    if-nez v6, :cond_6

    const-string v1, "Failed to flush session user file."

    invoke-static {v2, v1}, Lcom/crashlytics/android/av;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v1, "Failed to close session user file."

    invoke-static {v3, v1}, Lcom/crashlytics/android/av;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 645
    :goto_2
    const-string v1, "Closing all open sessions."

    invoke-static {v1}, Lcom/crashlytics/android/av;->b(Ljava/lang/String;)V

    .line 646
    invoke-direct/range {p0 .. p0}, Lcom/crashlytics/android/E;->k()[Ljava/io/File;

    move-result-object v9

    .line 648
    if-eqz v9, :cond_12

    array-length v1, v9

    if-lez v1, :cond_12

    .line 649
    array-length v10, v9

    const/4 v1, 0x0

    move v6, v1

    :goto_3
    if-ge v6, v10, :cond_12

    aget-object v11, v9, v6

    .line 650
    invoke-static {v11}, Lcom/crashlytics/android/E;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v12

    .line 651
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Closing session: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/crashlytics/android/av;->b(Ljava/lang/String;)V

    .line 652
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Collecting session parts for ID "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/crashlytics/android/av;->b(Ljava/lang/String;)V

    new-instance v1, Lcom/crashlytics/android/U;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SessionCrash"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/crashlytics/android/U;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/crashlytics/android/E;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v13

    if-eqz v13, :cond_e

    array-length v1, v13

    if-lez v1, :cond_e

    const/4 v1, 0x1

    move v2, v1

    :goto_4
    const-string v1, "Session %s has fatal exception: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v12, v3, v4

    const/4 v4, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/crashlytics/android/av;->b(Ljava/lang/String;)V

    new-instance v1, Lcom/crashlytics/android/U;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SessionEvent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/crashlytics/android/U;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/crashlytics/android/E;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_f

    array-length v1, v7

    if-lez v1, :cond_f

    const/4 v1, 0x1

    :goto_5
    const-string v3, "Session %s has non-fatal exceptions: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v12, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/crashlytics/android/av;->b(Ljava/lang/String;)V

    if-nez v2, :cond_3

    if-eqz v1, :cond_10

    :cond_3
    const/4 v5, 0x0

    const/4 v3, 0x0

    :try_start_2
    new-instance v4, Lcom/crashlytics/android/n;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/crashlytics/android/E;->k:Ljava/io/File;

    invoke-direct {v4, v14, v12}, Lcom/crashlytics/android/n;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-static {v4}, Lcom/crashlytics/android/p;->a(Ljava/io/OutputStream;)Lcom/crashlytics/android/p;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v3

    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v14, "Collecting SessionStart data for session ID "

    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/crashlytics/android/av;->b(Ljava/lang/String;)V

    invoke-static {v3, v11}, Lcom/crashlytics/android/E;->a(Lcom/crashlytics/android/p;Ljava/io/File;)V

    const/4 v5, 0x4

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    invoke-virtual {v3, v5, v14, v15}, Lcom/crashlytics/android/p;->a(IJ)V

    const/4 v5, 0x5

    invoke-virtual {v3, v5, v2}, Lcom/crashlytics/android/p;->a(IZ)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v12}, Lcom/crashlytics/android/E;->a(Lcom/crashlytics/android/p;Ljava/lang/String;)V

    if-eqz v1, :cond_4

    array-length v1, v7

    if-le v1, v8, :cond_14

    const-string v1, "Trimming down to %d logged exceptions."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v5, v7

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/crashlytics/android/av;->b(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v8}, Lcom/crashlytics/android/E;->a(Ljava/lang/String;I)V

    new-instance v1, Lcom/crashlytics/android/U;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "SessionEvent"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/crashlytics/android/U;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/crashlytics/android/E;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    :goto_6
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v1, v12}, Lcom/crashlytics/android/E;->a(Lcom/crashlytics/android/p;[Ljava/io/File;Ljava/lang/String;)V

    :cond_4
    if-eqz v2, :cond_5

    const/4 v1, 0x0

    aget-object v1, v13, v1

    invoke-static {v3, v1}, Lcom/crashlytics/android/E;->a(Lcom/crashlytics/android/p;Ljava/io/File;)V

    :cond_5
    const/16 v1, 0xb

    const/4 v2, 0x1

    invoke-virtual {v3, v1, v2}, Lcom/crashlytics/android/p;->a(II)V

    const/16 v1, 0xc

    const/4 v2, 0x3

    invoke-virtual {v3, v1, v2}, Lcom/crashlytics/android/p;->b(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    const-string v1, "Error flushing session file stream"

    invoke-static {v3, v1}, Lcom/crashlytics/android/av;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v1, "Failed to close CLS file"

    invoke-static {v4, v1}, Lcom/crashlytics/android/av;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Removing session part files for ID "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/crashlytics/android/av;->b(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/crashlytics/android/E;->a(Ljava/lang/String;)V

    .line 649
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto/16 :goto_3

    .line 643
    :cond_6
    if-nez v1, :cond_7

    :try_start_5
    const-string v1, ""

    :cond_7
    invoke-static {v1}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v7

    if-nez v4, :cond_c

    const/4 v1, 0x0

    move-object v5, v1

    :goto_8
    if-nez v6, :cond_d

    const/4 v1, 0x0

    move-object v4, v1

    :goto_9
    const/4 v1, 0x1

    invoke-static {v1, v7}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    if-eqz v5, :cond_8

    const/4 v6, 0x2

    invoke-static {v6, v5}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v6

    add-int/2addr v1, v6

    :cond_8
    if-eqz v4, :cond_9

    const/4 v6, 0x3

    invoke-static {v6, v4}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v6

    add-int/2addr v1, v6

    :cond_9
    const/4 v6, 0x6

    const/4 v9, 0x2

    invoke-virtual {v2, v6, v9}, Lcom/crashlytics/android/p;->g(II)V

    invoke-virtual {v2, v1}, Lcom/crashlytics/android/p;->b(I)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1, v7}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V

    if-eqz v5, :cond_a

    const/4 v1, 0x2

    invoke-virtual {v2, v1, v5}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V

    :cond_a
    if-eqz v4, :cond_b

    const/4 v1, 0x3

    invoke-virtual {v2, v1, v4}, Lcom/crashlytics/android/p;->a(ILcom/crashlytics/android/k;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :cond_b
    const-string v1, "Failed to flush session user file."

    invoke-static {v2, v1}, Lcom/crashlytics/android/av;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v1, "Failed to close session user file."

    invoke-static {v3, v1}, Lcom/crashlytics/android/av;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_c
    :try_start_6
    invoke-static {v4}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v1

    move-object v5, v1

    goto :goto_8

    :cond_d
    invoke-static {v6}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    move-result-object v1

    move-object v4, v1

    goto :goto_9

    :catch_0
    move-exception v1

    move-object v3, v4

    :goto_a
    :try_start_7
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/crashlytics/android/E;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v1

    :goto_b
    const-string v4, "Failed to flush session user file."

    invoke-static {v2, v4}, Lcom/crashlytics/android/av;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v2, "Failed to close session user file."

    invoke-static {v3, v2}, Lcom/crashlytics/android/av;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v1

    .line 652
    :cond_e
    const/4 v1, 0x0

    move v2, v1

    goto/16 :goto_4

    :cond_f
    const/4 v1, 0x0

    goto/16 :goto_5

    :catch_1
    move-exception v1

    move-object v2, v3

    move-object v3, v5

    :goto_c
    :try_start_8
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to write session file for session ID: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/crashlytics/android/av;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/crashlytics/android/E;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    const-string v1, "Error flushing session file stream"

    invoke-static {v2, v1}, Lcom/crashlytics/android/av;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/crashlytics/android/E;->a(Lcom/crashlytics/android/n;)V

    goto/16 :goto_7

    :catchall_1
    move-exception v1

    move-object v4, v5

    :goto_d
    const-string v2, "Error flushing session file stream"

    invoke-static {v3, v2}, Lcom/crashlytics/android/av;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    const-string v2, "Failed to close CLS file"

    invoke-static {v4, v2}, Lcom/crashlytics/android/av;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v1

    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No events present for session ID "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/crashlytics/android/av;->b(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 656
    :cond_11
    const-string v1, "No session begin files found."

    invoke-static {v1}, Lcom/crashlytics/android/av;->b(Ljava/lang/String;)V

    .line 661
    :cond_12
    :goto_e
    return-void

    .line 659
    :cond_13
    const-string v1, "Unable to close session. Settings are not loaded."

    invoke-static {v1}, Lcom/crashlytics/android/av;->b(Ljava/lang/String;)V

    goto :goto_e

    .line 652
    :catchall_2
    move-exception v1

    goto :goto_d

    :catchall_3
    move-exception v1

    move-object v4, v3

    move-object v3, v2

    goto :goto_d

    :catch_2
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    goto :goto_c

    :catch_3
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    goto :goto_c

    .line 643
    :catchall_4
    move-exception v1

    move-object v3, v4

    goto :goto_b

    :catch_4
    move-exception v1

    goto :goto_a

    :cond_14
    move-object v1, v7

    goto/16 :goto_6
.end method

.method private j()Ljava/lang/String;
    .locals 2

    .prologue
    .line 673
    new-instance v0, Lcom/crashlytics/android/U;

    const-string v1, "BeginSession"

    invoke-direct {v0, v1}, Lcom/crashlytics/android/U;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/E;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 674
    sget-object v1, Lcom/crashlytics/android/E;->b:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 675
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/crashlytics/android/E;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k()[Ljava/io/File;
    .locals 2

    .prologue
    .line 824
    new-instance v0, Lcom/crashlytics/android/U;

    const-string v1, "BeginSession"

    invoke-direct {v0, v1}, Lcom/crashlytics/android/U;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/E;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private l()V
    .locals 6

    .prologue
    .line 897
    sget-object v0, Lcom/crashlytics/android/E;->a:Ljava/io/FilenameFilter;

    invoke-direct {p0, v0}, Lcom/crashlytics/android/E;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 899
    const-string v4, "Attempting to send crash report at time of crash..."

    invoke-static {v4}, Lcom/crashlytics/android/av;->b(Ljava/lang/String;)V

    .line 901
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/crashlytics/android/H;

    invoke-direct {v5, p0, v3}, Lcom/crashlytics/android/H;-><init>(Lcom/crashlytics/android/E;Ljava/io/File;)V

    const-string v3, "Crashlytics Report Uploader"

    invoke-direct {v4, v5, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 897
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 913
    :cond_0
    return-void
.end method

.method private static m()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1064
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 1067
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 1068
    const/4 v1, 0x2

    invoke-static {v1, v2}, Lcom/crashlytics/android/p;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1069
    const/4 v1, 0x3

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->c()Landroid/content/ContextWrapper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getPackageCodePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v1

    add-int/2addr v1, v0

    .line 1072
    invoke-static {v2}, Lcom/crashlytics/android/av;->a(I)[Ljava/lang/Object;

    move-result-object v2

    .line 1073
    if-eqz v2, :cond_0

    array-length v0, v2

    if-le v0, v4, :cond_0

    .line 1074
    aget-object v0, v2, v4

    check-cast v0, Ljava/lang/String;

    .line 1075
    const/4 v3, 0x4

    invoke-static {v0}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v0

    add-int/2addr v1, v0

    .line 1076
    const/4 v0, 0x0

    aget-object v0, v2, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1077
    const/4 v2, 0x5

    invoke-static {v2, v0}, Lcom/crashlytics/android/p;->d(II)I

    move-result v0

    add-int/2addr v0, v1

    .line 1080
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static n()I
    .locals 2

    .prologue
    .line 1084
    const/4 v0, 0x1

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/crashlytics/android/k;->a(Ljava/lang/String;)Lcom/crashlytics/android/k;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 1088
    return v0
.end method

.method private o()I
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 1454
    const/4 v0, 0x1

    invoke-static {v0, v2, v3}, Lcom/crashlytics/android/p;->b(IJ)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 1457
    const/4 v1, 0x2

    invoke-static {v1, v2, v3}, Lcom/crashlytics/android/p;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1458
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/crashlytics/android/E;->q:Lcom/crashlytics/android/k;

    invoke-static {v1, v2}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1459
    iget-object v1, p0, Lcom/crashlytics/android/E;->r:Lcom/crashlytics/android/k;

    if-eqz v1, :cond_0

    .line 1460
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/crashlytics/android/E;->r:Lcom/crashlytics/android/k;

    invoke-static {v1, v2}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1463
    :cond_0
    return v0
.end method

.method private static p()I
    .locals 4

    .prologue
    .line 1756
    const/4 v0, 0x1

    sget-object v1, Lcom/crashlytics/android/E;->f:Lcom/crashlytics/android/k;

    invoke-static {v0, v1}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 1759
    const/4 v1, 0x2

    sget-object v2, Lcom/crashlytics/android/E;->f:Lcom/crashlytics/android/k;

    invoke-static {v1, v2}, Lcom/crashlytics/android/p;->b(ILcom/crashlytics/android/k;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1760
    const/4 v1, 0x3

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/crashlytics/android/p;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1762
    return v0
.end method


# virtual methods
.method final a(JLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 379
    new-instance v0, Lcom/crashlytics/android/G;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/crashlytics/android/G;-><init>(Lcom/crashlytics/android/E;JLjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/E;->b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 388
    return-void
.end method

.method final a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 363
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 365
    new-instance v1, Lcom/crashlytics/android/S;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/crashlytics/android/S;-><init>(Lcom/crashlytics/android/E;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/crashlytics/android/E;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 373
    return-void
.end method

.method final a()Z
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/crashlytics/android/E;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method final b()Ljava/io/File;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/crashlytics/android/E;->l:Ljava/io/File;

    return-object v0
.end method

.method final b(JLjava/lang/String;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const-wide/32 v6, 0xfa00

    .line 471
    iget-object v0, p0, Lcom/crashlytics/android/E;->u:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/crashlytics/android/E;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not instantiate log for message: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/av;->b(Ljava/lang/String;)V

    .line 495
    :goto_0
    return-void

    .line 475
    :cond_0
    if-nez p3, :cond_2

    .line 476
    const-string v1, "null"

    .line 480
    :goto_1
    :try_start_0
    const-string v0, "%d %s%n"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "\n"

    const-string v5, " "

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 481
    iget-object v0, p0, Lcom/crashlytics/android/E;->u:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    cmp-long v0, v2, v6

    if-ltz v0, :cond_1

    .line 482
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/crashlytics/android/E;->v:Z

    .line 483
    iget-object v0, p0, Lcom/crashlytics/android/E;->u:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    sub-long/2addr v2, v6

    long-to-int v0, v2

    .line 484
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v0, v2, v0

    .line 485
    iget-object v2, p0, Lcom/crashlytics/android/E;->u:Ljava/io/RandomAccessFile;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 486
    iget-object v2, p0, Lcom/crashlytics/android/E;->u:Ljava/io/RandomAccessFile;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 487
    iget-object v2, p0, Lcom/crashlytics/android/E;->u:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 492
    :catch_0
    move-exception v0

    .line 493
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to log message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/crashlytics/android/av;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 490
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/crashlytics/android/E;->u:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_2
    move-object v1, p3

    goto :goto_1
.end method

.method final c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 344
    const-string v0, "Finalizing session."

    invoke-static {v0}, Lcom/crashlytics/android/av;->b(Ljava/lang/String;)V

    .line 345
    new-instance v0, Lcom/crashlytics/android/R;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/R;-><init>(Lcom/crashlytics/android/E;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/E;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 355
    return-void
.end method

.method public final declared-synchronized uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "thread"
    .parameter "ex"

    .prologue
    .line 303
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/E;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Crashlytics is handling uncaught exception \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" from thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/av;->b(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/crashlytics/android/E;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    const-string v0, "Unregistering power receivers."

    invoke-static {v0}, Lcom/crashlytics/android/av;->b(Ljava/lang/String;)V

    .line 309
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->c()Landroid/content/ContextWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/crashlytics/android/E;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 310
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->c()Landroid/content/ContextWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/crashlytics/android/E;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 315
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 317
    new-instance v1, Lcom/crashlytics/android/Q;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/crashlytics/android/Q;-><init>(Lcom/crashlytics/android/E;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/crashlytics/android/E;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 327
    :try_start_2
    const-string v0, "Crashlytics completed exception processing. Invoking default exception handler."

    invoke-static {v0}, Lcom/crashlytics/android/av;->b(Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/crashlytics/android/E;->j:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 329
    iget-object v0, p0, Lcom/crashlytics/android/E;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 330
    :goto_0
    monitor-exit p0

    return-void

    .line 324
    :catch_0
    move-exception v0

    .line 325
    :try_start_3
    const-string v1, "An error occurred in the uncaught exception handler"

    invoke-static {v1, v0}, Lcom/crashlytics/android/av;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 327
    :try_start_4
    const-string v0, "Crashlytics completed exception processing. Invoking default exception handler."

    invoke-static {v0}, Lcom/crashlytics/android/av;->b(Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/crashlytics/android/E;->j:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 329
    iget-object v0, p0, Lcom/crashlytics/android/E;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 327
    :catchall_1
    move-exception v0

    :try_start_5
    const-string v1, "Crashlytics completed exception processing. Invoking default exception handler."

    invoke-static {v1}, Lcom/crashlytics/android/av;->b(Ljava/lang/String;)V

    .line 328
    iget-object v1, p0, Lcom/crashlytics/android/E;->j:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 329
    iget-object v1, p0, Lcom/crashlytics/android/E;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
