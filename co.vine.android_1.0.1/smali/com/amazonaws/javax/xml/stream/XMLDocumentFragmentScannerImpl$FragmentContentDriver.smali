.class public Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;
.super Ljava/lang/Object;
.source "XMLDocumentFragmentScannerImpl.java"

# interfaces
.implements Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FragmentContentDriver"
.end annotation


# instance fields
.field private fContinueDispatching:Z

.field private fScanningForMarkup:Z

.field private final synthetic this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;


# direct methods
.method protected constructor <init>(Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 2449
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2455
    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->fContinueDispatching:Z

    .line 2456
    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->fScanningForMarkup:Z

    return-void
.end method

.method private startOfContent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2508
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2509
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    .line 2518
    :goto_0
    return-void

    .line 2511
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2512
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto :goto_0

    .line 2516
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto :goto_0
.end method

.method private startOfMarkup()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x2d

    const/4 v3, 0x0

    .line 2462
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget v2, v1, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    .line 2463
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v0

    .line 2465
    .local v0, ch:I
    sparse-switch v0, :sswitch_data_0

    .line 2495
    invoke-static {v0}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->isValidNameStartChar(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2496
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    .line 2505
    :cond_0
    :goto_0
    return-void

    .line 2467
    :sswitch_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v2, 0x17

    invoke-virtual {v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    .line 2468
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v1, v0}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    goto :goto_0

    .line 2472
    :sswitch_1
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v1, v0}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    .line 2473
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v1, v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2474
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v1, v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2475
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const-string v2, "InvalidCommentStart"

    invoke-virtual {v1, v2, v3}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2478
    :cond_1
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v2, 0x1b

    invoke-virtual {v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto :goto_0

    .line 2480
    :cond_2
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    sget-object v2, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->cdata:[C

    invoke-virtual {v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipString([C)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2481
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto :goto_0

    .line 2483
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->scanForDoctypeHook()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2484
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const-string v2, "MarkupNotRecognizedInContent"

    invoke-virtual {v1, v2, v3}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2490
    :sswitch_2
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    .line 2491
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v1, v0}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    goto :goto_0

    .line 2499
    :cond_4
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const-string v2, "MarkupNotRecognizedInContent"

    invoke-virtual {v1, v2, v3}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2465
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_1
        0x2f -> :sswitch_2
        0x3f -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public decideSubState()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2535
    :goto_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget v0, v0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fScannerState:I

    const/16 v1, 0x16

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget v0, v0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fScannerState:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_1

    .line 2537
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget v0, v0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fScannerState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2545
    :pswitch_0
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->startOfMarkup()V

    goto :goto_0

    .line 2540
    :pswitch_1
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->startOfContent()V

    goto :goto_0

    .line 2550
    :cond_1
    return-void

    .line 2537
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected elementDepthIsZeroHook()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 3073
    const/4 v0, 0x0

    return v0
.end method

.method protected endOfFileHook(Ljava/io/EOFException;)V
    .locals 3
    .parameter "e"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 3105
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget v0, v0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    if-eqz v0, :cond_0

    .line 3106
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const-string v1, "PrematureEOF"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3109
    :cond_0
    return-void
.end method

.method public next()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x1c

    const/4 v4, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2580
    :try_start_0
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget v7, v7, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fScannerState:I

    packed-switch v7, :pswitch_data_0

    .line 2608
    :goto_0
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v7, v7, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fIsCoalesce:Z

    if-eqz v7, :cond_5

    .line 2609
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fUsebuffer:Z

    .line 2611
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v7, v7, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasCharacterData:Z

    if-eqz v7, :cond_3

    .line 2615
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget v7, v7, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fScannerState:I

    const/16 v8, 0x23

    if-eq v7, v8, :cond_5

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget v7, v7, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fScannerState:I

    if-eq v7, v9, :cond_5

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget v7, v7, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fScannerState:I

    const/16 v8, 0x25

    if-eq v7, v8, :cond_5

    .line 2617
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasCharacterData:Z

    .line 3031
    :cond_0
    :goto_1
    return v4

    .line 2582
    :pswitch_0
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v7, v7, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v7}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v1

    .line 2583
    .local v1, ch:I
    const/16 v7, 0x3c

    if-ne v1, v7, :cond_1

    .line 2584
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v7, v7, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v7}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanChar()I

    .line 2585
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v8, 0x15

    invoke-virtual {v7, v8}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    .line 2600
    .end local v1           #ch:I
    :pswitch_1
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->startOfMarkup()V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3026
    :catch_0
    move-exception v2

    .line 3027
    .local v2, e:Ljava/io/EOFException;
    invoke-virtual {p0, v2}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->endOfFileHook(Ljava/io/EOFException;)V

    .line 3028
    const/4 v4, -0x1

    goto :goto_1

    .line 2587
    .end local v2           #e:Ljava/io/EOFException;
    .restart local v1       #ch:I
    :cond_1
    const/16 v7, 0x26

    if-ne v1, v7, :cond_2

    .line 2588
    :try_start_1
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v7, v7, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v7}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanChar()I

    .line 2589
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v8, 0x1c

    invoke-virtual {v7, v8}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto :goto_0

    .line 2594
    :cond_2
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v8, 0x25

    invoke-virtual {v7, v8}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto :goto_0

    .line 2623
    .end local v1           #ch:I
    :cond_3
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v7, v7, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasCData:Z

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v7, v7, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasEntityReference:Z

    if-eqz v7, :cond_5

    .line 2628
    :cond_4
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget v7, v7, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fScannerState:I

    const/16 v8, 0x23

    if-eq v7, v8, :cond_5

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget v7, v7, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fScannerState:I

    if-eq v7, v9, :cond_5

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget v7, v7, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fScannerState:I

    const/16 v8, 0x25

    if-eq v7, v8, :cond_5

    .line 2631
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasCData:Z

    .line 2632
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasEntityReference:Z

    goto :goto_1

    .line 2643
    :cond_5
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget v7, v7, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fScannerState:I

    sparse-switch v7, :sswitch_data_0

    .line 3021
    new-instance v4, Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Scanner State "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget v6, v6, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fScannerState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " not Recognized "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2646
    :sswitch_0
    const/4 v4, 0x7

    goto/16 :goto_1

    .line 2652
    :sswitch_1
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    invoke-virtual {v6}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->scanStartElement()Z

    move-result v6

    iput-boolean v6, v4, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEmptyElement:Z

    .line 2654
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v4, v4, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEmptyElement:Z

    if-eqz v4, :cond_6

    .line 2655
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v6, 0x27

    invoke-virtual {v4, v6}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    :goto_2
    move v4, v5

    .line 2660
    goto/16 :goto_1

    .line 2658
    :cond_6
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v6, 0x16

    invoke-virtual {v4, v6}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto :goto_2

    .line 2669
    :sswitch_2
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v8, v8, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasEntityReference:Z

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v8, v8, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasCData:Z

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v8, v8, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasCharacterData:Z

    if-eqz v8, :cond_b

    :cond_7
    :goto_3
    iput-boolean v5, v7, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fUsebuffer:Z

    .line 2672
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fIsCoalesce:Z

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasEntityReference:Z

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasCData:Z

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasCharacterData:Z

    if-eqz v5, :cond_c

    .line 2673
    :cond_8
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasEntityReference:Z

    .line 2674
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasCData:Z

    .line 2675
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasCharacterData:Z

    .line 2676
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fUsebuffer:Z

    .line 2684
    :goto_4
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fTempString:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    const/4 v6, 0x0

    iput v6, v5, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->length:I

    .line 2685
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v6, v6, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fTempString:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    invoke-virtual {v5, v6}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanContent(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)I

    move-result v0

    .line 2689
    .local v0, c:I
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v6, 0x3c

    invoke-virtual {v5, v6}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2691
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2693
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget v6, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    .line 2694
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasCharacterData:Z

    .line 2695
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v6, 0x27

    invoke-virtual {v5, v6}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    .line 2713
    :cond_9
    :goto_5
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fUsebuffer:Z

    if-eqz v5, :cond_a

    .line 2714
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v6, v6, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fTempString:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    invoke-virtual {v5, v6}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)V

    .line 2715
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fTempString:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    const/4 v6, 0x0

    iput v6, v5, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->length:I

    .line 2720
    :cond_a
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->dtdGrammarUtil:Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->dtdGrammarUtil:Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;

    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v6, v6, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v5, v6}, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->isIgnorableWhiteSpace(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2722
    const/4 v4, 0x6

    goto/16 :goto_1

    .end local v0           #c:I
    :cond_b
    move v5, v6

    .line 2669
    goto/16 :goto_3

    .line 2679
    :cond_c
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v5}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->clear()V

    goto :goto_4

    .line 2697
    .restart local v0       #c:I
    :cond_d
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v5}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v5

    invoke-static {v5}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLChar;->isNameStart(I)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 2698
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget v6, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    .line 2699
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasCharacterData:Z

    .line 2700
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v6, 0x26

    invoke-virtual {v5, v6}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto :goto_5

    .line 2702
    :cond_e
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v6, 0x15

    invoke-virtual {v5, v6}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    .line 2704
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fIsCoalesce:Z

    if-eqz v5, :cond_9

    .line 2705
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fUsebuffer:Z

    .line 2706
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasCharacterData:Z

    .line 2707
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v4, v4, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fTempString:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    invoke-virtual {v4, v5}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)V

    .line 2708
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v4, v4, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fTempString:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    const/4 v5, 0x0

    iput v5, v4, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->length:I

    .line 2709
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v4, v4, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fDriver:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    invoke-interface {v4}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;->next()I

    move-result v4

    goto/16 :goto_1

    .line 2728
    :cond_f
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fUsebuffer:Z

    .line 2733
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v6, v6, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fTempString:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    invoke-virtual {v5, v6}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)V

    .line 2734
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fTempString:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    const/4 v6, 0x0

    iput v6, v5, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->length:I

    .line 2736
    const/16 v5, 0xd

    if-ne v0, v5, :cond_11

    .line 2742
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v5}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanChar()I

    .line 2743
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fUsebuffer:Z

    .line 2744
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    int-to-char v6, v0

    invoke-virtual {v5, v6}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    .line 2745
    const/4 v0, -0x1

    .line 2777
    :cond_10
    :goto_6
    const/16 v5, 0x3c

    if-ne v0, v5, :cond_14

    .line 2778
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v5}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanChar()I

    .line 2779
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v6, 0x15

    invoke-virtual {v5, v6}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    .line 2817
    :goto_7
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fIsCoalesce:Z

    if-eqz v5, :cond_18

    .line 2818
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasCharacterData:Z

    .line 2819
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v4, v4, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fDriver:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    invoke-interface {v4}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;->next()I

    move-result v4

    goto/16 :goto_1

    .line 2747
    :cond_11
    const/16 v5, 0x5d

    if-ne v0, v5, :cond_10

    .line 2750
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fUsebuffer:Z

    .line 2751
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v6, v6, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v6}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v6

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    .line 2755
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fInScanContent:Z

    .line 2760
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 2761
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    .line 2762
    :goto_8
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 2763
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_8

    .line 2765
    :cond_12
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v6, 0x3e

    invoke-virtual {v5, v6}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 2766
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const-string v6, "CDEndInContent"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2769
    :cond_13
    const/4 v0, -0x1

    .line 2770
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fInScanContent:Z

    goto/16 :goto_6

    .line 2782
    :cond_14
    const/16 v5, 0x26

    if-ne v0, v5, :cond_15

    .line 2783
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v5}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanChar()I

    .line 2784
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v6, 0x1c

    invoke-virtual {v5, v6}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto/16 :goto_7

    .line 2787
    :cond_15
    const/4 v5, -0x1

    if-eq v0, v5, :cond_17

    invoke-static {v0}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->isInvalidLiteral(I)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 2788
    invoke-static {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 2790
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v6, v6, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v5, v6}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->scanSurrogates(Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;)Z

    .line 2791
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v6, 0x16

    invoke-virtual {v5, v6}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto/16 :goto_7

    .line 2794
    :cond_16
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const-string v6, "InvalidCharInContent"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0x10

    invoke-static {v0, v9}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2797
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v5}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanChar()I

    goto/16 :goto_7

    .line 2802
    :cond_17
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v6, v6, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v5, v6}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->scanContent(Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;)I

    move-result v0

    .line 2805
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fIsCoalesce:Z

    if-nez v5, :cond_10

    .line 2806
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v6, 0x16

    invoke-virtual {v5, v6}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto/16 :goto_7

    .line 2821
    :cond_18
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->dtdGrammarUtil:Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->dtdGrammarUtil:Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;

    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v6, v6, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v5, v6}, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->isIgnorableWhiteSpace(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2823
    const/4 v4, 0x6

    goto/16 :goto_1

    .line 2831
    .end local v0           #c:I
    :sswitch_3
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v4, v4, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEmptyElement:Z

    if-eqz v4, :cond_1a

    .line 2833
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEmptyElement:Z

    .line 2834
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v5, 0x16

    invoke-virtual {v4, v5}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    .line 2837
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget v4, v4, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    if-nez v4, :cond_19

    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->elementDepthIsZeroHook()Z

    move-result v4

    if-eqz v4, :cond_19

    const/4 v4, 0x2

    goto/16 :goto_1

    :cond_19
    const/4 v4, 0x2

    goto/16 :goto_1

    .line 2840
    :cond_1a
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    invoke-virtual {v4}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->scanEndElement()I

    move-result v4

    if-nez v4, :cond_1b

    .line 2842
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->elementDepthIsZeroHook()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 2846
    const/4 v4, 0x2

    goto/16 :goto_1

    .line 2850
    :cond_1b
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v5, 0x16

    invoke-virtual {v4, v5}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    .line 2851
    const/4 v4, 0x2

    goto/16 :goto_1

    .line 2855
    :sswitch_4
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    invoke-virtual {v4}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->scanComment()V

    .line 2856
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v5, 0x16

    invoke-virtual {v4, v5}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    .line 2857
    const/4 v4, 0x5

    goto/16 :goto_1

    .line 2862
    :sswitch_5
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v4, v4, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v4}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->clear()V

    .line 2866
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v4, v5}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->scanPI(Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;)V

    .line 2867
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v5, 0x16

    invoke-virtual {v4, v5}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    .line 2868
    const/4 v4, 0x3

    goto/16 :goto_1

    .line 2877
    :sswitch_6
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fIsCoalesce:Z

    if-eqz v5, :cond_1d

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasEntityReference:Z

    if-nez v5, :cond_1c

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasCData:Z

    if-nez v5, :cond_1c

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasCharacterData:Z

    if-eqz v5, :cond_1d

    .line 2878
    :cond_1c
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasCData:Z

    .line 2879
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasEntityReference:Z

    .line 2880
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasCharacterData:Z

    .line 2885
    :goto_9
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fUsebuffer:Z

    .line 2887
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v6, v6, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->scanCDATASection(Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;Z)Z

    .line 2888
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v6, 0x16

    invoke-virtual {v5, v6}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    .line 2896
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fIsCoalesce:Z

    if-eqz v5, :cond_1e

    .line 2897
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasCData:Z

    .line 2899
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v4, v4, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fDriver:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    invoke-interface {v4}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;->next()I

    move-result v4

    goto/16 :goto_1

    .line 2883
    :cond_1d
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v5}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->clear()V

    goto :goto_9

    .line 2900
    :cond_1e
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fReportCdataEvent:Z

    if-eqz v5, :cond_0

    .line 2901
    const/16 v4, 0xc

    goto/16 :goto_1

    .line 2909
    :sswitch_7
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget v6, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    .line 2910
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->foundBuiltInRefs:Z

    .line 2914
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fIsCoalesce:Z

    if-eqz v5, :cond_20

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasEntityReference:Z

    if-nez v5, :cond_1f

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasCData:Z

    if-nez v5, :cond_1f

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasCharacterData:Z

    if-eqz v5, :cond_20

    .line 2917
    :cond_1f
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasEntityReference:Z

    .line 2918
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasCData:Z

    .line 2919
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasCharacterData:Z

    .line 2924
    :goto_a
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fUsebuffer:Z

    .line 2926
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v6, 0x23

    invoke-virtual {v5, v6}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 2927
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v6, v6, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->scanCharReferenceValue(Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;)I

    .line 2928
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget v6, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    .line 2929
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fIsCoalesce:Z

    if-nez v5, :cond_22

    .line 2930
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v6, 0x16

    invoke-virtual {v5, v6}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto/16 :goto_1

    .line 2922
    :cond_20
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v5}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->clear()V

    goto :goto_a

    .line 2936
    :cond_21
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v6, v6, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v5, v6}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->scanEntityReference(Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;)V

    .line 2941
    :cond_22
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fScannerState:I

    const/16 v6, 0x29

    if-ne v5, v6, :cond_23

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fIsCoalesce:Z

    if-nez v5, :cond_23

    .line 2942
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v6, 0x16

    invoke-virtual {v5, v6}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto/16 :goto_1

    .line 2947
    :cond_23
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget v4, v4, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fScannerState:I

    const/16 v5, 0x24

    if-ne v4, v5, :cond_24

    .line 2948
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasEntityReference:Z

    .line 2949
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v4, v4, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fDriver:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    invoke-interface {v4}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;->next()I

    move-result v4

    goto/16 :goto_1

    .line 2952
    :cond_24
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget v4, v4, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fScannerState:I

    if-ne v4, v9, :cond_25

    .line 2953
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v5, 0x16

    invoke-virtual {v4, v5}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    .line 2954
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v4, v4, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fReplaceEntityReferences:Z

    if-nez v4, :cond_25

    .line 2955
    const/16 v4, 0x9

    goto/16 :goto_1

    .line 2960
    :cond_25
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v5, 0x16

    invoke-virtual {v4, v5}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    .line 2961
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasEntityReference:Z

    .line 2962
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v4, v4, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fDriver:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    invoke-interface {v4}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;->next()I

    move-result v4

    goto/16 :goto_1

    .line 2967
    :sswitch_8
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v4, v4, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const-string v5, "<?xml"

    invoke-virtual {v4, v5}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 2968
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget v5, v4, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    .line 2971
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v4, v4, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v4

    invoke-static {v4}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->isValidNameChar(I)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 2972
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v4, v4, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v4}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->clear()V

    .line 2973
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v4, v4, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    const-string v5, "xml"

    invoke-virtual {v4, v5}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 2975
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v4, v4, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fNamespaces:Z

    if-eqz v4, :cond_26

    .line 2976
    :goto_b
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v4, v4, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v4

    invoke-static {v4}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->isValidNCName(I)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 2977
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v4, v4, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v5}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v5

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_b

    .line 2981
    :cond_26
    :goto_c
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v4, v4, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v4

    invoke-static {v4}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->isValidNameChar(I)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 2982
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v4, v4, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v5}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v5

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_c

    .line 2985
    :cond_27
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v4, v4, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->ch:[C

    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v6, v6, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    iget v6, v6, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->offset:I

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v7, v7, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    iget v7, v7, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->length:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v3

    .line 2986
    .local v3, target:Ljava/lang/String;
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v4, v4, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v4}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->clear()V

    .line 2987
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v4, v3, v5}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->scanPIData(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;)V

    .line 2997
    .end local v3           #target:Ljava/lang/String;
    :cond_28
    :goto_d
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v4, v4, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    iget-object v4, v4, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->mayReadChunks:Z

    .line 2998
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v5, 0x16

    invoke-virtual {v4, v5}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    .line 3002
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v4, v4, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fDriver:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    invoke-interface {v4}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;->next()I

    move-result v4

    goto/16 :goto_1

    .line 2993
    :cond_29
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->scanXMLDeclOrTextDecl(Z)V

    goto :goto_d

    .line 3006
    :sswitch_9
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->scanRootElementHook()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 3008
    const/4 v4, -0x1

    goto/16 :goto_1

    .line 3010
    :cond_2a
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v5, 0x16

    invoke-virtual {v4, v5}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    .line 3031
    const/4 v4, -0x1

    goto/16 :goto_1

    .line 3014
    :sswitch_a
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v5}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->clear()V

    .line 3015
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-object v6, v6, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->scanCharReferenceValue(Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;)I

    .line 3016
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget v6, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    .line 3017
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/16 v6, 0x16

    invoke-virtual {v5, v6}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 2580
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 2643
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x17 -> :sswitch_5
        0x1a -> :sswitch_9
        0x1b -> :sswitch_4
        0x1c -> :sswitch_7
        0x23 -> :sswitch_6
        0x24 -> :sswitch_8
        0x25 -> :sswitch_2
        0x26 -> :sswitch_1
        0x27 -> :sswitch_3
        0x28 -> :sswitch_a
    .end sparse-switch
.end method

.method protected scanForDoctypeHook()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 3055
    const/4 v0, 0x0

    return v0
.end method

.method protected scanRootElementHook()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 3090
    const/4 v0, 0x0

    return v0
.end method
