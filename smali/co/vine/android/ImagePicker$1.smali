.class Lco/vine/android/ImagePicker$1;
.super Ljava/lang/Object;
.source "ImagePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/ImagePicker;->saveProfileImage(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/ImagePicker;


# direct methods
.method constructor <init>(Lco/vine/android/ImagePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lco/vine/android/ImagePicker$1;->this$0:Lco/vine/android/ImagePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lco/vine/android/ImagePicker$1;->this$0:Lco/vine/android/ImagePicker;

    #getter for: Lco/vine/android/ImagePicker;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lco/vine/android/ImagePicker;->access$000(Lco/vine/android/ImagePicker;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f07004b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 99
    return-void
.end method
