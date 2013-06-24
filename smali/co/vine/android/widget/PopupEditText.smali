.class public Lco/vine/android/widget/PopupEditText;
.super Landroid/widget/EditText;
.source "PopupEditText.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/Filter$FilterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/widget/PopupEditText$PopupEditTextListener;,
        Lco/vine/android/widget/PopupEditText$FilterHandler;,
        Lco/vine/android/widget/PopupEditText$AdapterObserver;,
        Lco/vine/android/widget/PopupEditText$DropDownListView;
    }
.end annotation


# static fields
.field public static final EMPTY_FILTER:Landroid/widget/Filterable; = null

.field public static final EMPTY_TOKENIZER:Landroid/widget/MultiAutoCompleteTextView$Tokenizer; = null

.field private static final MSG_FILTER:I = 0x0

.field private static final NO_CALLBACK:I = 0x0

.field private static final TRIGGER_CALLBACK:I = 0x1


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mClick:Landroid/view/View$OnClickListener;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private final mDropDownHorizontalOffset:I

.field private final mDropDownList:Lco/vine/android/widget/PopupEditText$DropDownListView;

.field private final mDropDownVerticalOffset:I

.field private mFilterable:Landroid/widget/Filterable;

.field private final mHandler:Lco/vine/android/widget/PopupEditText$FilterHandler;

.field private mIsShown:Z

.field private mListener:Lco/vine/android/widget/PopupEditText$PopupEditTextListener;

.field private final mPopup:Landroid/widget/PopupWindow;

.field private mShowRequested:Z

.field private final mThreshold:I

.field private mThrottleDelay:J

