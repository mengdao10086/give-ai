.class public Landroidx/core/view/ViewCompat;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/ViewCompat$Api20Impl;,
        Landroidx/core/view/ViewCompat$Api28Impl;,
        Landroidx/core/view/ViewCompat$Api16Impl;,
        Landroidx/core/view/ViewCompat$Api17Impl;,
        Landroidx/core/view/ViewCompat$Api24Impl;,
        Landroidx/core/view/ViewCompat$Api15Impl;,
        Landroidx/core/view/ViewCompat$Api19Impl;,
        Landroidx/core/view/ViewCompat$Api18Impl;,
        Landroidx/core/view/ViewCompat$Api26Impl;,
        Landroidx/core/view/ViewCompat$Api30Impl;,
        Landroidx/core/view/ViewCompat$Api29Impl;,
        Landroidx/core/view/ViewCompat$Api23Impl;,
        Landroidx/core/view/ViewCompat$Api21Impl;,
        Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;,
        Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;,
        Landroidx/core/view/ViewCompat$AccessibilityViewProperty;,
        Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;,
        Landroidx/core/view/ViewCompat$OnReceiveContentListenerAdapter;,
        Landroidx/core/view/ViewCompat$Api31Impl;,
        Landroidx/core/view/ViewCompat$ScrollIndicators;,
        Landroidx/core/view/ViewCompat$NestedScrollType;,
        Landroidx/core/view/ViewCompat$ScrollAxis;,
        Landroidx/core/view/ViewCompat$FocusRelativeDirection;,
        Landroidx/core/view/ViewCompat$FocusRealDirection;,
        Landroidx/core/view/ViewCompat$FocusDirection;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_ACTIONS_RESOURCE_IDS:[I

.field public static final ACCESSIBILITY_LIVE_REGION_ASSERTIVE:I = 0x2

.field public static final ACCESSIBILITY_LIVE_REGION_NONE:I = 0x0

.field public static final ACCESSIBILITY_LIVE_REGION_POLITE:I = 0x1

.field public static final IMPORTANT_FOR_ACCESSIBILITY_AUTO:I = 0x0

.field public static final IMPORTANT_FOR_ACCESSIBILITY_NO:I = 0x2

.field public static final IMPORTANT_FOR_ACCESSIBILITY_NO_HIDE_DESCENDANTS:I = 0x4

.field public static final IMPORTANT_FOR_ACCESSIBILITY_YES:I = 0x1

.field public static final LAYER_TYPE_HARDWARE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LAYER_TYPE_NONE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LAYER_TYPE_SOFTWARE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LAYOUT_DIRECTION_INHERIT:I = 0x2

.field public static final LAYOUT_DIRECTION_LOCALE:I = 0x3

.field public static final LAYOUT_DIRECTION_LTR:I = 0x0

.field public static final LAYOUT_DIRECTION_RTL:I = 0x1

.field public static final MEASURED_HEIGHT_STATE_SHIFT:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEASURED_SIZE_MASK:I = 0xffffff
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEASURED_STATE_MASK:I = -0x1000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEASURED_STATE_TOO_SMALL:I = 0x1000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR:Landroidx/core/view/OnReceiveContentViewBehavior;

.field public static final OVER_SCROLL_ALWAYS:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OVER_SCROLL_IF_CONTENT_SCROLLS:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OVER_SCROLL_NEVER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCROLL_AXIS_HORIZONTAL:I = 0x1

.field public static final SCROLL_AXIS_NONE:I = 0x0

.field public static final SCROLL_AXIS_VERTICAL:I = 0x2

.field public static final SCROLL_INDICATOR_BOTTOM:I = 0x2

.field public static final SCROLL_INDICATOR_END:I = 0x20

.field public static final SCROLL_INDICATOR_LEFT:I = 0x4

.field public static final SCROLL_INDICATOR_RIGHT:I = 0x8

.field public static final SCROLL_INDICATOR_START:I = 0x10

.field public static final SCROLL_INDICATOR_TOP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ViewCompat"

.field public static final TYPE_NON_TOUCH:I = 0x1

.field public static final TYPE_TOUCH:I

.field private static sAccessibilityDelegateCheckFailed:Z

.field private static sAccessibilityDelegateField:Ljava/lang/reflect/Field;

.field private static final sAccessibilityPaneVisibilityManager:Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;

.field private static sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

.field private static sDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;

.field private static sDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

.field private static sMinHeightField:Ljava/lang/reflect/Field;

.field private static sMinHeightFieldFetched:Z

.field private static sMinWidthField:Ljava/lang/reflect/Field;

.field private static sMinWidthFieldFetched:Z

.field private static final sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sTempDetachBound:Z

.field private static sThreadLocalRect:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private static sTransitionNameMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Landroidx/core/view/ViewPropertyAnimatorCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    #@0
    .line 477
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@6
    sput-object v0, Landroidx/core/view/ViewCompat;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    #@8
    const/4 v0, 0x0

    #@9
    .line 489
    sput-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    #@b
    const/4 v0, 0x0

    #@c
    .line 493
    sput-boolean v0, Landroidx/core/view/ViewCompat;->sAccessibilityDelegateCheckFailed:Z

    #@e
    const/16 v2, 0x20

    #@10
    new-array v2, v2, [I

    #@12
    .line 1243
    sget v3, Landroidx/core/R$id;->accessibility_custom_action_0:I

    #@14
    aput v3, v2, v0

    #@16
    sget v0, Landroidx/core/R$id;->accessibility_custom_action_1:I

    #@18
    aput v0, v2, v1

    #@1a
    const/4 v0, 0x2

    #@1b
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_2:I

    #@1d
    aput v1, v2, v0

    #@1f
    const/4 v0, 0x3

    #@20
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_3:I

    #@22
    aput v1, v2, v0

    #@24
    const/4 v0, 0x4

    #@25
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_4:I

    #@27
    aput v1, v2, v0

    #@29
    const/4 v0, 0x5

    #@2a
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_5:I

    #@2c
    aput v1, v2, v0

    #@2e
    const/4 v0, 0x6

    #@2f
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_6:I

    #@31
    aput v1, v2, v0

    #@33
    const/4 v0, 0x7

    #@34
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_7:I

    #@36
    aput v1, v2, v0

    #@38
    const/16 v0, 0x8

    #@3a
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_8:I

    #@3c
    aput v1, v2, v0

    #@3e
    const/16 v0, 0x9

    #@40
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_9:I

    #@42
    aput v1, v2, v0

    #@44
    const/16 v0, 0xa

    #@46
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_10:I

    #@48
    aput v1, v2, v0

    #@4a
    const/16 v0, 0xb

    #@4c
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_11:I

    #@4e
    aput v1, v2, v0

    #@50
    const/16 v0, 0xc

    #@52
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_12:I

    #@54
    aput v1, v2, v0

    #@56
    const/16 v0, 0xd

    #@58
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_13:I

    #@5a
    aput v1, v2, v0

    #@5c
    const/16 v0, 0xe

    #@5e
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_14:I

    #@60
    aput v1, v2, v0

    #@62
    const/16 v0, 0xf

    #@64
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_15:I

    #@66
    aput v1, v2, v0

    #@68
    const/16 v0, 0x10

    #@6a
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_16:I

    #@6c
    aput v1, v2, v0

    #@6e
    const/16 v0, 0x11

    #@70
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_17:I

    #@72
    aput v1, v2, v0

    #@74
    const/16 v0, 0x12

    #@76
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_18:I

    #@78
    aput v1, v2, v0

    #@7a
    const/16 v0, 0x13

    #@7c
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_19:I

    #@7e
    aput v1, v2, v0

    #@80
    const/16 v0, 0x14

    #@82
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_20:I

    #@84
    aput v1, v2, v0

    #@86
    const/16 v0, 0x15

    #@88
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_21:I

    #@8a
    aput v1, v2, v0

    #@8c
    const/16 v0, 0x16

    #@8e
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_22:I

    #@90
    aput v1, v2, v0

    #@92
    const/16 v0, 0x17

    #@94
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_23:I

    #@96
    aput v1, v2, v0

    #@98
    const/16 v0, 0x18

    #@9a
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_24:I

    #@9c
    aput v1, v2, v0

    #@9e
    const/16 v0, 0x19

    #@a0
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_25:I

    #@a2
    aput v1, v2, v0

    #@a4
    const/16 v0, 0x1a

    #@a6
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_26:I

    #@a8
    aput v1, v2, v0

    #@aa
    const/16 v0, 0x1b

    #@ac
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_27:I

    #@ae
    aput v1, v2, v0

    #@b0
    const/16 v0, 0x1c

    #@b2
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_28:I

    #@b4
    aput v1, v2, v0

    #@b6
    const/16 v0, 0x1d

    #@b8
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_29:I

    #@ba
    aput v1, v2, v0

    #@bc
    const/16 v0, 0x1e

    #@be
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_30:I

    #@c0
    aput v1, v2, v0

    #@c2
    const/16 v0, 0x1f

    #@c4
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_31:I

    #@c6
    aput v1, v2, v0

    #@c8
    sput-object v2, Landroidx/core/view/ViewCompat;->ACCESSIBILITY_ACTIONS_RESOURCE_IDS:[I

    #@ca
    .line 2857
    new-instance v0, Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;

    #@cc
    invoke-direct {v0}, Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;-><init>()V

    #@cf
    sput-object v0, Landroidx/core/view/ViewCompat;->NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR:Landroidx/core/view/OnReceiveContentViewBehavior;

    #@d1
    .line 4541
    new-instance v0, Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;

    #@d3
    invoke-direct {v0}, Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;-><init>()V

    #@d6
    sput-object v0, Landroidx/core/view/ViewCompat;->sAccessibilityPaneVisibilityManager:Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;

    #@d8
    return-void
.end method

.method protected constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 4154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static accessibilityHeadingProperty()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/view/ViewCompat$AccessibilityViewProperty<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    #@0
    .line 4386
    new-instance v0, Landroidx/core/view/ViewCompat$4;

    #@2
    sget v1, Landroidx/core/R$id;->tag_accessibility_heading:I

    #@4
    const-class v2, Ljava/lang/Boolean;

    #@6
    const/16 v3, 0x1c

    #@8
    invoke-direct {v0, v1, v2, v3}, Landroidx/core/view/ViewCompat$4;-><init>(ILjava/lang/Class;I)V

    #@b
    return-object v0
.end method

.method public static addAccessibilityAction(Landroid/view/View;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)I
    .registers 5

    #@0
    .line 1234
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->getAvailableActionIdFromResources(Landroid/view/View;Ljava/lang/CharSequence;)I

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    if-eq v0, v1, :cond_f

    #@7
    .line 1236
    new-instance v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    #@9
    invoke-direct {v1, v0, p1, p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    #@c
    .line 1238
    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->addAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    #@f
    :cond_f
    return v0
.end method

.method private static addAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V
    .registers 3

    #@0
    .line 1329
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->ensureAccessibilityDelegateCompat(Landroid/view/View;)V

    #@3
    .line 1330
    invoke-virtual {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    #@6
    move-result v0

    #@7
    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->removeActionWithId(ILandroid/view/View;)V

    #@a
    .line 1331
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getActionList(Landroid/view/View;)Ljava/util/List;

    #@d
    move-result-object v0

    #@e
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@11
    const/4 p1, 0x0

    #@12
    .line 1332
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->notifyViewAccessibilityStateChangedIfNeeded(Landroid/view/View;I)V

    #@15
    return-void
.end method

.method public static addKeyboardNavigationClusters(Landroid/view/View;Ljava/util/Collection;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Collection<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    #@0
    .line 4036
    invoke-static {p0, p1, p2}, Landroidx/core/view/ViewCompat$Api26Impl;->addKeyboardNavigationClusters(Landroid/view/View;Ljava/util/Collection;I)V

    #@3
    return-void
.end method

.method public static addOnUnhandledKeyEventListener(Landroid/view/View;Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;)V
    .registers 4

    #@0
    .line 4108
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1c

    #@4
    if-lt v0, v1, :cond_a

    #@6
    .line 4109
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api28Impl;->addOnUnhandledKeyEventListener(Landroid/view/View;Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;)V

    #@9
    return-void

    #@a
    .line 4112
    :cond_a
    sget v0, Landroidx/core/R$id;->tag_unhandled_key_listeners:I

    #@c
    .line 4114
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Ljava/util/ArrayList;

    #@12
    if-nez v0, :cond_1e

    #@14
    .line 4116
    new-instance v0, Ljava/util/ArrayList;

    #@16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@19
    .line 4117
    sget v1, Landroidx/core/R$id;->tag_unhandled_key_listeners:I

    #@1b
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    #@1e
    .line 4119
    :cond_1e
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@21
    .line 4120
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@24
    move-result p1

    #@25
    const/4 v0, 0x1

    #@26
    if-ne p1, v0, :cond_2b

    #@28
    .line 4121
    invoke-static {p0}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->registerListeningView(Landroid/view/View;)V

    #@2b
    :cond_2b
    return-void
.end method

.method public static animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .registers 3

    #@0
    .line 2082
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 2083
    new-instance v0, Ljava/util/WeakHashMap;

    #@6
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    #@9
    sput-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    #@b
    .line 2085
    :cond_b
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    #@d
    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroidx/core/view/ViewPropertyAnimatorCompat;

    #@13
    if-nez v0, :cond_1f

    #@15
    .line 2087
    new-instance v0, Landroidx/core/view/ViewPropertyAnimatorCompat;

    #@17
    invoke-direct {v0, p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;-><init>(Landroid/view/View;)V

    #@1a
    .line 2088
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    #@1c
    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    :cond_1f
    return-object v0
.end method

.method private static bindTempDetach()V
    .registers 4

    #@0
    .line 1896
    :try_start_0
    const-class v0, Landroid/view/View;

    #@2
    const-string v1, "dispatchStartTemporaryDetach"

    #@4
    const/4 v2, 0x0

    #@5
    new-array v3, v2, [Ljava/lang/Class;

    #@7
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@a
    move-result-object v0

    #@b
    sput-object v0, Landroidx/core/view/ViewCompat;->sDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

    #@d
    .line 1898
    const-class v0, Landroid/view/View;

    #@f
    const-string v1, "dispatchFinishTemporaryDetach"

    #@11
    new-array v2, v2, [Ljava/lang/Class;

    #@13
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@16
    move-result-object v0

    #@17
    sput-object v0, Landroidx/core/view/ViewCompat;->sDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;
    :try_end_19
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_19} :catch_1a

    #@19
    goto :goto_22

    #@1a
    :catch_1a
    move-exception v0

    #@1b
    const-string v1, "ViewCompat"

    #@1d
    const-string v2, "Couldn\'t find method"

    #@1f
    .line 1901
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@22
    :goto_22
    const/4 v0, 0x1

    #@23
    .line 1903
    sput-boolean v0, Landroidx/core/view/ViewCompat;->sTempDetachBound:Z

    #@25
    return-void
.end method

.method public static canScrollHorizontally(Landroid/view/View;I)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 546
    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollHorizontally(I)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static canScrollVertically(Landroid/view/View;I)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 559
    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static cancelDragAndDrop(Landroid/view/View;)V
    .registers 1

    #@0
    .line 3905
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api24Impl;->cancelDragAndDrop(Landroid/view/View;)V

    #@3
    return-void
.end method

.method public static combineMeasuredStates(II)I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 1786
    invoke-static {p0, p1}, Landroid/view/View;->combineMeasuredStates(II)I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method private static compatOffsetLeftAndRight(Landroid/view/View;I)V
    .registers 2

    #@0
    .line 3695
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    #@3
    .line 3696
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    #@6
    move-result p1

    #@7
    if-nez p1, :cond_19

    #@9
    .line 3697
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->tickleInvalidationFlag(Landroid/view/View;)V

    #@c
    .line 3699
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@f
    move-result-object p0

    #@10
    .line 3700
    instance-of p1, p0, Landroid/view/View;

    #@12
    if-eqz p1, :cond_19

    #@14
    .line 3701
    check-cast p0, Landroid/view/View;

    #@16
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->tickleInvalidationFlag(Landroid/view/View;)V

    #@19
    :cond_19
    return-void
.end method

.method private static compatOffsetTopAndBottom(Landroid/view/View;I)V
    .registers 2

    #@0
    .line 3647
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    #@3
    .line 3648
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    #@6
    move-result p1

    #@7
    if-nez p1, :cond_19

    #@9
    .line 3649
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->tickleInvalidationFlag(Landroid/view/View;)V

    #@c
    .line 3651
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@f
    move-result-object p0

    #@10
    .line 3652
    instance-of p1, p0, Landroid/view/View;

    #@12
    if-eqz p1, :cond_19

    #@14
    .line 3653
    check-cast p0, Landroid/view/View;

    #@16
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->tickleInvalidationFlag(Landroid/view/View;)V

    #@19
    :cond_19
    return-void
.end method

.method public static computeSystemWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Landroid/graphics/Rect;)Landroidx/core/view/WindowInsetsCompat;
    .registers 3

    #@0
    .line 2664
    invoke-static {p0, p1, p2}, Landroidx/core/view/ViewCompat$Api21Impl;->computeSystemWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Landroid/graphics/Rect;)Landroidx/core/view/WindowInsetsCompat;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static dispatchApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .registers 4

    #@0
    .line 2585
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_15

    #@6
    .line 2587
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat$Api20Impl;->dispatchApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    #@9
    move-result-object v1

    #@a
    .line 2588
    invoke-virtual {v1, v0}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_15

    #@10
    .line 2590
    invoke-static {v1, p0}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    #@13
    move-result-object p0

    #@14
    return-object p0

    #@15
    :cond_15
    return-object p1
.end method

.method public static dispatchFinishTemporaryDetach(Landroid/view/View;)V
    .registers 1

    #@0
    .line 1934
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api24Impl;->dispatchFinishTemporaryDetach(Landroid/view/View;)V

    #@3
    return-void
.end method

.method public static dispatchNestedFling(Landroid/view/View;FFZ)Z
    .registers 4

    #@0
    .line 3480
    invoke-static {p0, p1, p2, p3}, Landroidx/core/view/ViewCompat$Api21Impl;->dispatchNestedFling(Landroid/view/View;FFZ)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static dispatchNestedPreFling(Landroid/view/View;FF)Z
    .registers 3

    #@0
    .line 3523
    invoke-static {p0, p1, p2}, Landroidx/core/view/ViewCompat$Api21Impl;->dispatchNestedPreFling(Landroid/view/View;FF)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z
    .registers 5

    #@0
    .line 3256
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/view/ViewCompat$Api21Impl;->dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static dispatchNestedPreScroll(Landroid/view/View;II[I[II)Z
    .registers 13

    #@0
    .line 3449
    instance-of v0, p0, Landroidx/core/view/NestedScrollingChild2;

    #@2
    if-eqz v0, :cond_11

    #@4
    .line 3450
    move-object v1, p0

    #@5
    check-cast v1, Landroidx/core/view/NestedScrollingChild2;

    #@7
    move v2, p1

    #@8
    move v3, p2

    #@9
    move-object v4, p3

    #@a
    move-object v5, p4

    #@b
    move v6, p5

    #@c
    invoke-interface/range {v1 .. v6}, Landroidx/core/view/NestedScrollingChild2;->dispatchNestedPreScroll(II[I[II)Z

    #@f
    move-result p0

    #@10
    return p0

    #@11
    :cond_11
    if-nez p5, :cond_18

    #@13
    .line 3453
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/view/ViewCompat;->dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z

    #@16
    move-result p0

    #@17
    return p0

    #@18
    :cond_18
    const/4 p0, 0x0

    #@19
    return p0
.end method

.method public static dispatchNestedScroll(Landroid/view/View;IIII[II[I)V
    .registers 18

    #@0
    move-object v0, p0

    #@1
    .line 3381
    instance-of v1, v0, Landroidx/core/view/NestedScrollingChild3;

    #@3
    if-eqz v1, :cond_15

    #@5
    .line 3382
    move-object v2, v0

    #@6
    check-cast v2, Landroidx/core/view/NestedScrollingChild3;

    #@8
    move v3, p1

    #@9
    move v4, p2

    #@a
    move v5, p3

    #@b
    move v6, p4

    #@c
    move-object v7, p5

    #@d
    move/from16 v8, p6

    #@f
    move-object/from16 v9, p7

    #@11
    invoke-interface/range {v2 .. v9}, Landroidx/core/view/NestedScrollingChild3;->dispatchNestedScroll(IIII[II[I)V

    #@14
    goto :goto_18

    #@15
    .line 3385
    :cond_15
    invoke-static/range {p0 .. p6}, Landroidx/core/view/ViewCompat;->dispatchNestedScroll(Landroid/view/View;IIII[II)Z

    #@18
    :goto_18
    return-void
.end method

.method public static dispatchNestedScroll(Landroid/view/View;IIII[I)Z
    .registers 6

    #@0
    .line 3225
    invoke-static/range {p0 .. p5}, Landroidx/core/view/ViewCompat$Api21Impl;->dispatchNestedScroll(Landroid/view/View;IIII[I)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static dispatchNestedScroll(Landroid/view/View;IIII[II)Z
    .registers 15

    #@0
    .line 3417
    instance-of v0, p0, Landroidx/core/view/NestedScrollingChild2;

    #@2
    if-eqz v0, :cond_12

    #@4
    .line 3418
    move-object v1, p0

    #@5
    check-cast v1, Landroidx/core/view/NestedScrollingChild2;

    #@7
    move v2, p1

    #@8
    move v3, p2

    #@9
    move v4, p3

    #@a
    move v5, p4

    #@b
    move-object v6, p5

    #@c
    move v7, p6

    #@d
    invoke-interface/range {v1 .. v7}, Landroidx/core/view/NestedScrollingChild2;->dispatchNestedScroll(IIII[II)Z

    #@10
    move-result p0

    #@11
    return p0

    #@12
    :cond_12
    if-nez p6, :cond_19

    #@14
    .line 3421
    invoke-static/range {p0 .. p5}, Landroidx/core/view/ViewCompat;->dispatchNestedScroll(Landroid/view/View;IIII[I)Z

    #@17
    move-result p0

    #@18
    return p0

    #@19
    :cond_19
    const/4 p0, 0x0

    #@1a
    return p0
.end method

.method public static dispatchStartTemporaryDetach(Landroid/view/View;)V
    .registers 1

    #@0
    .line 1911
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api24Impl;->dispatchStartTemporaryDetach(Landroid/view/View;)V

    #@3
    return-void
.end method

.method static dispatchUnhandledKeyEventBeforeCallback(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .registers 4

    #@0
    .line 4184
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1c

    #@4
    if-lt v0, v1, :cond_8

    #@6
    const/4 p0, 0x0

    #@7
    return p0

    #@8
    .line 4187
    :cond_8
    invoke-static {p0}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->at(Landroid/view/View;)Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p0, p1}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->dispatch(Landroid/view/View;Landroid/view/KeyEvent;)Z

    #@f
    move-result p0

    #@10
    return p0
.end method

.method static dispatchUnhandledKeyEventBeforeHierarchy(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .registers 4

    #@0
    .line 4176
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1c

    #@4
    if-lt v0, v1, :cond_8

    #@6
    const/4 p0, 0x0

    #@7
    return p0

    #@8
    .line 4179
    :cond_8
    invoke-static {p0}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->at(Landroid/view/View;)Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;

    #@b
    move-result-object p0

    #@c
    invoke-virtual {p0, p1}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->preDispatch(Landroid/view/KeyEvent;)Z

    #@f
    move-result p0

    #@10
    return p0
.end method

.method public static enableAccessibleClickableSpanSupport(Landroid/view/View;)V
    .registers 1

    #@0
    .line 1423
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->ensureAccessibilityDelegateCompat(Landroid/view/View;)V

    #@3
    return-void
.end method

.method static ensureAccessibilityDelegateCompat(Landroid/view/View;)V
    .registers 2

    #@0
    .line 939
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getAccessibilityDelegate(Landroid/view/View;)Landroidx/core/view/AccessibilityDelegateCompat;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_b

    #@6
    .line 941
    new-instance v0, Landroidx/core/view/AccessibilityDelegateCompat;

    #@8
    invoke-direct {v0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    #@b
    .line 943
    :cond_b
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    #@e
    return-void
.end method

.method public static generateViewId()I
    .registers 1

    #@0
    .line 4085
    invoke-static {}, Landroidx/core/view/ViewCompat$Api17Impl;->generateViewId()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static getAccessibilityDelegate(Landroid/view/View;)Landroidx/core/view/AccessibilityDelegateCompat;
    .registers 2

    #@0
    .line 928
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getAccessibilityDelegateInternal(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    #@3
    move-result-object p0

    #@4
    if-nez p0, :cond_8

    #@6
    const/4 p0, 0x0

    #@7
    return-object p0

    #@8
    .line 932
    :cond_8
    instance-of v0, p0, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;

    #@a
    if-eqz v0, :cond_11

    #@c
    .line 933
    check-cast p0, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;

    #@e
    iget-object p0, p0, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;->mCompat:Landroidx/core/view/AccessibilityDelegateCompat;

    #@10
    return-object p0

    #@11
    .line 935
    :cond_11
    new-instance v0, Landroidx/core/view/AccessibilityDelegateCompat;

    #@13
    invoke-direct {v0, p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    #@16
    return-object v0
.end method

.method private static getAccessibilityDelegateInternal(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;
    .registers 3

    #@0
    .line 948
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1d

    #@4
    if-lt v0, v1, :cond_b

    #@6
    .line 949
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api29Impl;->getAccessibilityDelegate(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    #@9
    move-result-object p0

    #@a
    return-object p0

    #@b
    .line 951
    :cond_b
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getAccessibilityDelegateThroughReflection(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    #@e
    move-result-object p0

    #@f
    return-object p0
.end method

.method private static getAccessibilityDelegateThroughReflection(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;
    .registers 5

    #@0
    .line 959
    sget-boolean v0, Landroidx/core/view/ViewCompat;->sAccessibilityDelegateCheckFailed:Z

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_6

    #@5
    return-object v1

    #@6
    .line 962
    :cond_6
    sget-object v0, Landroidx/core/view/ViewCompat;->sAccessibilityDelegateField:Ljava/lang/reflect/Field;

    #@8
    const/4 v2, 0x1

    #@9
    if-nez v0, :cond_1c

    #@b
    .line 964
    :try_start_b
    const-class v0, Landroid/view/View;

    #@d
    const-string v3, "mAccessibilityDelegate"

    #@f
    .line 965
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@12
    move-result-object v0

    #@13
    sput-object v0, Landroidx/core/view/ViewCompat;->sAccessibilityDelegateField:Ljava/lang/reflect/Field;

    #@15
    .line 966
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_19

    #@18
    goto :goto_1c

    #@19
    .line 968
    :catchall_19
    sput-boolean v2, Landroidx/core/view/ViewCompat;->sAccessibilityDelegateCheckFailed:Z

    #@1b
    return-object v1

    #@1c
    .line 973
    :cond_1c
    :goto_1c
    :try_start_1c
    sget-object v0, Landroidx/core/view/ViewCompat;->sAccessibilityDelegateField:Ljava/lang/reflect/Field;

    #@1e
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object p0

    #@22
    .line 974
    instance-of v0, p0, Landroid/view/View$AccessibilityDelegate;

    #@24
    if-eqz v0, :cond_29

    #@26
    .line 975
    check-cast p0, Landroid/view/View$AccessibilityDelegate;
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_2a

    #@28
    return-object p0

    #@29
    :cond_29
    return-object v1

    #@2a
    .line 979
    :catchall_2a
    sput-boolean v2, Landroidx/core/view/ViewCompat;->sAccessibilityDelegateCheckFailed:Z

    #@2c
    return-object v1
.end method

.method public static getAccessibilityLiveRegion(Landroid/view/View;)I
    .registers 1

    #@0
    .line 1800
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api19Impl;->getAccessibilityLiveRegion(Landroid/view/View;)I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static getAccessibilityNodeProvider(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
    .registers 2

    #@0
    .line 1453
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;

    #@3
    move-result-object p0

    #@4
    if-eqz p0, :cond_c

    #@6
    .line 1455
    new-instance v0, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;

    #@8
    invoke-direct {v0, p0}, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;-><init>(Ljava/lang/Object;)V

    #@b
    return-object v0

    #@c
    :cond_c
    const/4 p0, 0x0

    #@d
    return-object p0
.end method

.method public static getAccessibilityPaneTitle(Landroid/view/View;)Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 4302
    invoke-static {}, Landroidx/core/view/ViewCompat;->paneTitleProperty()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->get(Landroid/view/View;)Ljava/lang/Object;

    #@7
    move-result-object p0

    #@8
    check-cast p0, Ljava/lang/CharSequence;

    #@a
    return-object p0
.end method

.method private static getActionList(Landroid/view/View;)Ljava/util/List;
    .registers 3
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
    .line 1364
    sget v0, Landroidx/core/R$id;->tag_accessibility_actions:I

    #@2
    .line 1365
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/ArrayList;

    #@8
    if-nez v0, :cond_14

    #@a
    .line 1367
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    .line 1368
    sget v1, Landroidx/core/R$id;->tag_accessibility_actions:I

    #@11
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    #@14
    :cond_14
    return-object v0
.end method

.method public static getAlpha(Landroid/view/View;)F
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 1472
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    #@3
    move-result p0

    #@4
    return p0
.end method

.method private static getAvailableActionIdFromResources(Landroid/view/View;Ljava/lang/CharSequence;)I
    .registers 10

    #@0
    .line 1280
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getActionList(Landroid/view/View;)Ljava/util/List;

    #@3
    move-result-object p0

    #@4
    const/4 v0, 0x0

    #@5
    move v1, v0

    #@6
    .line 1281
    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@9
    move-result v2

    #@a
    if-ge v1, v2, :cond_2a

    #@c
    .line 1282
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    #@12
    invoke-virtual {v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getLabel()Ljava/lang/CharSequence;

    #@15
    move-result-object v2

    #@16
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_27

    #@1c
    .line 1283
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object p0

    #@20
    check-cast p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    #@22
    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    #@25
    move-result p0

    #@26
    return p0

    #@27
    :cond_27
    add-int/lit8 v1, v1, 0x1

    #@29
    goto :goto_6

    #@2a
    :cond_2a
    const/4 p1, -0x1

    #@2b
    move v2, p1

    #@2c
    move v1, v0

    #@2d
    .line 1287
    :goto_2d
    sget-object v3, Landroidx/core/view/ViewCompat;->ACCESSIBILITY_ACTIONS_RESOURCE_IDS:[I

    #@2f
    array-length v4, v3

    #@30
    if-ge v1, v4, :cond_58

    #@32
    if-ne v2, p1, :cond_58

    #@34
    .line 1289
    aget v3, v3, v1

    #@36
    const/4 v4, 0x1

    #@37
    move v5, v0

    #@38
    move v6, v4

    #@39
    .line 1291
    :goto_39
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@3c
    move-result v7

    #@3d
    if-ge v5, v7, :cond_52

    #@3f
    .line 1292
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@42
    move-result-object v7

    #@43
    check-cast v7, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    #@45
    invoke-virtual {v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    #@48
    move-result v7

    #@49
    if-eq v7, v3, :cond_4d

    #@4b
    move v7, v4

    #@4c
    goto :goto_4e

    #@4d
    :cond_4d
    move v7, v0

    #@4e
    :goto_4e
    and-int/2addr v6, v7

    #@4f
    add-int/lit8 v5, v5, 0x1

    #@51
    goto :goto_39

    #@52
    :cond_52
    if-eqz v6, :cond_55

    #@54
    move v2, v3

    #@55
    :cond_55
    add-int/lit8 v1, v1, 0x1

    #@57
    goto :goto_2d

    #@58
    :cond_58
    return v2
.end method

.method public static getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .registers 1

    #@0
    .line 3012
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api21Impl;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .registers 1

    #@0
    .line 3059
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api21Impl;->getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 1

    #@0
    .line 3740
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api18Impl;->getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static getDisplay(Landroid/view/View;)Landroid/view/Display;
    .registers 1

    #@0
    .line 3862
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api17Impl;->getDisplay(Landroid/view/View;)Landroid/view/Display;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static getElevation(Landroid/view/View;)F
    .registers 1

    #@0
    .line 2367
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api21Impl;->getElevation(Landroid/view/View;)F

    #@3
    move-result p0

    #@4
    return p0
.end method

.method private static getEmptyTempRect()Landroid/graphics/Rect;
    .registers 2

    #@0
    .line 498
    sget-object v0, Landroidx/core/view/ViewCompat;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 499
    new-instance v0, Ljava/lang/ThreadLocal;

    #@6
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    #@9
    sput-object v0, Landroidx/core/view/ViewCompat;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    #@b
    .line 501
    :cond_b
    sget-object v0, Landroidx/core/view/ViewCompat;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    #@d
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/graphics/Rect;

    #@13
    if-nez v0, :cond_1f

    #@15
    .line 503
    new-instance v0, Landroid/graphics/Rect;

    #@17
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@1a
    .line 504
    sget-object v1, Landroidx/core/view/ViewCompat;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    #@1c
    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@1f
    .line 506
    :cond_1f
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    #@22
    return-object v0
.end method

.method private static getFallback(Landroid/view/View;)Landroidx/core/view/OnReceiveContentViewBehavior;
    .registers 2

    #@0
    .line 2851
    instance-of v0, p0, Landroidx/core/view/OnReceiveContentViewBehavior;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 2852
    check-cast p0, Landroidx/core/view/OnReceiveContentViewBehavior;

    #@6
    return-object p0

    #@7
    .line 2854
    :cond_7
    sget-object p0, Landroidx/core/view/ViewCompat;->NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR:Landroidx/core/view/OnReceiveContentViewBehavior;

    #@9
    return-object p0
.end method

.method public static getFitsSystemWindows(Landroid/view/View;)Z
    .registers 1

    #@0
    .line 2498
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->getFitsSystemWindows(Landroid/view/View;)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static getImportantForAccessibility(Landroid/view/View;)I
    .registers 1

    #@0
    .line 1108
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->getImportantForAccessibility(Landroid/view/View;)I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static getImportantForAutofill(Landroid/view/View;)I
    .registers 1

    #@0
    .line 789
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api26Impl;->getImportantForAutofill(Landroid/view/View;)I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static getLabelFor(Landroid/view/View;)I
    .registers 1

    #@0
    .line 1548
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api17Impl;->getLabelFor(Landroid/view/View;)I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static getLayerType(Landroid/view/View;)I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 1536
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static getLayoutDirection(Landroid/view/View;)I
    .registers 1

    #@0
    .line 1621
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static getMatrix(Landroid/view/View;)Landroid/graphics/Matrix;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 1999
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static getMeasuredHeightAndState(Landroid/view/View;)I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 1757
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeightAndState()I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static getMeasuredState(Landroid/view/View;)I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 1771
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredState()I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static getMeasuredWidthAndState(Landroid/view/View;)I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 1740
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidthAndState()I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static getMinimumHeight(Landroid/view/View;)I
    .registers 1

    #@0
    .line 2049
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->getMinimumHeight(Landroid/view/View;)I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static getMinimumWidth(Landroid/view/View;)I
    .registers 1

    #@0
    .line 2013
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->getMinimumWidth(Landroid/view/View;)I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static getNextClusterForwardId(Landroid/view/View;)I
    .registers 1

    #@0
    .line 3927
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api26Impl;->getNextClusterForwardId(Landroid/view/View;)I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static getOnReceiveContentMimeTypes(Landroid/view/View;)[Ljava/lang/String;
    .registers 3

    #@0
    .line 2808
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1f

    #@4
    if-lt v0, v1, :cond_b

    #@6
    .line 2809
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api31Impl;->getReceiveContentMimeTypes(Landroid/view/View;)[Ljava/lang/String;

    #@9
    move-result-object p0

    #@a
    return-object p0

    #@b
    .line 2811
    :cond_b
    sget v0, Landroidx/core/R$id;->tag_on_receive_content_mime_types:I

    #@d
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@10
    move-result-object p0

    #@11
    check-cast p0, [Ljava/lang/String;

    #@13
    return-object p0
.end method

.method public static getOverScrollMode(Landroid/view/View;)I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 577
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static getPaddingEnd(Landroid/view/View;)I
    .registers 1

    #@0
    .line 1867
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api17Impl;->getPaddingEnd(Landroid/view/View;)I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static getPaddingStart(Landroid/view/View;)I
    .registers 1

    #@0
    .line 1851
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api17Impl;->getPaddingStart(Landroid/view/View;)I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;
    .registers 1

    #@0
    .line 1660
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static getPivotX(Landroid/view/View;)F
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 2247
    invoke-virtual {p0}, Landroid/view/View;->getPivotX()F

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static getPivotY(Landroid/view/View;)F
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 2276
    invoke-virtual {p0}, Landroid/view/View;->getPivotY()F

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;
    .registers 1

    #@0
    .line 2642
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api23Impl;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static getRotation(Landroid/view/View;)F
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 2300
    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static getRotationX(Landroid/view/View;)F
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 2308
    invoke-virtual {p0}, Landroid/view/View;->getRotationX()F

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static getRotationY(Landroid/view/View;)F
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 2316
    invoke-virtual {p0}, Landroid/view/View;->getRotationY()F

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static getScaleX(Landroid/view/View;)F
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 2324
    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static getScaleY(Landroid/view/View;)F
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 2332
    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static getScrollIndicators(Landroid/view/View;)I
    .registers 1

    #@0
    .line 3832
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api23Impl;->getScrollIndicators(Landroid/view/View;)I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static getStateDescription(Landroid/view/View;)Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 1407
    invoke-static {}, Landroidx/core/view/ViewCompat;->stateDescriptionProperty()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->get(Landroid/view/View;)Ljava/lang/Object;

    #@7
    move-result-object p0

    #@8
    check-cast p0, Ljava/lang/CharSequence;

    #@a
    return-object p0
.end method

.method public static getSystemGestureExclusionRects(Landroid/view/View;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    #@0
    .line 2625
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1d

    #@4
    if-lt v0, v1, :cond_b

    #@6
    .line 2626
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api29Impl;->getSystemGestureExclusionRects(Landroid/view/View;)Ljava/util/List;

    #@9
    move-result-object p0

    #@a
    return-object p0

    #@b
    .line 2628
    :cond_b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@e
    move-result-object p0

    #@f
    return-object p0
.end method

.method public static getTransitionName(Landroid/view/View;)Ljava/lang/String;
    .registers 1

    #@0
    .line 2424
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api21Impl;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static getTranslationX(Landroid/view/View;)F
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 1963
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static getTranslationY(Landroid/view/View;)F
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 1977
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static getTranslationZ(Landroid/view/View;)F
    .registers 1

    #@0
    .line 2388
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api21Impl;->getTranslationZ(Landroid/view/View;)F

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static getWindowInsetsController(Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 2681
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1e

    #@4
    if-lt v0, v1, :cond_b

    #@6
    .line 2682
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api30Impl;->getWindowInsetsController(Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    #@9
    move-result-object p0

    #@a
    return-object p0

    #@b
    .line 2684
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@e
    move-result-object v0

    #@f
    .line 2685
    :goto_f
    instance-of v1, v0, Landroid/content/ContextWrapper;

    #@11
    const/4 v2, 0x0

    #@12
    if-eqz v1, :cond_2c

    #@14
    .line 2686
    instance-of v1, v0, Landroid/app/Activity;

    #@16
    if-eqz v1, :cond_25

    #@18
    .line 2687
    check-cast v0, Landroid/app/Activity;

    #@1a
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@1d
    move-result-object v0

    #@1e
    if-eqz v0, :cond_24

    #@20
    .line 2688
    invoke-static {v0, p0}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    #@23
    move-result-object v2

    #@24
    :cond_24
    return-object v2

    #@25
    .line 2690
    :cond_25
    check-cast v0, Landroid/content/ContextWrapper;

    #@27
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    #@2a
    move-result-object v0

    #@2b
    goto :goto_f

    #@2c
    :cond_2c
    return-object v2
.end method

.method public static getWindowSystemUiVisibility(Landroid/view/View;)I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 2441
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->getWindowSystemUiVisibility(Landroid/view/View;)I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static getX(Landroid/view/View;)F
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 2340
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static getY(Landroid/view/View;)F
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 2348
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static getZ(Landroid/view/View;)F
    .registers 1

    #@0
    .line 3587
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api21Impl;->getZ(Landroid/view/View;)F

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static hasAccessibilityDelegate(Landroid/view/View;)Z
    .registers 1

    #@0
    .line 914
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getAccessibilityDelegateInternal(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    #@3
    move-result-object p0

    #@4
    if-eqz p0, :cond_8

    #@6
    const/4 p0, 0x1

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 p0, 0x0

    #@9
    :goto_9
    return p0
.end method

.method public static hasExplicitFocusable(Landroid/view/View;)Z
    .registers 1

    #@0
    .line 4072
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api26Impl;->hasExplicitFocusable(Landroid/view/View;)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static hasNestedScrollingParent(Landroid/view/View;)Z
    .registers 1

    #@0
    .line 3196
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api21Impl;->hasNestedScrollingParent(Landroid/view/View;)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static hasNestedScrollingParent(Landroid/view/View;I)Z
    .registers 3

    #@0
    .line 3340
    instance-of v0, p0, Landroidx/core/view/NestedScrollingChild2;

    #@2
    if-eqz v0, :cond_a

    #@4
    .line 3341
    check-cast p0, Landroidx/core/view/NestedScrollingChild2;

    #@6
    invoke-interface {p0, p1}, Landroidx/core/view/NestedScrollingChild2;->hasNestedScrollingParent(I)Z

    #@9
    goto :goto_11

    #@a
    :cond_a
    if-nez p1, :cond_11

    #@c
    .line 3343
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->hasNestedScrollingParent(Landroid/view/View;)Z

    #@f
    move-result p0

    #@10
    return p0

    #@11
    :cond_11
    :goto_11
    const/4 p0, 0x0

    #@12
    return p0
.end method

.method public static hasOnClickListeners(Landroid/view/View;)Z
    .registers 1

    #@0
    .line 3762
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api15Impl;->hasOnClickListeners(Landroid/view/View;)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static hasOverlappingRendering(Landroid/view/View;)Z
    .registers 1

    #@0
    .line 2971
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->hasOverlappingRendering(Landroid/view/View;)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static hasTransientState(Landroid/view/View;)Z
    .registers 1

    #@0
    .line 994
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->hasTransientState(Landroid/view/View;)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static isAccessibilityHeading(Landroid/view/View;)Z
    .registers 2

    #@0
    .line 4365
    invoke-static {}, Landroidx/core/view/ViewCompat;->accessibilityHeadingProperty()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->get(Landroid/view/View;)Ljava/lang/Object;

    #@7
    move-result-object p0

    #@8
    check-cast p0, Ljava/lang/Boolean;

    #@a
    if-eqz p0, :cond_14

    #@c
    .line 4366
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    #@f
    move-result p0

    #@10
    if-eqz p0, :cond_14

    #@12
    const/4 p0, 0x1

    #@13
    goto :goto_15

    #@14
    :cond_14
    const/4 p0, 0x0

    #@15
    :goto_15
    return p0
.end method

.method public static isAttachedToWindow(Landroid/view/View;)Z
    .registers 1

    #@0
    .line 3750
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api19Impl;->isAttachedToWindow(Landroid/view/View;)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static isFocusedByDefault(Landroid/view/View;)Z
    .registers 1

    #@0
    .line 3982
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api26Impl;->isFocusedByDefault(Landroid/view/View;)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static isImportantForAccessibility(Landroid/view/View;)Z
    .registers 1

    #@0
    .line 1187
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api21Impl;->isImportantForAccessibility(Landroid/view/View;)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static isImportantForAutofill(Landroid/view/View;)Z
    .registers 1

    #@0
    .line 902
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api26Impl;->isImportantForAutofill(Landroid/view/View;)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static isInLayout(Landroid/view/View;)Z
    .registers 1

    #@0
    .line 3545
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api18Impl;->isInLayout(Landroid/view/View;)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static isKeyboardNavigationCluster(Landroid/view/View;)Z
    .registers 1

    #@0
    .line 3953
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api26Impl;->isKeyboardNavigationCluster(Landroid/view/View;)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static isLaidOut(Landroid/view/View;)Z
    .registers 1

    #@0
    .line 3556
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api19Impl;->isLaidOut(Landroid/view/View;)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static isLayoutDirectionResolved(Landroid/view/View;)Z
    .registers 1

    #@0
    .line 3573
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api19Impl;->isLayoutDirectionResolved(Landroid/view/View;)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static isNestedScrollingEnabled(Landroid/view/View;)Z
    .registers 1

    #@0
    .line 3138
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api21Impl;->isNestedScrollingEnabled(Landroid/view/View;)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static isOpaque(Landroid/view/View;)Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 1703
    invoke-virtual {p0}, Landroid/view/View;->isOpaque()Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static isPaddingRelative(Landroid/view/View;)Z
    .registers 1

    #@0
    .line 2984
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api17Impl;->isPaddingRelative(Landroid/view/View;)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static isScreenReaderFocusable(Landroid/view/View;)Z
    .registers 2

    #@0
    .line 4227
    invoke-static {}, Landroidx/core/view/ViewCompat;->screenReaderFocusableProperty()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->get(Landroid/view/View;)Ljava/lang/Object;

    #@7
    move-result-object p0

    #@8
    check-cast p0, Ljava/lang/Boolean;

    #@a
    if-eqz p0, :cond_14

    #@c
    .line 4228
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    #@f
    move-result p0

    #@10
    if-eqz p0, :cond_14

    #@12
    const/4 p0, 0x1

    #@13
    goto :goto_15

    #@14
    :cond_14
    const/4 p0, 0x0

    #@15
    :goto_15
    return p0
.end method

.method public static jumpDrawablesToCurrentState(Landroid/view/View;)V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 2527
    invoke-virtual {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    #@3
    return-void
.end method

.method public static keyboardNavigationClusterSearch(Landroid/view/View;Landroid/view/View;I)Landroid/view/View;
    .registers 3

    #@0
    .line 4020
    invoke-static {p0, p1, p2}, Landroidx/core/view/ViewCompat$Api26Impl;->keyboardNavigationClusterSearch(Landroid/view/View;Landroid/view/View;I)Landroid/view/View;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method static synthetic lambda$static$0(Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;
    .registers 1

    #@0
    return-object p0
.end method

.method static notifyViewAccessibilityStateChangedIfNeeded(Landroid/view/View;I)V
    .registers 6

    #@0
    .line 4482
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    const-string v1, "accessibility"

    #@6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    #@c
    .line 4483
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_13

    #@12
    return-void

    #@13
    .line 4486
    :cond_13
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getAccessibilityPaneTitle(Landroid/view/View;)Ljava/lang/CharSequence;

    #@16
    move-result-object v1

    #@17
    if-eqz v1, :cond_27

    #@19
    .line 4487
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_27

    #@1f
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    #@22
    move-result v1

    #@23
    if-nez v1, :cond_27

    #@25
    const/4 v1, 0x1

    #@26
    goto :goto_28

    #@27
    :cond_27
    const/4 v1, 0x0

    #@28
    .line 4490
    :goto_28
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getAccessibilityLiveRegion(Landroid/view/View;)I

    #@2b
    move-result v2

    #@2c
    const/16 v3, 0x20

    #@2e
    if-nez v2, :cond_8b

    #@30
    if-eqz v1, :cond_33

    #@32
    goto :goto_8b

    #@33
    :cond_33
    if-ne p1, v3, :cond_57

    #@35
    .line 4503
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    #@38
    move-result-object v1

    #@39
    .line 4504
    invoke-virtual {p0, v1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@3c
    .line 4505
    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    #@3f
    .line 4506
    invoke-static {v1, p1}, Landroidx/core/view/ViewCompat$Api19Impl;->setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V

    #@42
    .line 4507
    invoke-virtual {v1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    #@45
    .line 4508
    invoke-virtual {p0, v1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@48
    .line 4509
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    #@4b
    move-result-object p1

    #@4c
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getAccessibilityPaneTitle(Landroid/view/View;)Ljava/lang/CharSequence;

    #@4f
    move-result-object p0

    #@50
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@53
    .line 4510
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@56
    goto :goto_ad

    #@57
    .line 4511
    :cond_57
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@5a
    move-result-object v0

    #@5b
    if-eqz v0, :cond_ad

    #@5d
    .line 4512
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@60
    move-result-object v0

    #@61
    .line 4514
    :try_start_61
    invoke-static {v0, p0, p0, p1}, Landroidx/core/view/ViewCompat$Api19Impl;->notifySubtreeAccessibilityStateChanged(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    :try_end_64
    .catch Ljava/lang/AbstractMethodError; {:try_start_61 .. :try_end_64} :catch_65

    #@64
    goto :goto_ad

    #@65
    :catch_65
    move-exception p1

    #@66
    .line 4516
    new-instance v0, Ljava/lang/StringBuilder;

    #@68
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6b
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@6e
    move-result-object p0

    #@6f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@72
    move-result-object p0

    #@73
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@76
    move-result-object p0

    #@77
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object p0

    #@7b
    const-string v0, " does not fully implement ViewParent"

    #@7d
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object p0

    #@81
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object p0

    #@85
    const-string v0, "ViewCompat"

    #@87
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@8a
    goto :goto_ad

    #@8b
    .line 4492
    :cond_8b
    :goto_8b
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    #@8e
    move-result-object v0

    #@8f
    if-eqz v1, :cond_92

    #@91
    goto :goto_94

    #@92
    :cond_92
    const/16 v3, 0x800

    #@94
    .line 4493
    :goto_94
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    #@97
    .line 4496
    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat$Api19Impl;->setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V

    #@9a
    if-eqz v1, :cond_aa

    #@9c
    .line 4498
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    #@9f
    move-result-object p1

    #@a0
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getAccessibilityPaneTitle(Landroid/view/View;)Ljava/lang/CharSequence;

    #@a3
    move-result-object v1

    #@a4
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@a7
    .line 4499
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->setViewImportanceForAccessibilityIfNeeded(Landroid/view/View;)V

    #@aa
    .line 4501
    :cond_aa
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    #@ad
    :cond_ad
    :goto_ad
    return-void
.end method

.method public static offsetLeftAndRight(Landroid/view/View;I)V
    .registers 2

    #@0
    .line 3665
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    #@3
    return-void
.end method

.method public static offsetTopAndBottom(Landroid/view/View;I)V
    .registers 2

    #@0
    .line 3617
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    #@3
    return-void
.end method

.method public static onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .registers 4

    #@0
    .line 2557
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_15

    #@6
    .line 2559
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat$Api20Impl;->onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    #@9
    move-result-object v1

    #@a
    .line 2560
    invoke-virtual {v1, v0}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_15

    #@10
    .line 2562
    invoke-static {v1, p0}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    #@13
    move-result-object p0

    #@14
    return-object p0

    #@15
    :cond_15
    return-object p1
.end method

.method public static onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 668
    invoke-virtual {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@3
    return-void
.end method

.method public static onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 2

    #@0
    .line 700
    invoke-virtual {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->unwrap()Landroid/view/accessibility/AccessibilityNodeInfo;

    #@3
    move-result-object p1

    #@4
    invoke-virtual {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@7
    return-void
.end method

.method public static onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 636
    invoke-virtual {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@3
    return-void
.end method

.method private static paneTitleProperty()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/view/ViewCompat$AccessibilityViewProperty<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    #@0
    .line 4306
    new-instance v0, Landroidx/core/view/ViewCompat$2;

    #@2
    sget v1, Landroidx/core/R$id;->tag_accessibility_pane_title:I

    #@4
    const-class v2, Ljava/lang/CharSequence;

    #@6
    const/16 v3, 0x8

    #@8
    const/16 v4, 0x1c

    #@a
    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/core/view/ViewCompat$2;-><init>(ILjava/lang/Class;II)V

    #@d
    return-object v0
.end method

.method public static performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 3

    #@0
    .line 1209
    invoke-static {p0, p1, p2}, Landroidx/core/view/ViewCompat$Api16Impl;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static performReceiveContent(Landroid/view/View;Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;
    .registers 5

    #@0
    const/4 v0, 0x3

    #@1
    const-string v1, "ViewCompat"

    #@3
    .line 2834
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_41

    #@9
    .line 2835
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    const-string v2, "performReceiveContent: "

    #@d
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    const-string v2, ", view="

    #@16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    .line 2836
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    const-string v2, "["

    #@28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    #@2f
    move-result v2

    #@30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    const-string v2, "]"

    #@36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    .line 2835
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@41
    .line 2838
    :cond_41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@43
    const/16 v1, 0x1f

    #@45
    if-lt v0, v1, :cond_4c

    #@47
    .line 2839
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api31Impl;->performReceiveContent(Landroid/view/View;Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;

    #@4a
    move-result-object p0

    #@4b
    return-object p0

    #@4c
    .line 2841
    :cond_4c
    sget v0, Landroidx/core/R$id;->tag_on_receive_content_listener:I

    #@4e
    .line 2842
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@51
    move-result-object v0

    #@52
    check-cast v0, Landroidx/core/view/OnReceiveContentListener;

    #@54
    if-eqz v0, :cond_67

    #@56
    .line 2844
    invoke-interface {v0, p0, p1}, Landroidx/core/view/OnReceiveContentListener;->onReceiveContent(Landroid/view/View;Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;

    #@59
    move-result-object p1

    #@5a
    if-nez p1, :cond_5e

    #@5c
    const/4 p0, 0x0

    #@5d
    goto :goto_66

    #@5e
    .line 2845
    :cond_5e
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getFallback(Landroid/view/View;)Landroidx/core/view/OnReceiveContentViewBehavior;

    #@61
    move-result-object p0

    #@62
    invoke-interface {p0, p1}, Landroidx/core/view/OnReceiveContentViewBehavior;->onReceiveContent(Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;

    #@65
    move-result-object p0

    #@66
    :goto_66
    return-object p0

    #@67
    .line 2847
    :cond_67
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getFallback(Landroid/view/View;)Landroidx/core/view/OnReceiveContentViewBehavior;

    #@6a
    move-result-object p0

    #@6b
    invoke-interface {p0, p1}, Landroidx/core/view/OnReceiveContentViewBehavior;->onReceiveContent(Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;

    #@6e
    move-result-object p0

    #@6f
    return-object p0
.end method

.method public static postInvalidateOnAnimation(Landroid/view/View;)V
    .registers 1

    #@0
    .line 1023
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@3
    return-void
.end method

.method public static postInvalidateOnAnimation(Landroid/view/View;IIII)V
    .registers 5

    #@0
    .line 1045
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/view/ViewCompat$Api16Impl;->postInvalidateOnAnimation(Landroid/view/View;IIII)V

    #@3
    return-void
.end method

.method public static postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 2

    #@0
    .line 1063
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api16Impl;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    #@3
    return-void
.end method

.method public static postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V
    .registers 4

    #@0
    .line 1086
    invoke-static {p0, p1, p2, p3}, Landroidx/core/view/ViewCompat$Api16Impl;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    #@3
    return-void
.end method

.method public static removeAccessibilityAction(Landroid/view/View;I)V
    .registers 2

    #@0
    .line 1346
    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->removeActionWithId(ILandroid/view/View;)V

    #@3
    const/4 p1, 0x0

    #@4
    .line 1347
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->notifyViewAccessibilityStateChangedIfNeeded(Landroid/view/View;I)V

    #@7
    return-void
.end method

.method private static removeActionWithId(ILandroid/view/View;)V
    .registers 4

    #@0
    .line 1353
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getActionList(Landroid/view/View;)Ljava/util/List;

    #@3
    move-result-object p1

    #@4
    const/4 v0, 0x0

    #@5
    .line 1354
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@8
    move-result v1

    #@9
    if-ge v0, v1, :cond_1e

    #@b
    .line 1355
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    #@11
    invoke-virtual {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    #@14
    move-result v1

    #@15
    if-ne v1, p0, :cond_1b

    #@17
    .line 1356
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@1a
    goto :goto_1e

    #@1b
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_5

    #@1e
    :cond_1e
    :goto_1e
    return-void
.end method

.method public static removeOnUnhandledKeyEventListener(Landroid/view/View;Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;)V
    .registers 4

    #@0
    .line 4135
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1c

    #@4
    if-lt v0, v1, :cond_a

    #@6
    .line 4136
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api28Impl;->removeOnUnhandledKeyEventListener(Landroid/view/View;Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;)V

    #@9
    return-void

    #@a
    .line 4139
    :cond_a
    sget v0, Landroidx/core/R$id;->tag_unhandled_key_listeners:I

    #@c
    .line 4141
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Ljava/util/ArrayList;

    #@12
    if-eqz v0, :cond_20

    #@14
    .line 4143
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@17
    .line 4144
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@1a
    move-result p1

    #@1b
    if-nez p1, :cond_20

    #@1d
    .line 4145
    invoke-static {p0}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->unregisterListeningView(Landroid/view/View;)V

    #@20
    :cond_20
    return-void
.end method

.method public static replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V
    .registers 4

    #@0
    if-nez p3, :cond_c

    #@2
    if-nez p2, :cond_c

    #@4
    .line 1320
    invoke-virtual {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    #@7
    move-result p1

    #@8
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    #@b
    goto :goto_13

    #@c
    .line 1322
    :cond_c
    invoke-virtual {p1, p2, p3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->createReplacementAction(Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    #@f
    move-result-object p1

    #@10
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->addAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    #@13
    :goto_13
    return-void
.end method

.method public static requestApplyInsets(Landroid/view/View;)V
    .registers 1

    #@0
    .line 2452
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api20Impl;->requestApplyInsets(Landroid/view/View;)V

    #@3
    return-void
.end method

.method public static requireViewById(Landroid/view/View;I)Landroid/view/View;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    #@0
    .line 1682
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1c

    #@4
    if-lt v0, v1, :cond_d

    #@6
    .line 1683
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api28Impl;->requireViewById(Landroid/view/View;I)Ljava/lang/Object;

    #@9
    move-result-object p0

    #@a
    check-cast p0, Landroid/view/View;

    #@c
    return-object p0

    #@d
    .line 1686
    :cond_d
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@10
    move-result-object p0

    #@11
    if-eqz p0, :cond_14

    #@13
    return-object p0

    #@14
    .line 1688
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@16
    const-string p1, "ID does not reference a View inside this View"

    #@18
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw p0
.end method

.method public static resolveSizeAndState(III)I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 1723
    invoke-static {p0, p1, p2}, Landroid/view/View;->resolveSizeAndState(III)I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static restoreDefaultFocus(Landroid/view/View;)Z
    .registers 1

    #@0
    .line 4050
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api26Impl;->restoreDefaultFocus(Landroid/view/View;)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V
    .registers 9

    #@0
    .line 529
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1d

    #@4
    if-lt v0, v1, :cond_9

    #@6
    .line 530
    invoke-static/range {p0 .. p6}, Landroidx/core/view/ViewCompat$Api29Impl;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    #@9
    :cond_9
    return-void
.end method

.method private static screenReaderFocusableProperty()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/view/ViewCompat$AccessibilityViewProperty<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    #@0
    .line 4232
    new-instance v0, Landroidx/core/view/ViewCompat$1;

    #@2
    sget v1, Landroidx/core/R$id;->tag_screen_reader_focusable:I

    #@4
    const-class v2, Ljava/lang/Boolean;

    #@6
    const/16 v3, 0x1c

    #@8
    invoke-direct {v0, v1, v2, v3}, Landroidx/core/view/ViewCompat$1;-><init>(ILjava/lang/Class;I)V

    #@b
    return-object v0
.end method

.method public static setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V
    .registers 3

    #@0
    if-nez p1, :cond_f

    #@2
    .line 731
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getAccessibilityDelegateInternal(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    #@5
    move-result-object v0

    #@6
    instance-of v0, v0, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;

    #@8
    if-eqz v0, :cond_f

    #@a
    .line 732
    new-instance p1, Landroidx/core/view/AccessibilityDelegateCompat;

    #@c
    invoke-direct {p1}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    #@f
    :cond_f
    if-nez p1, :cond_13

    #@11
    const/4 p1, 0x0

    #@12
    goto :goto_17

    #@13
    .line 734
    :cond_13
    invoke-virtual {p1}, Landroidx/core/view/AccessibilityDelegateCompat;->getBridge()Landroid/view/View$AccessibilityDelegate;

    #@16
    move-result-object p1

    #@17
    :goto_17
    invoke-virtual {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    #@1a
    return-void
.end method

.method public static setAccessibilityHeading(Landroid/view/View;Z)V
    .registers 3

    #@0
    .line 4382
    invoke-static {}, Landroidx/core/view/ViewCompat;->accessibilityHeadingProperty()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;

    #@3
    move-result-object v0

    #@4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@7
    move-result-object p1

    #@8
    invoke-virtual {v0, p0, p1}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->set(Landroid/view/View;Ljava/lang/Object;)V

    #@b
    return-void
.end method

.method public static setAccessibilityLiveRegion(Landroid/view/View;I)V
    .registers 2

    #@0
    .line 1836
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api19Impl;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    #@3
    return-void
.end method

.method public static setAccessibilityPaneTitle(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    .line 4276
    invoke-static {}, Landroidx/core/view/ViewCompat;->paneTitleProperty()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0, p1}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->set(Landroid/view/View;Ljava/lang/Object;)V

    #@7
    if-eqz p1, :cond_f

    #@9
    .line 4278
    sget-object p1, Landroidx/core/view/ViewCompat;->sAccessibilityPaneVisibilityManager:Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;

    #@b
    invoke-virtual {p1, p0}, Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;->addAccessibilityPane(Landroid/view/View;)V

    #@e
    goto :goto_14

    #@f
    .line 4280
    :cond_f
    sget-object p1, Landroidx/core/view/ViewCompat;->sAccessibilityPaneVisibilityManager:Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;

    #@11
    invoke-virtual {p1, p0}, Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;->removeAccessibilityPane(Landroid/view/View;)V

    #@14
    :goto_14
    return-void
.end method

.method public static setActivated(Landroid/view/View;Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 2952
    invoke-virtual {p0, p1}, Landroid/view/View;->setActivated(Z)V

    #@3
    return-void
.end method

.method public static setAlpha(Landroid/view/View;F)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 2139
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    #@3
    return-void
.end method

.method public static varargs setAutofillHints(Landroid/view/View;[Ljava/lang/String;)V
    .registers 2

    #@0
    .line 768
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api26Impl;->setAutofillHints(Landroid/view/View;[Ljava/lang/String;)V

    #@3
    return-void
.end method

.method public static setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .registers 2

    #@0
    .line 2997
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api16Impl;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    #@3
    return-void
.end method

.method public static setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .registers 2

    #@0
    .line 3029
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api21Impl;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    #@3
    return-void
.end method

.method public static setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .registers 2

    #@0
    .line 3077
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api21Impl;->setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V

    #@3
    return-void
.end method

.method public static setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const-string v0, "Unable to invoke childrenDrawingOrderEnabled"

    #@2
    .line 2472
    sget-object v1, Landroidx/core/view/ViewCompat;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

    #@4
    const/4 v2, 0x0

    #@5
    const/4 v3, 0x1

    #@6
    const-string v4, "ViewCompat"

    #@8
    if-nez v1, :cond_26

    #@a
    .line 2474
    :try_start_a
    const-class v1, Landroid/view/ViewGroup;

    #@c
    const-string v5, "setChildrenDrawingOrderEnabled"

    #@e
    new-array v6, v3, [Ljava/lang/Class;

    #@10
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@12
    aput-object v7, v6, v2

    #@14
    .line 2475
    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@17
    move-result-object v1

    #@18
    sput-object v1, Landroidx/core/view/ViewCompat;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_1a} :catch_1b

    #@1a
    goto :goto_21

    #@1b
    :catch_1b
    move-exception v1

    #@1c
    const-string v5, "Unable to find childrenDrawingOrderEnabled"

    #@1e
    .line 2477
    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@21
    .line 2479
    :goto_21
    sget-object v1, Landroidx/core/view/ViewCompat;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

    #@23
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    #@26
    .line 2482
    :cond_26
    :try_start_26
    sget-object v1, Landroidx/core/view/ViewCompat;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

    #@28
    new-array v3, v3, [Ljava/lang/Object;

    #@2a
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@2d
    move-result-object p1

    #@2e
    aput-object p1, v3, v2

    #@30
    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catch Ljava/lang/IllegalAccessException; {:try_start_26 .. :try_end_33} :catch_3e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_26 .. :try_end_33} :catch_39
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_26 .. :try_end_33} :catch_34

    #@33
    goto :goto_42

    #@34
    :catch_34
    move-exception p0

    #@35
    .line 2488
    invoke-static {v4, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@38
    goto :goto_42

    #@39
    :catch_39
    move-exception p0

    #@3a
    .line 2486
    invoke-static {v4, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3d
    goto :goto_42

    #@3e
    :catch_3e
    move-exception p0

    #@3f
    .line 2484
    invoke-static {v4, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@42
    :goto_42
    return-void
.end method

.method public static setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 2

    #@0
    .line 3725
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api18Impl;->setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    #@3
    return-void
.end method

.method public static setElevation(Landroid/view/View;F)V
    .registers 2

    #@0
    .line 2356
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api21Impl;->setElevation(Landroid/view/View;F)V

    #@3
    return-void
.end method

.method public static setFitsSystemWindows(Landroid/view/View;Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 2513
    invoke-virtual {p0, p1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    #@3
    return-void
.end method

.method public static setFocusedByDefault(Landroid/view/View;Z)V
    .registers 2

    #@0
    .line 4001
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api26Impl;->setFocusedByDefault(Landroid/view/View;Z)V

    #@3
    return-void
.end method

.method public static setHasTransientState(Landroid/view/View;Z)V
    .registers 2

    #@0
    .line 1008
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api16Impl;->setHasTransientState(Landroid/view/View;Z)V

    #@3
    return-void
.end method

.method public static setImportantForAccessibility(Landroid/view/View;I)V
    .registers 2

    #@0
    .line 1136
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api16Impl;->setImportantForAccessibility(Landroid/view/View;I)V

    #@3
    return-void
.end method

.method public static setImportantForAutofill(Landroid/view/View;I)V
    .registers 2

    #@0
    .line 833
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api26Impl;->setImportantForAutofill(Landroid/view/View;I)V

    #@3
    return-void
.end method

.method public static setKeyboardNavigationCluster(Landroid/view/View;Z)V
    .registers 2

    #@0
    .line 3967
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api26Impl;->setKeyboardNavigationCluster(Landroid/view/View;Z)V

    #@3
    return-void
.end method

.method public static setLabelFor(Landroid/view/View;I)V
    .registers 2

    #@0
    .line 1562
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api17Impl;->setLabelFor(Landroid/view/View;I)V

    #@3
    return-void
.end method

.method public static setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V
    .registers 2

    #@0
    .line 1598
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api17Impl;->setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V

    #@3
    return-void
.end method

.method public static setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 1511
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    #@3
    return-void
.end method

.method public static setLayoutDirection(Landroid/view/View;I)V
    .registers 2

    #@0
    .line 1645
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api17Impl;->setLayoutDirection(Landroid/view/View;I)V

    #@3
    return-void
.end method

.method public static setNestedScrollingEnabled(Landroid/view/View;Z)V
    .registers 2

    #@0
    .line 3115
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api21Impl;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    #@3
    return-void
.end method

.method public static setNextClusterForwardId(Landroid/view/View;I)V
    .registers 2

    #@0
    .line 3941
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api26Impl;->setNextClusterForwardId(Landroid/view/View;I)V

    #@3
    return-void
.end method

.method public static setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V
    .registers 2

    #@0
    .line 2537
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api21Impl;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    #@3
    return-void
.end method

.method public static setOnReceiveContentListener(Landroid/view/View;[Ljava/lang/String;Landroidx/core/view/OnReceiveContentListener;)V
    .registers 9

    #@0
    .line 2759
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1f

    #@4
    if-lt v0, v1, :cond_a

    #@6
    .line 2760
    invoke-static {p0, p1, p2}, Landroidx/core/view/ViewCompat$Api31Impl;->setOnReceiveContentListener(Landroid/view/View;[Ljava/lang/String;Landroidx/core/view/OnReceiveContentListener;)V

    #@9
    return-void

    #@a
    :cond_a
    if-eqz p1, :cond_f

    #@c
    .line 2763
    array-length v0, p1

    #@d
    if-nez v0, :cond_10

    #@f
    :cond_f
    const/4 p1, 0x0

    #@10
    :cond_10
    const/4 v0, 0x0

    #@11
    const/4 v1, 0x1

    #@12
    if-eqz p2, :cond_1e

    #@14
    if-eqz p1, :cond_18

    #@16
    move v2, v1

    #@17
    goto :goto_19

    #@18
    :cond_18
    move v2, v0

    #@19
    :goto_19
    const-string v3, "When the listener is set, MIME types must also be set"

    #@1b
    .line 2765
    invoke-static {v2, v3}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    #@1e
    :cond_1e
    if-eqz p1, :cond_4a

    #@20
    .line 2770
    array-length v2, p1

    #@21
    move v3, v0

    #@22
    :goto_22
    if-ge v3, v2, :cond_33

    #@24
    aget-object v4, p1, v3

    #@26
    const-string v5, "*"

    #@28
    .line 2771
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2b
    move-result v4

    #@2c
    if-eqz v4, :cond_30

    #@2e
    move v0, v1

    #@2f
    goto :goto_33

    #@30
    :cond_30
    add-int/lit8 v3, v3, 0x1

    #@32
    goto :goto_22

    #@33
    :cond_33
    :goto_33
    xor-int/2addr v0, v1

    #@34
    .line 2776
    new-instance v1, Ljava/lang/StringBuilder;

    #@36
    const-string v2, "A MIME type set here must not start with *: "

    #@38
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@3b
    .line 2777
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v1

    #@47
    .line 2776
    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    #@4a
    .line 2779
    :cond_4a
    sget v0, Landroidx/core/R$id;->tag_on_receive_content_mime_types:I

    #@4c
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    #@4f
    .line 2780
    sget p1, Landroidx/core/R$id;->tag_on_receive_content_listener:I

    #@51
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    #@54
    return-void
.end method

.method public static setOverScrollMode(Landroid/view/View;I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 596
    invoke-virtual {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    #@3
    return-void
.end method

.method public static setPaddingRelative(Landroid/view/View;IIII)V
    .registers 5

    #@0
    .line 1888
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/view/ViewCompat$Api17Impl;->setPaddingRelative(Landroid/view/View;IIII)V

    #@3
    return-void
.end method

.method public static setPivotX(Landroid/view/View;F)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 2263
    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotX(F)V

    #@3
    return-void
.end method

.method public static setPivotY(Landroid/view/View;F)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 2292
    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotY(F)V

    #@3
    return-void
.end method

.method public static setPointerIcon(Landroid/view/View;Landroidx/core/view/PointerIconCompat;)V
    .registers 2

    #@0
    if-eqz p1, :cond_7

    #@2
    .line 3844
    invoke-virtual {p1}, Landroidx/core/view/PointerIconCompat;->getPointerIcon()Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    goto :goto_8

    #@7
    :cond_7
    const/4 p1, 0x0

    #@8
    :goto_8
    check-cast p1, Landroid/view/PointerIcon;

    #@a
    .line 3843
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api24Impl;->setPointerIcon(Landroid/view/View;Landroid/view/PointerIcon;)V

    #@d
    return-void
.end method

.method public static setRotation(Landroid/view/View;F)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 2182
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    #@3
    return-void
.end method

.method public static setRotationX(Landroid/view/View;F)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 2196
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotationX(F)V

    #@3
    return-void
.end method

.method public static setRotationY(Landroid/view/View;F)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 2210
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotationY(F)V

    #@3
    return-void
.end method

.method public static setSaveFromParentEnabled(Landroid/view/View;Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 2936
    invoke-virtual {p0, p1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    #@3
    return-void
.end method

.method public static setScaleX(Landroid/view/View;F)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 2223
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    #@3
    return-void
.end method

.method public static setScaleY(Landroid/view/View;F)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 2236
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    #@3
    return-void
.end method

.method public static setScreenReaderFocusable(Landroid/view/View;Z)V
    .registers 3

    #@0
    .line 4208
    invoke-static {}, Landroidx/core/view/ViewCompat;->screenReaderFocusableProperty()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;

    #@3
    move-result-object v0

    #@4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@7
    move-result-object p1

    #@8
    invoke-virtual {v0, p0, p1}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->set(Landroid/view/View;Ljava/lang/Object;)V

    #@b
    return-void
.end method

.method public static setScrollIndicators(Landroid/view/View;I)V
    .registers 2

    #@0
    .line 3780
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api23Impl;->setScrollIndicators(Landroid/view/View;I)V

    #@3
    return-void
.end method

.method public static setScrollIndicators(Landroid/view/View;II)V
    .registers 3

    #@0
    .line 3814
    invoke-static {p0, p1, p2}, Landroidx/core/view/ViewCompat$Api23Impl;->setScrollIndicators(Landroid/view/View;II)V

    #@3
    return-void
.end method

.method public static setStateDescription(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    .line 1389
    invoke-static {}, Landroidx/core/view/ViewCompat;->stateDescriptionProperty()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0, p1}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->set(Landroid/view/View;Ljava/lang/Object;)V

    #@7
    return-void
.end method

.method public static setSystemGestureExclusionRects(Landroid/view/View;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 2610
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1d

    #@4
    if-lt v0, v1, :cond_9

    #@6
    .line 2611
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api29Impl;->setSystemGestureExclusionRects(Landroid/view/View;Ljava/util/List;)V

    #@9
    :cond_9
    return-void
.end method

.method public static setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 2

    #@0
    .line 3882
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api26Impl;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    #@3
    return-void
.end method

.method public static setTransitionName(Landroid/view/View;Ljava/lang/String;)V
    .registers 2

    #@0
    .line 2402
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api21Impl;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    #@3
    return-void
.end method

.method public static setTranslationX(Landroid/view/View;F)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 2105
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    #@3
    return-void
.end method

.method public static setTranslationY(Landroid/view/View;F)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 2122
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    #@3
    return-void
.end method

.method public static setTranslationZ(Landroid/view/View;F)V
    .registers 2

    #@0
    .line 2377
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api21Impl;->setTranslationZ(Landroid/view/View;F)V

    #@3
    return-void
.end method

.method private static setViewImportanceForAccessibilityIfNeeded(Landroid/view/View;)V
    .registers 4

    #@0
    .line 4523
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_a

    #@6
    const/4 v0, 0x1

    #@7
    .line 4525
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    #@a
    .line 4529
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@d
    move-result-object v0

    #@e
    .line 4530
    :goto_e
    instance-of v1, v0, Landroid/view/View;

    #@10
    if-eqz v1, :cond_26

    #@12
    .line 4531
    move-object v1, v0

    #@13
    check-cast v1, Landroid/view/View;

    #@15
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    #@18
    move-result v1

    #@19
    const/4 v2, 0x4

    #@1a
    if-ne v1, v2, :cond_21

    #@1c
    const/4 v0, 0x2

    #@1d
    .line 4533
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    #@20
    goto :goto_26

    #@21
    .line 4537
    :cond_21
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    #@24
    move-result-object v0

    #@25
    goto :goto_e

    #@26
    :cond_26
    :goto_26
    return-void
.end method

.method public static setWindowInsetsAnimationCallback(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V
    .registers 2

    #@0
    .line 2719
    invoke-static {p0, p1}, Landroidx/core/view/WindowInsetsAnimationCompat;->setCallback(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V

    #@3
    return-void
.end method

.method public static setX(Landroid/view/View;F)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 2154
    invoke-virtual {p0, p1}, Landroid/view/View;->setX(F)V

    #@3
    return-void
.end method

.method public static setY(Landroid/view/View;F)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 2169
    invoke-virtual {p0, p1}, Landroid/view/View;->setY(F)V

    #@3
    return-void
.end method

.method public static setZ(Landroid/view/View;F)V
    .registers 2

    #@0
    .line 3606
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api21Impl;->setZ(Landroid/view/View;F)V

    #@3
    return-void
.end method

.method public static startDragAndDrop(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z
    .registers 5

    #@0
    .line 3894
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/view/ViewCompat$Api24Impl;->startDragAndDrop(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static startNestedScroll(Landroid/view/View;I)Z
    .registers 2

    #@0
    .line 3160
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api21Impl;->startNestedScroll(Landroid/view/View;I)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static startNestedScroll(Landroid/view/View;II)Z
    .registers 4

    #@0
    .line 3306
    instance-of v0, p0, Landroidx/core/view/NestedScrollingChild2;

    #@2
    if-eqz v0, :cond_b

    #@4
    .line 3307
    check-cast p0, Landroidx/core/view/NestedScrollingChild2;

    #@6
    invoke-interface {p0, p1, p2}, Landroidx/core/view/NestedScrollingChild2;->startNestedScroll(II)Z

    #@9
    move-result p0

    #@a
    return p0

    #@b
    :cond_b
    if-nez p2, :cond_12

    #@d
    .line 3309
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->startNestedScroll(Landroid/view/View;I)Z

    #@10
    move-result p0

    #@11
    return p0

    #@12
    :cond_12
    const/4 p0, 0x0

    #@13
    return p0
.end method

.method private static stateDescriptionProperty()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/view/ViewCompat$AccessibilityViewProperty<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    #@0
    .line 4329
    new-instance v0, Landroidx/core/view/ViewCompat$3;

    #@2
    sget v1, Landroidx/core/R$id;->tag_state_description:I

    #@4
    const-class v2, Ljava/lang/CharSequence;

    #@6
    const/16 v3, 0x40

    #@8
    const/16 v4, 0x1e

    #@a
    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/core/view/ViewCompat$3;-><init>(ILjava/lang/Class;II)V

    #@d
    return-object v0
.end method

.method public static stopNestedScroll(Landroid/view/View;)V
    .registers 1

    #@0
    .line 3179
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api21Impl;->stopNestedScroll(Landroid/view/View;)V

    #@3
    return-void
.end method

.method public static stopNestedScroll(Landroid/view/View;I)V
    .registers 3

    #@0
    .line 3323
    instance-of v0, p0, Landroidx/core/view/NestedScrollingChild2;

    #@2
    if-eqz v0, :cond_a

    #@4
    .line 3324
    check-cast p0, Landroidx/core/view/NestedScrollingChild2;

    #@6
    invoke-interface {p0, p1}, Landroidx/core/view/NestedScrollingChild2;->stopNestedScroll(I)V

    #@9
    goto :goto_f

    #@a
    :cond_a
    if-nez p1, :cond_f

    #@c
    .line 3326
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    #@f
    :cond_f
    :goto_f
    return-void
.end method

.method private static tickleInvalidationFlag(Landroid/view/View;)V
    .registers 3

    #@0
    .line 3707
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    #@3
    move-result v0

    #@4
    const/high16 v1, 0x3f800000    # 1.0f

    #@6
    add-float/2addr v1, v0

    #@7
    .line 3708
    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    #@a
    .line 3709
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    #@d
    return-void
.end method

.method public static updateDragShadow(Landroid/view/View;Landroid/view/View$DragShadowBuilder;)V
    .registers 2

    #@0
    .line 3915
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api24Impl;->updateDragShadow(Landroid/view/View;Landroid/view/View$DragShadowBuilder;)V

    #@3
    return-void
.end method
