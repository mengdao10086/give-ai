.class Landroidx/transition/ViewUtilsApi23;
.super Landroidx/transition/ViewUtilsApi22;
.source "ViewUtilsApi23.java"


# static fields
.field private static sTryHiddenSetTransitionVisibility:Z = true


# direct methods
.method static constructor <clinit>()V
    .registers 0

    #@0
    return-void
.end method

.method constructor <init>()V
    .registers 1

    #@0
    .line 27
    invoke-direct {p0}, Landroidx/transition/ViewUtilsApi22;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public setTransitionVisibility(Landroid/view/View;I)V
    .registers 5

    #@0
    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1c

    #@4
    if-ne v0, v1, :cond_a

    #@6
    .line 39
    invoke-super {p0, p1, p2}, Landroidx/transition/ViewUtilsApi22;->setTransitionVisibility(Landroid/view/View;I)V

    #@9
    goto :goto_15

    #@a
    .line 41
    :cond_a
    sget-boolean v0, Landroidx/transition/ViewUtilsApi23;->sTryHiddenSetTransitionVisibility:Z

    #@c
    if-eqz v0, :cond_15

    #@e
    .line 45
    :try_start_e
    invoke-virtual {p1, p2}, Landroid/view/View;->setTransitionVisibility(I)V
    :try_end_11
    .catch Ljava/lang/NoSuchMethodError; {:try_start_e .. :try_end_11} :catch_12

    #@11
    goto :goto_15

    #@12
    :catch_12
    const/4 p1, 0x0

    #@13
    .line 47
    sput-boolean p1, Landroidx/transition/ViewUtilsApi23;->sTryHiddenSetTransitionVisibility:Z

    #@15
    :cond_15
    :goto_15
    return-void
.end method
