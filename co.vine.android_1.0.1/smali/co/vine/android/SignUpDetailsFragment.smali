.class public Lco/vine/android/SignUpDetailsFragment;
.super Landroid/support/v4/app/Fragment;
.source "SignUpDetailsFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Lco/vine/android/widget/SpanClickListener;


# static fields
.field private static final SPAN_PRIVACY_POLICY:I = 0x1

.field private static final SPAN_TOS:I = 0x2


# instance fields
.field private mDoneButton:Landroid/view/MenuItem;

.field private mPassword:Landroid/widget/EditText;

.field private mPhone:Landroid/widget/EditText;

.field private mUsername:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private validate()Z
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lco/vine/android/SignUpDetailsFragment;->mUsername:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/vine/android/SignUpDetailsFragment;->mUsername:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lco/vine/android/SignUpDetailsFragment;->mPassword:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/vine/android/SignUpDetailsFragment;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "editable"

    .prologue
    .line 132
    iget-object v0, p0, Lco/vine/android/SignUpDetailsFragment;->mDoneButton:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lco/vine/android/SignUpDetailsFragment;->mDoneButton:Landroid/view/MenuItem;

    invoke-direct {p0}, Lco/vine/android/SignUpDetailsFragment;->validate()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 135
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "charSequence"
    .parameter "i"
    .parameter "i2"
    .parameter "i3"

    .prologue
    .line 124
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lco/vine/android/SignUpDetailsFragment;->setHasOptionsMenu(Z)V

    .line 45
    invoke-virtual {p0}, Lco/vine/android/SignUpDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lco/vine/android/SignUpPagerActivity;

    const v1, 0x7f080020

    invoke-virtual {v0, v1}, Lco/vine/android/SignUpPagerActivity;->setBarTitle(I)V

    .line 46
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 97
    const v1, 0x7f0f0001

    invoke-virtual {p2, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 98
    const v1, 0x7f090088

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 99
    .local v0, doneButton:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 100
    invoke-direct {p0}, Lco/vine/android/SignUpDetailsFragment;->validate()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 102
    :cond_0
    iput-object v0, p0, Lco/vine/android/SignUpDetailsFragment;->mDoneButton:Landroid/view/MenuItem;

    .line 103
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "root"
    .parameter "savedInstanceState"

    .prologue
    .line 92
    const v0, 0x7f030027

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 107
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 117
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 109
    :pswitch_0
    invoke-virtual {p0}, Lco/vine/android/SignUpDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lco/vine/android/SignUpPagerActivity;

    .line 110
    .local v0, activity:Lco/vine/android/SignUpPagerActivity;
    iget-object v1, p0, Lco/vine/android/SignUpDetailsFragment;->mUsername:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/vine/android/SignUpPagerActivity;->setLogin(Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lco/vine/android/SignUpDetailsFragment;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/vine/android/SignUpPagerActivity;->setPassword(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lco/vine/android/SignUpDetailsFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/vine/android/SignUpPagerActivity;->setPhone(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0}, Lco/vine/android/SignUpPagerActivity;->toNextStep()V

    .line 114
    const/4 v1, 0x1

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x7f090088
        :pswitch_0
    .end packed-switch
.end method

.method public onSpanClicked(Landroid/view/View;ILjava/lang/Object;)V
    .locals 3
    .parameter "view"
    .parameter "type"
    .parameter "tag"

    .prologue
    .line 144
    invoke-virtual {p0}, Lco/vine/android/SignUpDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 162
    :goto_0
    return-void

    .line 147
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lco/vine/android/SignUpDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lco/vine/android/SignUpTosActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    .local v0, i:Landroid/content/Intent;
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 150
    :pswitch_0
    const-string v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 161
    :goto_1
    invoke-virtual {p0, v0}, Lco/vine/android/SignUpDetailsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 154
    :pswitch_1
    const-string v1, "type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "charSequence"
    .parameter "i"
    .parameter "i2"
    .parameter "i3"

    .prologue
    .line 128
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 13
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 51
    const v9, 0x7f090071

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lco/vine/android/SignUpDetailsFragment;->mUsername:Landroid/widget/EditText;

    .line 52
    iget-object v9, p0, Lco/vine/android/SignUpDetailsFragment;->mUsername:Landroid/widget/EditText;

    invoke-virtual {v9, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 54
    const v9, 0x7f090073

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lco/vine/android/SignUpDetailsFragment;->mPassword:Landroid/widget/EditText;

    .line 55
    iget-object v9, p0, Lco/vine/android/SignUpDetailsFragment;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v9, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 56
    iget-object v9, p0, Lco/vine/android/SignUpDetailsFragment;->mPassword:Landroid/widget/EditText;

    invoke-virtual {p0}, Lco/vine/android/SignUpDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-static {v10}, Lco/vine/android/widget/Typefaces;->get(Landroid/content/Context;)Lco/vine/android/widget/Typefaces;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-virtual {v10, v11, v12}, Lco/vine/android/widget/Typefaces;->getContentTypeface(II)Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 59
    const v9, 0x7f090076

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lco/vine/android/SignUpDetailsFragment;->mPhone:Landroid/widget/EditText;

    .line 61
    const v9, 0x7f090079

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 62
    .local v4, mTos:Landroid/widget/TextView;
    const/4 v9, 0x2

    new-array v0, v9, [Landroid/text/style/StyleSpan;

    const/4 v9, 0x0

    new-instance v10, Landroid/text/style/StyleSpan;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Landroid/text/style/StyleSpan;-><init>(I)V

    aput-object v10, v0, v9

    const/4 v9, 0x1

    new-instance v10, Landroid/text/style/StyleSpan;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Landroid/text/style/StyleSpan;-><init>(I)V

    aput-object v10, v0, v9

    .line 64
    .local v0, boldStyle:[Landroid/text/style/StyleSpan;
    const v9, 0x7f080032

    invoke-virtual {p0, v9}, Lco/vine/android/SignUpDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x22

    invoke-static {v0, v9, v10}, Lco/vine/android/util/Util;->getSpannedText([Ljava/lang/Object;Ljava/lang/String;C)Landroid/text/Spanned;

    move-result-object v6

    .line 67
    .local v6, spanned:Landroid/text/Spanned;
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 70
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 71
    .local v1, clickSpannable:Landroid/text/Spannable;
    const/4 v9, 0x0

    invoke-interface {v6}, Landroid/text/Spanned;->length()I

    move-result v10

    const-class v11, Landroid/text/style/StyleSpan;

    invoke-interface {v6, v9, v10, v11}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/StyleSpan;

    .line 72
    .local v7, spans:[Landroid/text/style/StyleSpan;
    invoke-virtual {p0}, Lco/vine/android/SignUpDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 75
    .local v5, res:Landroid/content/res/Resources;
    const/4 v9, 0x0

    aget-object v9, v7, v9

    invoke-interface {v6, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    .line 76
    .local v8, start:I
    const/4 v9, 0x0

    aget-object v9, v7, v9

    invoke-interface {v6, v9}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 77
    .local v3, end:I
    new-instance v2, Lco/vine/android/widget/StyledClickableSpan;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {v2, v9, v10, p0}, Lco/vine/android/widget/StyledClickableSpan;-><init>(ILjava/lang/Object;Lco/vine/android/widget/SpanClickListener;)V

    .line 79
    .local v2, clickableSpan:Lco/vine/android/widget/StyledClickableSpan;
    const v9, 0x7f07002a

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v2, v9}, Lco/vine/android/widget/StyledClickableSpan;->setColor(I)V

    .line 80
    const/16 v9, 0x21

    invoke-interface {v1, v2, v8, v3, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 83
    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-interface {v6, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    .line 84
    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-interface {v6, v9}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 85
    new-instance v2, Lco/vine/android/widget/StyledClickableSpan;

    .end local v2           #clickableSpan:Lco/vine/android/widget/StyledClickableSpan;
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-direct {v2, v9, v10, p0}, Lco/vine/android/widget/StyledClickableSpan;-><init>(ILjava/lang/Object;Lco/vine/android/widget/SpanClickListener;)V

    .line 86
    .restart local v2       #clickableSpan:Lco/vine/android/widget/StyledClickableSpan;
    const v9, 0x7f07002a

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v2, v9}, Lco/vine/android/widget/StyledClickableSpan;->setColor(I)V

    .line 87
    const/16 v9, 0x21

    invoke-interface {v1, v2, v8, v3, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 88
    return-void
.end method
