.class Lco/vine/android/PostOptionsDialogActivity$OptionArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PostOptionsDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/PostOptionsDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OptionArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lco/vine/android/PostOptionsDialogActivity$Option;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/PostOptionsDialogActivity;


# direct methods
.method public constructor <init>(Lco/vine/android/PostOptionsDialogActivity;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "layout"

    .prologue
    .line 180
    iput-object p1, p0, Lco/vine/android/PostOptionsDialogActivity$OptionArrayAdapter;->this$0:Lco/vine/android/PostOptionsDialogActivity;

    .line 181
    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 182
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 186
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 187
    .local v1, v:Landroid/view/View;
    invoke-virtual {p0, p1}, Lco/vine/android/PostOptionsDialogActivity$OptionArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/PostOptionsDialogActivity$Option;

    .line 188
    .local v0, option:Lco/vine/android/PostOptionsDialogActivity$Option;
    const v2, 0x7f09003a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lco/vine/android/PostOptionsDialogActivity$Option;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget v2, v0, Lco/vine/android/PostOptionsDialogActivity$Option;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 190
    return-object v1
.end method
