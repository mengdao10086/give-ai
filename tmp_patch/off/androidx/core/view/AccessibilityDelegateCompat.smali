.class public Landroidx/core/view/AccessibilityDelegateCompat;
.super Ljava/lang/Object;
.source "AccessibilityDelegateCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/AccessibilityDelegateCompat$Api16Impl;,
        Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;
    }
.end annotation


# static fields
.field private static final DEFAULT_DELEGATE:Landroid/view/View$AccessibilityDelegate;


# instance fields
.field private final mBridge:Landroid/view/View$AccessibilityDelegate;

.field private final mOriginalDelegate:Landroid/view/View$AccessibilityDelegate;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 135
    new-instance v0, Landroid/view/View$AccessibilityDelegate;

    #@2
    invoke-direct {v0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    #@5
    sput-object v0, Landroidx/core/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Landroid/view/View$AccessibilityDelegate;

    #@7
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    .line 144
    sget-object v0, Landroidx/core/view/AccessibilityDelegateCompat;->DEFAULT_DELEGATE:Landroid/view/View$AccessibilityDelegate;

    #@2
    invoke-direct {p0, v0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/view/View$AccessibilityDelegate;)V
    .registers 2

    #@0
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 152
    iput-object p1, p0, Landroidx/core/view/AccessibilityDelegateCompat;->mOriginalDelegate:Landroid/view/View$AccessibilityDelegate;

    #@5
    .line 153
    new-instance p1, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;

    #@7
    invoke-direct {p1, p0}, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;-><init>(Landroidx/core/view/AccessibilityDelegateCompat;)V

    #@a
    iput-object p1, p0, Landroidx/core/view/AccessibilityDelegateCompat;->mBridge:Landroid/view/View$AccessibilityDelegate;

    #@c
    return-void
.end method

.method static getActionList(Landroid/view/View;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;",
            ">;"
        }
    .end annotation

    #@0
    .line 411
    sget v0, Landroidx/core/R$id;->tag_accessibility_actions:I

    #@2
    .line 412
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@5
    move-result-object p0

    #@6
    check-cast p0, Ljava/util/List;

    #@8
    if-nez p0, :cond_e

    #@a
    .line 413
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@d
    move-result-object p0

    #@e
    :cond_e
    return-object p0
.end method

.method private isSpanStillValid(Landroid/text/style/ClickableSpan;Landroid/view/View;)Z
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p1, :cond_22

    #@3
    .line 398
    invoke-virtual {p2}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    #@6
    move-result-object p2

    #@7
    .line 399
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    #@a
    move-result-object p2

    #@b
    invoke-static {p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getClickableSpans(Ljava/lang/CharSequence;)[Landroid/text/style/ClickableSpan;

    #@e
    move-result-object p2

    #@f
    move v1, v0

    #@10
    :goto_10
    if-eqz p2, :cond_22

    #@12
    .line 400
    array-length v2, p2

    #@13
    if-ge v1, v2, :cond_22

    #@15
    .line 401
    aget-object v2, p2, v1

    #@17
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_1f

    #@1d
    const/4 p1, 0x1

    #@1e
    return p1

    #@1f
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_10

    #@22
    :cond_22
    return v0
.end method

.method private performClickableSpanAction(ILandroid/view/View;)Z
    .registers 4

    #@0
    .line 380
    sget v0, Landroidx/core/R$id;->tag_accessibility_clickable_spans:I

    #@2
    .line 382
    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/util/SparseArray;

    #@8
    if-eqz v0, :cond_23

    #@a
    .line 384
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@d
    move-result-object p1

    #@e
    check-cast p1, Ljava/lang/ref/WeakReference;

    #@10
    if-eqz p1, :cond_23

    #@12
    .line 386
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@15
    move-result-object p1

    #@16
    check-cast p1, Landroid/text/style/ClickableSpan;

    #@18
    .line 387
    invoke-direct {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->isSpanStillValid(Landroid/text/style/ClickableSpan;Landroid/view/View;)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_23

    #@1e
    .line 388
    invoke-virtual {p1, p2}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    #@21
    const/4 p1, 0x1

    #@22
    return p1

    #@23
    :cond_23
    const/4 p1, 0x0

    #@24
    return p1
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4

    #@0
    .line 223
    iget-object v0, p0, Landroidx/core/view/AccessibilityDelegateCompat;->mOriginalDelegate:Landroid/view/View$AccessibilityDelegate;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
    .registers 3

    #@0
    .line 330
    iget-object v0, p0, Landroidx/core/view/AccessibilityDelegateCompat;->mOriginalDelegate:Landroid/view/View$AccessibilityDelegate;

    #@2
    invoke-static {v0, p1}, Landroidx/core/view/AccessibilityDelegateCompat$Api16Impl;->getAccessibilityNodeProvider(Landroid/view/View$AccessibilityDelegate;Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;

    #@5
    move-result-object p1

    #@6
    if-eqz p1, :cond_e

    #@8
    .line 332
    new-instance v0, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;

    #@a
    invoke-direct {v0, p1}, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;-><init>(Ljava/lang/Object;)V

    #@d
    return-object v0

    #@e
    :cond_e
    const/4 p1, 0x0

    #@f
    return-object p1
.end method

.method getBridge()Landroid/view/View$AccessibilityDelegate;
    .registers 2

    #@0
    .line 160
    iget-object v0, p0, Landroidx/core/view/AccessibilityDelegateCompat;->mBridge:Landroid/view/View$AccessibilityDelegate;

    #@2
    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    #@0
    .line 265
    iget-object v0, p0, Landroidx/core/view/AccessibilityDelegateCompat;->mOriginalDelegate:Landroid/view/View$AccessibilityDelegate;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    #@5
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 4

    #@0
    .line 285
    iget-object v0, p0, Landroidx/core/view/AccessibilityDelegateCompat;->mOriginalDelegate:Landroid/view/View$AccessibilityDelegate;

    #@2
    .line 286
    invoke-virtual {p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->unwrap()Landroid/view/accessibility/AccessibilityNodeInfo;

    #@5
    move-result-object p2

    #@6
    .line 285
    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@9
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    #@0
    .line 244
    iget-object v0, p0, Landroidx/core/view/AccessibilityDelegateCompat;->mOriginalDelegate:Landroid/view/View$AccessibilityDelegate;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    #@5
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5

    #@0
    .line 310
    iget-object v0, p0, Landroidx/core/view/AccessibilityDelegateCompat;->mOriginalDelegate:Landroid/view/View$AccessibilityDelegate;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 9

    #@0
    .line 360
    invoke-static {p1}, Landroidx/core/view/AccessibilityDelegateCompat;->getActionList(Landroid/view/View;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    move v2, v1

    #@6
    .line 361
    :goto_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@9
    move-result v3

    #@a
    if-ge v2, v3, :cond_20

    #@c
    .line 362
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    #@12
    .line 363
    invoke-virtual {v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    #@15
    move-result v4

    #@16
    if-ne v4, p2, :cond_1d

    #@18
    .line 364
    invoke-virtual {v3, p1, p3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->perform(Landroid/view/View;Landroid/os/Bundle;)Z

    #@1b
    move-result v1

    #@1c
    goto :goto_20

    #@1d
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    #@1f
    goto :goto_6

    #@20
    :cond_20
    :goto_20
    if-nez v1, :cond_28

    #@22
    .line 369
    iget-object v0, p0, Landroidx/core/view/AccessibilityDelegateCompat;->mOriginalDelegate:Landroid/view/View$AccessibilityDelegate;

    #@24
    invoke-static {v0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat$Api16Impl;->performAccessibilityAction(Landroid/view/View$AccessibilityDelegate;Landroid/view/View;ILandroid/os/Bundle;)Z

    #@27
    move-result v1

    #@28
    :cond_28
    if-nez v1, :cond_3b

    #@2a
    .line 371
    sget v0, Landroidx/core/R$id;->accessibility_action_clickable_span:I

    #@2c
    if-ne p2, v0, :cond_3b

    #@2e
    if-eqz p3, :cond_3b

    #@30
    const-string p2, "ACCESSIBILITY_CLICKABLE_SPAN_ID"

    #@32
    const/4 v0, -0x1

    #@33
    .line 373
    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@36
    move-result p2

    #@37
    .line 372
    invoke-direct {p0, p2, p1}, Landroidx/core/view/AccessibilityDelegateCompat;->performClickableSpanAction(ILandroid/view/View;)Z

    #@3a
    move-result v1

    #@3b
    :cond_3b
    return v1
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .registers 4

    #@0
    .line 178
    iget-object v0, p0, Landroidx/core/view/AccessibilityDelegateCompat;->mOriginalDelegate:Landroid/view/View$AccessibilityDelegate;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    #@5
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    #@0
    .line 201
    iget-object v0, p0, Landroidx/core/view/AccessibilityDelegateCompat;->mOriginalDelegate:Landroid/view/View$AccessibilityDelegate;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    #@5
    return-void
.end method
