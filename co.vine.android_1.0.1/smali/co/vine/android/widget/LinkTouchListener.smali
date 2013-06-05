.class public Lco/vine/android/widget/LinkTouchListener;
.super Ljava/lang/Object;
.source "LinkTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final mContentRect:Landroid/graphics/Rect;

.field private mLastUrlDownX:I

.field private mLastUrlDownY:I

.field private final mLayout:Landroid/text/Layout;

.field private mSpan:Lco/vine/android/widget/StyledClickableSpan;

.field private mSpannable:Landroid/text/Spannable;

.field private mTextView:Landroid/widget/TextView;

.field private final mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/widget/TextView;ILandroid/text/Spannable;)V
    .locals 5
    .parameter "tv"
    .parameter "slop"
    .parameter "spannable"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "s"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rectangle is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getLeft()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getTop()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getRight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getBottom()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/widget/TextView;->getBottom()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lco/vine/android/widget/LinkTouchListener;->mContentRect:Landroid/graphics/Rect;

    .line 28
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/widget/LinkTouchListener;->mLayout:Landroid/text/Layout;

    .line 29
    iput-object p1, p0, Lco/vine/android/widget/LinkTouchListener;->mTextView:Landroid/widget/TextView;

    .line 30
    iput p2, p0, Lco/vine/android/widget/LinkTouchListener;->mTouchSlop:I

    .line 31
    iput-object p3, p0, Lco/vine/android/widget/LinkTouchListener;->mSpannable:Landroid/text/Spannable;

    .line 32
    return-void
.end method