.field private mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lco/vine/android/widget/PopupEditText$1;

    invoke-direct {v0}, Lco/vine/android/widget/PopupEditText$1;-><init>()V

    sput-object v0, Lco/vine/android/widget/PopupEditText;->EMPTY_TOKENIZER:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    .line 55
    new-instance v0, Lco/vine/android/widget/PopupEditText$2;

    invoke-direct {v0}, Lco/vine/android/widget/PopupEditText$2;-><init>()V

    sput-object v0, Lco/vine/android/widget/PopupEditText;->EMPTY_FILTER:Landroid/widget/Filterable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lco/vine/android/widget/PopupEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 100
    const v0, 0x7f01000f

    invoke-direct {p0, p1, p2, v0}, Lco/vine/android/widget/PopupEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 104
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    iput-boolean v4, p0, Lco/vine/android/widget/PopupEditText;->mIsShown:Z

    .line 82
    iput-boolean v4, p0, Lco/vine/android/widget/PopupEditText;->mShowRequested:Z

    .line 106
    sget-object v3, Lco/vine/android/R$styleable;->PopupEditText:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 109
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lco/vine/android/widget/PopupEditText;->mDropDownVerticalOffset:I

    .line 112
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lco/vine/android/widget/PopupEditText;->mDropDownHorizontalOffset:I

    .line 115
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lco/vine/android/widget/PopupEditText;->mThreshold:I

    .line 117
    new-instance v1, Lco/vine/android/widget/PopupEditText$DropDownListView;

    const/4 v3, 0x0

    const v4, 0x7f010010

    invoke-direct {v1, p1, v3, v4}, Lco/vine/android/widget/PopupEditText$DropDownListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 119
    .local v1, listView:Lco/vine/android/widget/PopupEditText$DropDownListView;
    invoke-virtual {v1, p0}, Lco/vine/android/widget/PopupEditText$DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 120
    iput-object v1, p0, Lco/vine/android/widget/PopupEditText;->mDropDownList:Lco/vine/android/widget/PopupEditText$DropDownListView;

    .line 122
    new-instance v2, Landroid/widget/PopupWindow;

    const v3, 0x7f01000f

    invoke-direct {v2, p1, p2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 123
    .local v2, popupWindow:Landroid/widget/PopupWindow;
    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 124
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 125
    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 126
    iput-object v2, p0, Lco/vine/android/widget/PopupEditText;->mPopup:Landroid/widget/PopupWindow;

    .line 128
    invoke-super {p0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    new-instance v3, Lco/vine/android/widget/PopupEditText$FilterHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lco/vine/android/widget/PopupEditText$FilterHandler;-><init>(Landroid/os/Looper;Landroid/widget/Filter$FilterListener;)V

    iput-object v3, p0, Lco/vine/android/widget/PopupEditText;->mHandler:Lco/vine/android/widget/PopupEditText$FilterHandler;

    .line 130
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 131
    return-void
.end method

.method static synthetic access$000(Lco/vine/android/widget/PopupEditText;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lco/vine/android/widget/PopupEditText;->mShowRequested:Z

    return v0
.end method

.method static synthetic access$002(Lco/vine/android/widget/PopupEditText;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lco/vine/android/widget/PopupEditText;->mShowRequested:Z

    return p1
.end method

.method private isPopupShowing()Z
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lco/vine/android/widget/PopupEditText;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public dismissDropDown()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 260
    iget-object v0, p0, Lco/vine/android/widget/PopupEditText;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 261
    iput-boolean v1, p0, Lco/vine/android/widget/PopupEditText;->mIsShown:Z

    .line 262
    iput-boolean v1, p0, Lco/vine/android/widget/PopupEditText;->mShowRequested:Z

    .line 263
    iget-object v0, p0, Lco/vine/android/widget/PopupEditText;->mHandler:Lco/vine/android/widget/PopupEditText$FilterHandler;

    invoke-virtual {v0, v1}, Lco/vine/android/widget/PopupEditText$FilterHandler;->removeMessages(I)V

    .line 264
    return-void
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lco/vine/android/widget/PopupEditText;->mIsShown:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 271
    invoke-direct {p0}, Lco/vine/android/widget/PopupEditText;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lco/vine/android/widget/PopupEditText;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 273
    invoke-virtual {p0}, Lco/vine/android/widget/PopupEditText;->showDropDown()V

    .line 275
    :cond_0
    iget-object v0, p0, Lco/vine/android/widget/PopupEditText;->mClick:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lco/vine/android/widget/PopupEditText;->mClick:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 278
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 219
    invoke-super {p0}, Landroid/widget/EditText;->onDetachedFromWindow()V

    .line 220
    invoke-virtual {p0}, Lco/vine/android/widget/PopupEditText;->dismissDropDown()V

    .line 221
    return-void
.end method

.method public onFilterComplete(I)V
    .locals 4
    .parameter "count"

    .prologue
    .line 181
    invoke-virtual {p0}, Lco/vine/android/widget/PopupEditText;->getSelectionEnd()I

    move-result v0

    .line 182
    .local v0, end:I
    iget-object v2, p0, Lco/vine/android/widget/PopupEditText;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual {p0}, Lco/vine/android/widget/PopupEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 183
    .local v1, tokenStart:I
    sub-int v2, v0, v1

    iget v3, p0, Lco/vine/android/widget/PopupEditText;->mThreshold:I

    if-lt v2, v3, :cond_0

    .line 184
    invoke-virtual {p0}, Lco/vine/android/widget/PopupEditText;->showDropDown()V

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-virtual {p0}, Lco/vine/android/widget/PopupEditText;->dismissDropDown()V

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 202
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 204
    if-nez p1, :cond_0

    .line 205
    invoke-virtual {p0}, Lco/vine/android/widget/PopupEditText;->dismissDropDown()V

    .line 207
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "view"
    .parameter "pos"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 286
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lco/vine/android/widget/PopupEditText;->clearComposingText()V

    .line 287
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    .line 288
    .local v2, item:Ljava/lang/Object;
    iget-object v5, p0, Lco/vine/android/widget/PopupEditText;->mFilterable:Landroid/widget/Filterable;

    if-nez v5, :cond_1

    .line 289
    check-cast v2, Ljava/lang/String;

    .end local v2           #item:Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lco/vine/android/widget/PopupEditText;->setText(Ljava/lang/CharSequence;)V

    .line 290
    const/4 v5, 0x0

    invoke-virtual {p0}, Lco/vine/android/widget/PopupEditText;->length()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lco/vine/android/widget/PopupEditText;->setSelection(II)V

    .line 302
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lco/vine/android/widget/PopupEditText;->dismissDropDown()V

    .line 303
    return-void

    .line 292
    .restart local v2       #item:Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0}, Lco/vine/android/widget/PopupEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 293
    .local v0, editable:Landroid/text/Editable;
    invoke-virtual {p0}, Lco/vine/android/widget/PopupEditText;->getSelectionEnd()I

    move-result v1

    .line 294
    .local v1, end:I
    iget-object v5, p0, Lco/vine/android/widget/PopupEditText;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v5, v0, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 295
    .local v4, tokenStart:I
    iget-object v5, p0, Lco/vine/android/widget/PopupEditText;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    iget-object v6, p0, Lco/vine/android/widget/PopupEditText;->mFilterable:Landroid/widget/Filterable;

    invoke-interface {v6}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/widget/Filter;->convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 297
    .local v3, replacement:Ljava/lang/CharSequence;
    invoke-interface {v0, v4, v1, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 298
    iget-object v5, p0, Lco/vine/android/widget/PopupEditText;->mListener:Lco/vine/android/widget/PopupEditText$PopupEditTextListener;

    if-eqz v5, :cond_0

    .line 299
    iget-object v5, p0, Lco/vine/android/widget/PopupEditText;->mListener:Lco/vine/android/widget/PopupEditText$PopupEditTextListener;

    invoke-interface {v5, v3, p3}, Lco/vine/android/widget/PopupEditText$PopupEditTextListener;->onPopupItemSelected(Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 10
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    .line 349
    invoke-direct {p0}, Lco/vine/android/widget/PopupEditText;->isPopupShowing()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 355
    iget-object v4, p0, Lco/vine/android/widget/PopupEditText;->mDropDownList:Lco/vine/android/widget/PopupEditText$DropDownListView;

    .line 356
    .local v4, dropDownList:Lco/vine/android/widget/PopupEditText$DropDownListView;
    const/16 v9, 0x3e

    if-eq p1, v9, :cond_2

    invoke-virtual {v4}, Lco/vine/android/widget/PopupEditText$DropDownListView;->getSelectedItemPosition()I

    move-result v9

    if-gez v9, :cond_0

    const/16 v9, 0x42

    if-eq p1, v9, :cond_2

    const/16 v9, 0x17

    if-eq p1, v9, :cond_2

    .line 360
    :cond_0
    invoke-virtual {v4}, Lco/vine/android/widget/PopupEditText$DropDownListView;->getSelectedItemPosition()I

    move-result v3

    .line 363
    .local v3, curIndex:I
    iget-object v7, p0, Lco/vine/android/widget/PopupEditText;->mPopup:Landroid/widget/PopupWindow;

    .line 364
    .local v7, popup:Landroid/widget/PopupWindow;
    invoke-virtual {v7}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    move-result v9

    if-nez v9, :cond_3

    move v1, v8

    .line 366
    .local v1, below:Z
    :goto_0
    iget-object v0, p0, Lco/vine/android/widget/PopupEditText;->mAdapter:Landroid/widget/ListAdapter;

    .line 368
    .local v0, adapter:Landroid/widget/ListAdapter;
    const v5, 0x7fffffff

    .line 369
    .local v5, firstItem:I
    const/high16 v6, -0x8000

    .line 371
    .local v6, lastItem:I
    if-eqz v0, :cond_1

    .line 372
    const/4 v5, 0x0

    .line 373
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    .line 376
    :cond_1
    invoke-virtual {v4, p1, p2}, Lco/vine/android/widget/PopupEditText$DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 378
    .local v2, consumed:Z
    if-eqz v2, :cond_4

    .line 381
    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 386
    invoke-virtual {v4}, Lco/vine/android/widget/PopupEditText$DropDownListView;->requestFocusFromTouch()Z

    .line 387
    invoke-virtual {p0}, Lco/vine/android/widget/PopupEditText;->showDropDown()V

    .line 389
    sparse-switch p1, :sswitch_data_0

    .line 417
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v1           #below:Z
    .end local v2           #consumed:Z
    .end local v3           #curIndex:I
    .end local v4           #dropDownList:Lco/vine/android/widget/PopupEditText$DropDownListView;
    .end local v5           #firstItem:I
    .end local v6           #lastItem:I
    .end local v7           #popup:Landroid/widget/PopupWindow;
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v8

    :goto_1
    :sswitch_0
    return v8

    .line 364
    .restart local v3       #curIndex:I
    .restart local v4       #dropDownList:Lco/vine/android/widget/PopupEditText$DropDownListView;
    .restart local v7       #popup:Landroid/widget/PopupWindow;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 403
    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    .restart local v1       #below:Z
    .restart local v2       #consumed:Z
    .restart local v5       #firstItem:I
    .restart local v6       #lastItem:I
    :cond_4
    if-eqz v1, :cond_5

    const/16 v9, 0x14

    if-ne p1, v9, :cond_5

    .line 406
    if-ne v3, v6, :cond_2

    goto :goto_1

    .line 409
    :cond_5
    if-nez v1, :cond_2

    const/16 v9, 0x13

    if-ne p1, v9, :cond_2

    if-ne v3, v5, :cond_2

    goto :goto_1

    .line 389
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 318
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    invoke-direct {p0}, Lco/vine/android/widget/PopupEditText;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 321
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 322
    invoke-virtual {p0}, Lco/vine/android/widget/PopupEditText;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 332
    :goto_0
    return v0

    .line 324
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 325
    invoke-virtual {p0}, Lco/vine/android/widget/PopupEditText;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 326
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 327
    invoke-virtual {p0}, Lco/vine/android/widget/PopupEditText;->dismissDropDown()V

    goto :goto_0

    .line 332
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 337
    iget-object v0, p0, Lco/vine/android/widget/PopupEditText;->mDropDownList:Lco/vine/android/widget/PopupEditText$DropDownListView;

    .line 338
    .local v0, dropDownList:Lco/vine/android/widget/PopupEditText$DropDownListView;
    invoke-virtual {v0}, Lco/vine/android/widget/PopupEditText$DropDownListView;->getSelectedItemPosition()I

    move-result v1

    .line 340
    .local v1, position:I
    invoke-direct {p0}, Lco/vine/android/widget/PopupEditText;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    if-ltz v1, :cond_0

    .line 341
    invoke-virtual {v0, p1, p2}, Lco/vine/android/widget/PopupEditText$DropDownListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 343
    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "text"
    .parameter "start"
    .parameter "lengthBefore"
    .parameter "lengthAfter"

    .prologue
    .line 150
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 151
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lco/vine/android/widget/PopupEditText;->performFilter(Z)V

    .line 152
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasWindowFocus"

    .prologue
    .line 211
    invoke-super {p0, p1}, Landroid/widget/EditText;->onWindowFocusChanged(Z)V

    .line 212
    if-nez p1, :cond_0

    .line 213
    invoke-virtual {p0}, Lco/vine/android/widget/PopupEditText;->dismissDropDown()V

    .line 215
    :cond_0
    return-void
.end method

.method public performFilter(Z)V
    .locals 7
    .parameter "triggerCallback"

    .prologue
    const/4 v5, 0x0

    .line 155
    iget-object v4, p0, Lco/vine/android/widget/PopupEditText;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lco/vine/android/widget/PopupEditText;->mFilterable:Landroid/widget/Filterable;

    if-nez v4, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    invoke-virtual {p0}, Lco/vine/android/widget/PopupEditText;->getSelectionEnd()I

    move-result v0

    .line 160
    .local v0, end:I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 164
    invoke-virtual {p0}, Lco/vine/android/widget/PopupEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 165
    .local v2, text:Ljava/lang/CharSequence;
    iget-object v4, p0, Lco/vine/android/widget/PopupEditText;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v4, v2, v0}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 166
    .local v3, tokenStart:I
    sub-int v4, v0, v3

    iget v6, p0, Lco/vine/android/widget/PopupEditText;->mThreshold:I

    if-ge v4, v6, :cond_2

    .line 167
    invoke-virtual {p0}, Lco/vine/android/widget/PopupEditText;->dismissDropDown()V

    goto :goto_0

    .line 171
    :cond_2
    iget-object v1, p0, Lco/vine/android/widget/PopupEditText;->mHandler:Lco/vine/android/widget/PopupEditText$FilterHandler;

    .line 172
    .local v1, handler:Landroid/os/Handler;
    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 173
    if-eqz p1, :cond_3

    const/4 v4, 0x1

    :goto_1
    invoke-interface {v2, v3, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v5, v4, v5, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    iget-wide v5, p0, Lco/vine/android/widget/PopupEditText;->mThrottleDelay:J

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_1
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 306
    iget-object v0, p0, Lco/vine/android/widget/PopupEditText;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lco/vine/android/widget/PopupEditText;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lco/vine/android/widget/PopupEditText;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 311
    :goto_0
    iget-object v0, p0, Lco/vine/android/widget/PopupEditText;->mDropDownList:Lco/vine/android/widget/PopupEditText$DropDownListView;

    invoke-virtual {v0, p1}, Lco/vine/android/widget/PopupEditText$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 312
    iget-object v0, p0, Lco/vine/android/widget/PopupEditText;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 313
    iput-object p1, p0, Lco/vine/android/widget/PopupEditText;->mAdapter:Landroid/widget/ListAdapter;

    .line 314
    return-void

    .line 309
    :cond_0
    new-instance v0, Lco/vine/android/widget/PopupEditText$AdapterObserver;

    invoke-direct {v0, p0}, Lco/vine/android/widget/PopupEditText$AdapterObserver;-><init>(Lco/vine/android/widget/PopupEditText;)V

    iput-object v0, p0, Lco/vine/android/widget/PopupEditText;->mDataSetObserver:Landroid/database/DataSetObserver;

    goto :goto_0
.end method

.method protected setFrame(IIII)Z
    .locals 2
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 192
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->setFrame(IIII)Z

    move-result v0

    .line 194
    .local v0, result:Z
    invoke-direct {p0}, Lco/vine/android/widget/PopupEditText;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    invoke-virtual {p0}, Lco/vine/android/widget/PopupEditText;->showDropDown()V

    .line 197
    :cond_0
    return v0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 225
    iput-object p1, p0, Lco/vine/android/widget/PopupEditText;->mClick:Landroid/view/View$OnClickListener;

    .line 226
    return-void
.end method

.method public setPopupEditTextListener(Lco/vine/android/widget/PopupEditText$PopupEditTextListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 281
    iput-object p1, p0, Lco/vine/android/widget/PopupEditText;->mListener:Lco/vine/android/widget/PopupEditText$PopupEditTextListener;

    .line 282
    iget-object v0, p0, Lco/vine/android/widget/PopupEditText;->mHandler:Lco/vine/android/widget/PopupEditText$FilterHandler;

    invoke-virtual {v0, p1}, Lco/vine/android/widget/PopupEditText$FilterHandler;->setOnFilterListener(Lco/vine/android/widget/PopupEditText$PopupEditTextListener;)V

    .line 283
    return-void
.end method

.method public setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;Landroid/widget/Filterable;J)V
    .locals 2
    .parameter "tokenizer"
    .parameter "filter"
    .parameter "throttleDelay"

    .prologue
    .line 135
    if-nez p1, :cond_0

    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tokenizer cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    iget-object v0, p0, Lco/vine/android/widget/PopupEditText;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    .line 139
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setAdapter must be called first with a non-null adapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_1
    iput-object p2, p0, Lco/vine/android/widget/PopupEditText;->mFilterable:Landroid/widget/Filterable;

    .line 143
    iput-object p1, p0, Lco/vine/android/widget/PopupEditText;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    .line 144
    iput-wide p3, p0, Lco/vine/android/widget/PopupEditText;->mThrottleDelay:J

    .line 145
    iget-object v0, p0, Lco/vine/android/widget/PopupEditText;->mHandler:Lco/vine/android/widget/PopupEditText$FilterHandler;

    invoke-virtual {v0, p2}, Lco/vine/android/widget/PopupEditText$FilterHandler;->setFilterable(Landroid/widget/Filterable;)V

    .line 146
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 3
    .parameter "tf"
    .parameter "style"

    .prologue
    .line 90
    invoke-virtual {p0}, Lco/vine/android/widget/PopupEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 92
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lco/vine/android/widget/Typefaces;->get(Landroid/content/Context;)Lco/vine/android/widget/Typefaces;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lco/vine/android/widget/Typefaces;->getContentTypeface(II)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 93
    return-void
.end method

.method public showDropDown()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 230
    invoke-virtual {p0}, Lco/vine/android/widget/PopupEditText;->getWindowVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 257
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v1, p0, Lco/vine/android/widget/PopupEditText;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    .line 235
    .local v6, count:I
    if-nez v6, :cond_1

    .line 237
    invoke-virtual {p0}, Lco/vine/android/widget/PopupEditText;->dismissDropDown()V

    .line 238
    iput-boolean v7, p0, Lco/vine/android/widget/PopupEditText;->mShowRequested:Z

    goto :goto_0

    .line 242
    :cond_1
    invoke-virtual {p0}, Lco/vine/android/widget/PopupEditText;->getWidth()I

    move-result v4

    .line 243
    .local v4, width:I
    iget-object v0, p0, Lco/vine/android/widget/PopupEditText;->mPopup:Landroid/widget/PopupWindow;

    .line 244
    .local v0, p:Landroid/widget/PopupWindow;
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 245
    iget v2, p0, Lco/vine/android/widget/PopupEditText;->mDropDownHorizontalOffset:I

    iget v3, p0, Lco/vine/android/widget/PopupEditText;->mDropDownVerticalOffset:I

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 255
    :cond_2
    :goto_1
    iget-object v1, p0, Lco/vine/android/widget/PopupEditText;->mDropDownList:Lco/vine/android/widget/PopupEditText$DropDownListView;

    invoke-virtual {v1}, Lco/vine/android/widget/PopupEditText$DropDownListView;->setSelectionAfterHeaderView()V

    .line 256
    iput-boolean v7, p0, Lco/vine/android/widget/PopupEditText;->mIsShown:Z

    goto :goto_0

    .line 247
    :cond_3
    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 248
    const/4 v1, -0x2

    invoke-virtual {v0, v5, v1}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 249
    invoke-virtual {v0, v7}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 250
    iget v1, p0, Lco/vine/android/widget/PopupEditText;->mDropDownHorizontalOffset:I

    iget v2, p0, Lco/vine/android/widget/PopupEditText;->mDropDownVerticalOffset:I

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 251
    iget-object v1, p0, Lco/vine/android/widget/PopupEditText;->mListener:Lco/vine/android/widget/PopupEditText$PopupEditTextListener;

    if-eqz v1, :cond_2

    .line 252
    iget-object v1, p0, Lco/vine/android/widget/PopupEditText;->mListener:Lco/vine/android/widget/PopupEditText$PopupEditTextListener;

    invoke-interface {v1}, Lco/vine/android/widget/PopupEditText$PopupEditTextListener;->onPopupShown()V

    goto :goto_1
.end method
