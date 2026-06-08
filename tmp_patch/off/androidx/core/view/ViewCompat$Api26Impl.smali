.class Landroidx/core/view/ViewCompat$Api26Impl;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api26Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 5102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static addKeyboardNavigationClusters(Landroid/view/View;Ljava/util/Collection;I)V
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
    .line 5155
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->addKeyboardNavigationClusters(Ljava/util/Collection;I)V

    #@3
    return-void
.end method

.method static getImportantForAutofill(Landroid/view/View;)I
    .registers 1

    #@0
    .line 5170
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAutofill()I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static getNextClusterForwardId(Landroid/view/View;)I
    .registers 1

    #@0
    .line 5118
    invoke-virtual {p0}, Landroid/view/View;->getNextClusterForwardId()I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static hasExplicitFocusable(Landroid/view/View;)Z
    .registers 1

    #@0
    .line 5165
    invoke-virtual {p0}, Landroid/view/View;->hasExplicitFocusable()Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static isFocusedByDefault(Landroid/view/View;)Z
    .registers 1

    #@0
    .line 5138
    invoke-virtual {p0}, Landroid/view/View;->isFocusedByDefault()Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static isImportantForAutofill(Landroid/view/View;)Z
    .registers 1

    #@0
    .line 5180
    invoke-virtual {p0}, Landroid/view/View;->isImportantForAutofill()Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static isKeyboardNavigationCluster(Landroid/view/View;)Z
    .registers 1

    #@0
    .line 5128
    invoke-virtual {p0}, Landroid/view/View;->isKeyboardNavigationCluster()Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static keyboardNavigationClusterSearch(Landroid/view/View;Landroid/view/View;I)Landroid/view/View;
    .registers 3

    #@0
    .line 5149
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->keyboardNavigationClusterSearch(Landroid/view/View;I)Landroid/view/View;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method static restoreDefaultFocus(Landroid/view/View;)Z
    .registers 1

    #@0
    .line 5160
    invoke-virtual {p0}, Landroid/view/View;->restoreDefaultFocus()Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static varargs setAutofillHints(Landroid/view/View;[Ljava/lang/String;)V
    .registers 2

    #@0
    .line 5108
    invoke-virtual {p0, p1}, Landroid/view/View;->setAutofillHints([Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static setFocusedByDefault(Landroid/view/View;Z)V
    .registers 2

    #@0
    .line 5143
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusedByDefault(Z)V

    #@3
    return-void
.end method

.method static setImportantForAutofill(Landroid/view/View;I)V
    .registers 2

    #@0
    .line 5175
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAutofill(I)V

    #@3
    return-void
.end method

.method static setKeyboardNavigationCluster(Landroid/view/View;Z)V
    .registers 2

    #@0
    .line 5133
    invoke-virtual {p0, p1}, Landroid/view/View;->setKeyboardNavigationCluster(Z)V

    #@3
    return-void
.end method

.method static setNextClusterForwardId(Landroid/view/View;I)V
    .registers 2

    #@0
    .line 5123
    invoke-virtual {p0, p1}, Landroid/view/View;->setNextClusterForwardId(I)V

    #@3
    return-void
.end method

.method static setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 2

    #@0
    .line 5113
    invoke-virtual {p0, p1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    #@3
    return-void
.end method