.method private deselectSpan()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 101
    iget-object v0, p0, Lco/vine/android/widget/LinkTouchListener;->mSpan:Lco/vine/android/widget/StyledClickableSpan;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/vine/android/widget/LinkTouchListener;->mSpan:Lco/vine/android/widget/StyledClickableSpan;

    invoke-virtual {v0}, Lco/vine/android/widget/StyledClickableSpan;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const-string v0, "s"

    const-string v1, "deselecting span"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lco/vine/android/widget/LinkTouchListener;->mSpan:Lco/vine/android/widget/StyledClickableSpan;

    invoke-virtual {v0, v2}, Lco/vine/android/widget/StyledClickableSpan;->select(Z)V

    .line 104
    iput v2, p0, Lco/vine/android/widget/LinkTouchListener;->mLastUrlDownX:I

    .line 105
    iput v2, p0, Lco/vine/android/widget/LinkTouchListener;->mLastUrlDownY:I

    .line 106
    iget-object v0, p0, Lco/vine/android/widget/LinkTouchListener;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 108
    :cond_0
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 17
    .parameter "view"
    .parameter "event"

    .prologue
    .line 36
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    and-int/lit16 v1, v14, 0xff

    .line 37
    .local v1, action:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    float-to-int v12, v14

    .line 38
    .local v12, x:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    float-to-int v13, v14

    .line 40
    .local v13, y:I
    const-string v14, "s"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "on touch, action: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " |x: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " |y: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const-string v14, "s"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "on touch, view:  |left: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " |right: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    move-object/from16 v0, p0

    iget-object v7, v0, Lco/vine/android/widget/LinkTouchListener;->mContentRect:Landroid/graphics/Rect;

    .line 44
    .local v7, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/widget/LinkTouchListener;->mLayout:Landroid/text/Layout;

    .line 47
    .local v2, layout:Landroid/text/Layout;
    iget v14, v7, Landroid/graphics/Rect;->left:I

    add-int v10, v14, v12

    .line 48
    .local v10, translatedX:I
    iget v14, v7, Landroid/graphics/Rect;->top:I

    add-int v11, v14, v13

    .line 49
    .local v11, translatedY:I
    invoke-virtual {v2, v11}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v3

    .line 51
    .local v3, line:I
    const-string v14, "s"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "translated x: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " | "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineMax(I)F

    move-result v14

    float-to-int v4, v14

    .line 58
    .local v4, lineMaxX:I
    if-le v10, v4, :cond_0

    .line 59
    invoke-direct/range {p0 .. p0}, Lco/vine/android/widget/LinkTouchListener;->deselectSpan()V

    .line 60
    const/4 v14, 0x0

    .line 97
    :goto_0
    return v14

    .line 64
    :cond_0
    if-nez v1, :cond_1

    .line 65
    move-object/from16 v0, p0

    iput v12, v0, Lco/vine/android/widget/LinkTouchListener;->mLastUrlDownX:I

    .line 66
    move-object/from16 v0, p0

    iput v13, v0, Lco/vine/android/widget/LinkTouchListener;->mLastUrlDownY:I

    .line 69
    :cond_1
    int-to-float v14, v10

    invoke-virtual {v2, v3, v14}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v6

    .line 70
    .local v6, offset:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/widget/LinkTouchListener;->mSpannable:Landroid/text/Spannable;

    const-class v15, Lco/vine/android/widget/StyledClickableSpan;

    invoke-interface {v14, v6, v6, v15}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lco/vine/android/widget/StyledClickableSpan;

    .line 71
    .local v5, link:[Lco/vine/android/widget/StyledClickableSpan;
    const-string v14, "s"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "size is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    array-length v0, v5

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    move-object/from16 v0, p0

    iget-object v8, v0, Lco/vine/android/widget/LinkTouchListener;->mSpan:Lco/vine/android/widget/StyledClickableSpan;

    .line 74
    .local v8, selectedLink:Lco/vine/android/widget/StyledClickableSpan;
    move-object/from16 v0, p0

    iget-object v9, v0, Lco/vine/android/widget/LinkTouchListener;->mTextView:Landroid/widget/TextView;

    .line 76
    .local v9, textView:Landroid/widget/TextView;
    const-string v14, "s"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "contains?"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v7, v10, v11}, Landroid/graphics/Rect;->contains(II)Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {v7, v10, v11}, Landroid/graphics/Rect;->contains(II)Z

    move-result v14

    if-eqz v14, :cond_5

    const/4 v14, 0x1

    if-eq v1, v14, :cond_2

    if-nez v1, :cond_5

    .line 80
    :cond_2
    const/4 v14, 0x1

    if-ne v1, v14, :cond_4

    .line 81
    if-eqz v8, :cond_3

    .line 82
    invoke-virtual {v8, v9}, Lco/vine/android/widget/StyledClickableSpan;->onClick(Landroid/view/View;)V

    .line 83
    invoke-direct/range {p0 .. p0}, Lco/vine/android/widget/LinkTouchListener;->deselectSpan()V

    .line 91
    :cond_3
    :goto_1
    const/4 v14, 0x1

    goto :goto_0

    .line 86
    :cond_4
    const-string v14, "s"

    const-string v15, "selecting span"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Lco/vine/android/widget/StyledClickableSpan;->select(Z)V

    .line 88
    const/4 v14, 0x0

    aget-object v14, v5, v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lco/vine/android/widget/LinkTouchListener;->mSpan:Lco/vine/android/widget/StyledClickableSpan;

    .line 89
    invoke-virtual {v9}, Landroid/widget/TextView;->invalidate()V

    goto :goto_1

    .line 92
    :cond_5
    if-eqz v8, :cond_7

    move-object/from16 v0, p0

    iget v14, v0, Lco/vine/android/widget/LinkTouchListener;->mLastUrlDownX:I

    sub-int v14, v12, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lco/vine/android/widget/LinkTouchListener;->mTouchSlop:I

    if-gt v14, v15, :cond_6

    move-object/from16 v0, p0

    iget v14, v0, Lco/vine/android/widget/LinkTouchListener;->mLastUrlDownY:I

    sub-int v14, v13, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lco/vine/android/widget/LinkTouchListener;->mTouchSlop:I

    if-le v14, v15, :cond_7

    .line 94
    :cond_6
    const-string v14, "s"

    const-string v15, "deselecting due to slop"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-direct/range {p0 .. p0}, Lco/vine/android/widget/LinkTouchListener;->deselectSpan()V

    .line 97
    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_0
.end method
