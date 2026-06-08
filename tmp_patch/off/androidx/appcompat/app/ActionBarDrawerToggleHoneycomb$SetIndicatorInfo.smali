.class Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggleHoneycomb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SetIndicatorInfo"
.end annotation


# instance fields
.field public setHomeActionContentDescription:Ljava/lang/reflect/Method;

.field public setHomeAsUpIndicator:Ljava/lang/reflect/Method;

.field public upIndicatorView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 8

    #@0
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    const/4 v1, 0x1

    #@5
    .line 103
    :try_start_5
    const-class v2, Landroid/app/ActionBar;

    #@7
    const-string v3, "setHomeAsUpIndicator"

    #@9
    new-array v4, v1, [Ljava/lang/Class;

    #@b
    const-class v5, Landroid/graphics/drawable/Drawable;

    #@d
    aput-object v5, v4, v0

    #@f
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@12
    move-result-object v2

    #@13
    iput-object v2, p0, Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeAsUpIndicator:Ljava/lang/reflect/Method;

    #@15
    .line 105
    const-class v2, Landroid/app/ActionBar;

    #@17
    const-string v3, "setHomeActionContentDescription"

    #@19
    new-array v4, v1, [Ljava/lang/Class;

    #@1b
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@1d
    aput-object v5, v4, v0

    #@1f
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@22
    move-result-object v2

    #@23
    iput-object v2, p0, Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeActionContentDescription:Ljava/lang/reflect/Method;
    :try_end_25
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_25} :catch_26

    #@25
    return-void

    #@26
    :catch_26
    const v2, 0x102002c

    #@29
    .line 114
    invoke-virtual {p1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    #@2c
    move-result-object p1

    #@2d
    if-nez p1, :cond_30

    #@2f
    return-void

    #@30
    .line 120
    :cond_30
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@33
    move-result-object p1

    #@34
    check-cast p1, Landroid/view/ViewGroup;

    #@36
    .line 121
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    #@39
    move-result v3

    #@3a
    const/4 v4, 0x2

    #@3b
    if-eq v3, v4, :cond_3e

    #@3d
    return-void

    #@3e
    .line 127
    :cond_3e
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@41
    move-result-object v0

    #@42
    .line 128
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@45
    move-result-object p1

    #@46
    .line 129
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    #@49
    move-result v1

    #@4a
    if-ne v1, v2, :cond_4d

    #@4c
    move-object v0, p1

    #@4d
    .line 131
    :cond_4d
    nop

    #@4e
    instance-of p1, v0, Landroid/widget/ImageView;

    #@50
    if-eqz p1, :cond_56

    #@52
    .line 133
    check-cast v0, Landroid/widget/ImageView;

    #@54
    iput-object v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->upIndicatorView:Landroid/widget/ImageView;

    #@56
    :cond_56
    return-void
.end method
