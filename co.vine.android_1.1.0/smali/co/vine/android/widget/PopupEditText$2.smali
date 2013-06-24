.class final Lco/vine/android/widget/PopupEditText$2;
.super Ljava/lang/Object;
.source "PopupEditText.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/widget/PopupEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lco/vine/android/widget/PopupEditText$2$1;

    invoke-direct {v0, p0}, Lco/vine/android/widget/PopupEditText$2$1;-><init>(Lco/vine/android/widget/PopupEditText$2;)V

    return-object v0
.end method
