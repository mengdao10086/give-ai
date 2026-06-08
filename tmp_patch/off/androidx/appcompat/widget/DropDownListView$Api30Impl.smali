.class Landroidx/appcompat/widget/DropDownListView$Api30Impl;
.super Ljava/lang/Object;
.source "DropDownListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/DropDownListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api30Impl"
.end annotation


# static fields
.field private static sHasMethods:Z

.field private static sPositionSelector:Ljava/lang/reflect/Method;

.field private static sSetNextSelectedPositionInt:Ljava/lang/reflect/Method;

.field private static sSetSelectedPositionInt:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    #@0
    .line 744
    :try_start_0
    const-class v0, Landroid/widget/AbsListView;

    #@2
    const-string v1, "positionSelector"

    #@4
    const/4 v2, 0x5

    #@5
    new-array v2, v2, [Ljava/lang/Class;

    #@7
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@9
    const/4 v4, 0x0

    #@a
    aput-object v3, v2, v4

    #@c
    const-class v3, Landroid/view/View;

    #@e
    const/4 v5, 0x1

    #@f
    aput-object v3, v2, v5

    #@11
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@13
    const/4 v6, 0x2

    #@14
    aput-object v3, v2, v6

    #@16
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@18
    const/4 v6, 0x3

    #@19
    aput-object v3, v2, v6

    #@1b
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@1d
    const/4 v6, 0x4

    #@1e
    aput-object v3, v2, v6

    #@20
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@23
    move-result-object v0

    #@24
    sput-object v0, Landroidx/appcompat/widget/DropDownListView$Api30Impl;->sPositionSelector:Ljava/lang/reflect/Method;

    #@26
    .line 747
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    #@29
    .line 748
    const-class v0, Landroid/widget/AdapterView;

    #@2b
    const-string v1, "setSelectedPositionInt"

    #@2d
    new-array v2, v5, [Ljava/lang/Class;

    #@2f
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@31
    aput-object v3, v2, v4

    #@33
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@36
    move-result-object v0

    #@37
    sput-object v0, Landroidx/appcompat/widget/DropDownListView$Api30Impl;->sSetSelectedPositionInt:Ljava/lang/reflect/Method;

    #@39
    .line 750
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    #@3c
    .line 751
    const-class v0, Landroid/widget/AdapterView;

    #@3e
    const-string v1, "setNextSelectedPositionInt"

    #@40
    new-array v2, v5, [Ljava/lang/Class;

    #@42
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@44
    aput-object v3, v2, v4

    #@46
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@49
    move-result-object v0

    #@4a
    sput-object v0, Landroidx/appcompat/widget/DropDownListView$Api30Impl;->sSetNextSelectedPositionInt:Ljava/lang/reflect/Method;

    #@4c
    .line 753
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    #@4f
    .line 754
    sput-boolean v5, Landroidx/appcompat/widget/DropDownListView$Api30Impl;->sHasMethods:Z
    :try_end_51
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_51} :catch_52

    #@51
    goto :goto_56

    #@52
    :catch_52
    move-exception v0

    #@53
    .line 756
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    #@56
    :goto_56
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 760
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static canPositionSelectorForHoveredItem()Z
    .registers 1

    #@0
    .line 769
    sget-boolean v0, Landroidx/appcompat/widget/DropDownListView$Api30Impl;->sHasMethods:Z

    #@2
    return v0
.end method

.method static positionSelectorForHoveredItem(Landroidx/appcompat/widget/DropDownListView;ILandroid/view/View;)V
    .registers 9

    #@0
    .line 784
    :try_start_0
    sget-object v0, Landroidx/appcompat/widget/DropDownListView$Api30Impl;->sPositionSelector:Ljava/lang/reflect/Method;

    #@2
    const/4 v1, 0x5

    #@3
    new-array v1, v1, [Ljava/lang/Object;

    #@5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v2

    #@9
    const/4 v3, 0x0

    #@a
    aput-object v2, v1, v3

    #@c
    const/4 v2, 0x1

    #@d
    aput-object p2, v1, v2

    #@f
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@12
    move-result-object p2

    #@13
    const/4 v4, 0x2

    #@14
    aput-object p2, v1, v4

    #@16
    const/4 p2, -0x1

    #@17
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a
    move-result-object v4

    #@1b
    const/4 v5, 0x3

    #@1c
    aput-object v4, v1, v5

    #@1e
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@21
    move-result-object p2

    #@22
    const/4 v4, 0x4

    #@23
    aput-object p2, v1, v4

    #@25
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    .line 785
    sget-object p2, Landroidx/appcompat/widget/DropDownListView$Api30Impl;->sSetSelectedPositionInt:Ljava/lang/reflect/Method;

    #@2a
    new-array v0, v2, [Ljava/lang/Object;

    #@2c
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2f
    move-result-object v1

    #@30
    aput-object v1, v0, v3

    #@32
    invoke-virtual {p2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@35
    .line 786
    sget-object p2, Landroidx/appcompat/widget/DropDownListView$Api30Impl;->sSetNextSelectedPositionInt:Ljava/lang/reflect/Method;

    #@37
    new-array v0, v2, [Ljava/lang/Object;

    #@39
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3c
    move-result-object p1

    #@3d
    aput-object p1, v0, v3

    #@3f
    invoke-virtual {p2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_42
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_42} :catch_48
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_42} :catch_43

    #@42
    goto :goto_4c

    #@43
    :catch_43
    move-exception p0

    #@44
    .line 790
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    #@47
    goto :goto_4c

    #@48
    :catch_48
    move-exception p0

    #@49
    .line 788
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    #@4c
    :goto_4c
    return-void
.end method
