.class final Lcom/crashlytics/android/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/crashlytics/android/C;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/Crashlytics;Lcom/crashlytics/android/C;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 603
    iput-object p2, p0, Lcom/crashlytics/android/y;->a:Lcom/crashlytics/android/C;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter

    .prologue
    .line 606
    iget-object v0, p0, Lcom/crashlytics/android/y;->a:Lcom/crashlytics/android/C;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/C;->a(Z)V

    .line 607
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 608
    return-void
.end method
