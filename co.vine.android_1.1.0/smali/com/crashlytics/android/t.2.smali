.class final Lcom/crashlytics/android/t;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:F

.field private synthetic c:Ljava/io/File;

.field private synthetic d:Lcom/crashlytics/android/Crashlytics;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/Crashlytics;Landroid/content/Context;FLjava/io/File;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 821
    iput-object p1, p0, Lcom/crashlytics/android/t;->d:Lcom/crashlytics/android/Crashlytics;

    iput-object p2, p0, Lcom/crashlytics/android/t;->a:Landroid/content/Context;

    iput p3, p0, Lcom/crashlytics/android/t;->b:F

    iput-object p4, p0, Lcom/crashlytics/android/t;->c:Ljava/io/File;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 821
    iget-object v0, p0, Lcom/crashlytics/android/t;->d:Lcom/crashlytics/android/Crashlytics;

    iget-object v1, p0, Lcom/crashlytics/android/t;->a:Landroid/content/Context;

    iget v2, p0, Lcom/crashlytics/android/t;->b:F

    invoke-static {v0, v1, v2}, Lcom/crashlytics/android/Crashlytics;->a(Lcom/crashlytics/android/Crashlytics;Landroid/content/Context;F)V

    iget-object v0, p0, Lcom/crashlytics/android/t;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final onPreExecute()V
    .locals 1

    .prologue
    .line 827
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 829
    iget-object v0, p0, Lcom/crashlytics/android/t;->d:Lcom/crashlytics/android/Crashlytics;

    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->b(Lcom/crashlytics/android/Crashlytics;)Lcom/crashlytics/android/IdManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/IdManager;->g()Ljava/lang/String;

    .line 830
    return-void
.end method
