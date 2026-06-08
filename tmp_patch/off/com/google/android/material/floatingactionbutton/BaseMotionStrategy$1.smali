.class Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy$1;
.super Landroid/util/Property;
.source "BaseMotionStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->createAnimator(Lcom/google/android/material/animation/MotionSpec;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;


# direct methods
.method constructor <init>(Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;Ljava/lang/Class;Ljava/lang/String;)V
    .registers 4

    #@0
    .line 156
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy$1;->this$0:Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;

    #@2
    invoke-direct {p0, p2, p3}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@5
    return-void
.end method


# virtual methods
.method public get(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Ljava/lang/Float;
    .registers 5

    #@0
    .line 161
    iget-object v0, p1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->originalTextCsl:Landroid/content/res/ColorStateList;

    #@2
    .line 164
    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getDrawableState()[I

    #@5
    move-result-object v1

    #@6
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy$1;->this$0:Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;

    #@8
    # getter for: Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->fab:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;
    invoke-static {v2}, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->access$000(Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;)Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    #@b
    move-result-object v2

    #@c
    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->originalTextCsl:Landroid/content/res/ColorStateList;

    #@e
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@11
    move-result v2

    #@12
    .line 163
    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@15
    move-result v0

    #@16
    .line 162
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    #@19
    move-result v0

    #@1a
    .line 165
    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getCurrentTextColor()I

    #@1d
    move-result p1

    #@1e
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    #@21
    move-result p1

    #@22
    int-to-float p1, p1

    #@23
    const/high16 v1, 0x437f0000    # 255.0f

    #@25
    div-float/2addr p1, v1

    #@26
    int-to-float v0, v0

    #@27
    div-float/2addr p1, v0

    #@28
    const/4 v0, 0x0

    #@29
    const/high16 v1, 0x3f800000    # 1.0f

    #@2b
    .line 166
    invoke-static {v0, v1, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    #@2e
    move-result p1

    #@2f
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@32
    move-result-object p1

    #@33
    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    #@0
    .line 156
    check-cast p1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy$1;->get(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Ljava/lang/Float;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public set(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Ljava/lang/Float;)V
    .registers 8

    #@0
    .line 173
    iget-object v0, p1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->originalTextCsl:Landroid/content/res/ColorStateList;

    #@2
    .line 175
    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getDrawableState()[I

    #@5
    move-result-object v1

    #@6
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy$1;->this$0:Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;

    #@8
    # getter for: Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->fab:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;
    invoke-static {v2}, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->access$000(Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;)Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    #@b
    move-result-object v2

    #@c
    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->originalTextCsl:Landroid/content/res/ColorStateList;

    #@e
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@11
    move-result v2

    #@12
    .line 174
    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@15
    move-result v0

    #@16
    .line 178
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    #@19
    move-result v1

    #@1a
    int-to-float v1, v1

    #@1b
    const/high16 v2, 0x437f0000    # 255.0f

    #@1d
    div-float/2addr v1, v2

    #@1e
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    #@21
    move-result v3

    #@22
    const/4 v4, 0x0

    #@23
    invoke-static {v4, v1, v3}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    #@26
    move-result v1

    #@27
    mul-float/2addr v1, v2

    #@28
    float-to-int v1, v1

    #@29
    .line 182
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    #@2c
    move-result v2

    #@2d
    .line 183
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    #@30
    move-result v3

    #@31
    .line 184
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    #@34
    move-result v0

    #@35
    .line 180
    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    #@38
    move-result v0

    #@39
    .line 185
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@3c
    move-result-object v0

    #@3d
    .line 195
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    #@40
    move-result p2

    #@41
    const/high16 v1, 0x3f800000    # 1.0f

    #@43
    cmpl-float p2, p2, v1

    #@45
    if-nez p2, :cond_4d

    #@47
    .line 196
    iget-object p2, p1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->originalTextCsl:Landroid/content/res/ColorStateList;

    #@49
    invoke-virtual {p1, p2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->silentlyUpdateTextColor(Landroid/content/res/ColorStateList;)V

    #@4c
    goto :goto_50

    #@4d
    .line 198
    :cond_4d
    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->silentlyUpdateTextColor(Landroid/content/res/ColorStateList;)V

    #@50
    :goto_50
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    #@0
    .line 156
    check-cast p1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    #@2
    check-cast p2, Ljava/lang/Float;

    #@4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy$1;->set(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Ljava/lang/Float;)V

    #@7
    return-void
.end method
