.class Lco/vine/android/widget/PopupEditText$AdapterObserver;
.super Landroid/database/DataSetObserver;
.source "PopupEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/widget/PopupEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/widget/PopupEditText;


# direct methods
.method public constructor <init>(Lco/vine/android/widget/PopupEditText;)V
    .locals 0
    .parameter

    .prologue
    .line 474
    iput-object p1, p0, Lco/vine/android/widget/PopupEditText$AdapterObserver;->this$0:Lco/vine/android/widget/PopupEditText;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 475
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 479
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 480
    iget-object v0, p0, Lco/vine/android/widget/PopupEditText$AdapterObserver;->this$0:Lco/vine/android/widget/PopupEditText;

    #getter for: Lco/vine/android/widget/PopupEditText;->mShowRequested:Z
    invoke-static {v0}, Lco/vine/android/widget/PopupEditText;->access$000(Lco/vine/android/widget/PopupEditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lco/vine/android/widget/PopupEditText$AdapterObserver;->this$0:Lco/vine/android/widget/PopupEditText;

    invoke-virtual {v0}, Lco/vine/android/widget/PopupEditText;->showDropDown()V

    .line 482
    iget-object v0, p0, Lco/vine/android/widget/PopupEditText$AdapterObserver;->this$0:Lco/vine/android/widget/PopupEditText;

    const/4 v1, 0x0

    #setter for: Lco/vine/android/widget/PopupEditText;->mShowRequested:Z
    invoke-static {v0, v1}, Lco/vine/android/widget/PopupEditText;->access$002(Lco/vine/android/widget/PopupEditText;Z)Z

    .line 484
    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 488
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 489
    iget-object v0, p0, Lco/vine/android/widget/PopupEditText$AdapterObserver;->this$0:Lco/vine/android/widget/PopupEditText;

    invoke-virtual {v0}, Lco/vine/android/widget/PopupEditText;->dismissDropDown()V

    .line 490
    return-void
.end method
