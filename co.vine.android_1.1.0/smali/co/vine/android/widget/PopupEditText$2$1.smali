.class Lco/vine/android/widget/PopupEditText$2$1;
.super Landroid/widget/Filter;
.source "PopupEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/widget/PopupEditText$2;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/widget/PopupEditText$2;


# direct methods
.method constructor <init>(Lco/vine/android/widget/PopupEditText$2;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lco/vine/android/widget/PopupEditText$2$1;->this$0:Lco/vine/android/widget/PopupEditText$2;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 1
    .parameter "constraint"

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 66
    return-void
.end method
