.class final Lco/vine/android/widget/PopupEditText$1;
.super Ljava/lang/Object;
.source "PopupEditText.java"

# interfaces
.implements Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


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
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findTokenEnd(Ljava/lang/CharSequence;I)I
    .locals 1
    .parameter "text"
    .parameter "cursor"

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public findTokenStart(Ljava/lang/CharSequence;I)I
    .locals 1
    .parameter "text"
    .parameter "cursor"

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "text"

    .prologue
    .line 52
    return-object p1
.end method
