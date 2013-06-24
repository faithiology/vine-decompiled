.class final Lcom/crashlytics/android/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/crashlytics/android/C;

.field private synthetic b:Lcom/crashlytics/android/Crashlytics;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/Crashlytics;Lcom/crashlytics/android/C;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 630
    iput-object p1, p0, Lcom/crashlytics/android/A;->b:Lcom/crashlytics/android/Crashlytics;

    iput-object p2, p0, Lcom/crashlytics/android/A;->a:Lcom/crashlytics/android/C;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 633
    iget-object v0, p0, Lcom/crashlytics/android/A;->b:Lcom/crashlytics/android/Crashlytics;

    invoke-static {v1}, Lcom/crashlytics/android/Crashlytics;->a(Z)V

    .line 634
    iget-object v0, p0, Lcom/crashlytics/android/A;->a:Lcom/crashlytics/android/C;

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/C;->a(Z)V

    .line 635
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 636
    return-void
.end method
