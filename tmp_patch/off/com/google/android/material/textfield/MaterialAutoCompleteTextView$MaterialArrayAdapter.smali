.class Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MaterialAutoCompleteTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MaterialArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private pressedRippleColor:Landroid/content/res/ColorStateList;

.field private selectedItemRippleOverlaidColor:Landroid/content/res/ColorStateList;

.field final synthetic this$0:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;Landroid/content/Context;I[Ljava/lang/String;)V
    .registers 5

    #@0
    .line 460
    iput-object p1, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;->this$0:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    #@2
    .line 461
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    #@5
    .line 462
    invoke-virtual {p0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;->updateSelectedItemColorStateList()V

    #@8
    return-void
.end method

.method private createItemSelectedColorStateList()Landroid/content/res/ColorStateList;
    .registers 10

    #@0
    .line 509
    invoke-direct {p0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;->hasSelectedColor()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_60

    #@6
    .line 510
    invoke-direct {p0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;->hasSelectedRippleColor()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_60

    #@c
    const/4 v0, 0x2

    #@d
    new-array v1, v0, [I

    #@f
    .line 514
    fill-array-data v1, :array_62

    #@12
    new-array v2, v0, [I

    #@14
    .line 515
    fill-array-data v2, :array_6a

    #@17
    .line 517
    iget-object v3, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;->this$0:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    #@19
    .line 518
    # getter for: Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->simpleItemSelectedRippleColor:Landroid/content/res/ColorStateList;
    invoke-static {v3}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->access$300(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;)Landroid/content/res/ColorStateList;

    #@1c
    move-result-object v3

    #@1d
    const/4 v4, 0x0

    #@1e
    invoke-virtual {v3, v2, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@21
    move-result v3

    #@22
    .line 519
    iget-object v5, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;->this$0:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    #@24
    .line 520
    # getter for: Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->simpleItemSelectedRippleColor:Landroid/content/res/ColorStateList;
    invoke-static {v5}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->access$300(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;)Landroid/content/res/ColorStateList;

    #@27
    move-result-object v5

    #@28
    invoke-virtual {v5, v1, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@2b
    move-result v5

    #@2c
    const/4 v6, 0x3

    #@2d
    new-array v7, v6, [I

    #@2f
    .line 522
    iget-object v8, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;->this$0:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    #@31
    .line 524
    # getter for: Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->simpleItemSelectedColor:I
    invoke-static {v8}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->access$200(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;)I

    #@34
    move-result v8

    #@35
    invoke-static {v8, v3}, Lcom/google/android/material/color/MaterialColors;->layer(II)I

    #@38
    move-result v3

    #@39
    aput v3, v7, v4

    #@3b
    iget-object v3, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;->this$0:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    #@3d
    .line 525
    # getter for: Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->simpleItemSelectedColor:I
    invoke-static {v3}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->access$200(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;)I

    #@40
    move-result v3

    #@41
    invoke-static {v3, v5}, Lcom/google/android/material/color/MaterialColors;->layer(II)I

    #@44
    move-result v3

    #@45
    const/4 v5, 0x1

    #@46
    aput v3, v7, v5

    #@48
    iget-object v3, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;->this$0:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    #@4a
    .line 526
    # getter for: Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->simpleItemSelectedColor:I
    invoke-static {v3}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->access$200(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;)I

    #@4d
    move-result v3

    #@4e
    aput v3, v7, v0

    #@50
    new-array v3, v6, [[I

    #@52
    aput-object v2, v3, v4

    #@54
    aput-object v1, v3, v5

    #@56
    new-array v1, v4, [I

    #@58
    aput-object v1, v3, v0

    #@5a
    .line 530
    new-instance v0, Landroid/content/res/ColorStateList;

    #@5c
    invoke-direct {v0, v3, v7}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    #@5f
    return-object v0

    #@60
    :cond_60
    const/4 v0, 0x0

    #@61
    return-object v0

    #@62
    :array_62
    .array-data 4
        0x1010367
        -0x10100a7
    .end array-data

    #@6a
    :array_6a
    .array-data 4
        0x10100a1
        -0x10100a7
    .end array-data
.end method

.method private getSelectedItemDrawable()Landroid/graphics/drawable/Drawable;
    .registers 5

    #@0
    .line 485
    invoke-direct {p0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;->hasSelectedColor()Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_24

    #@7
    .line 493
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    #@9
    iget-object v2, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;->this$0:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    #@b
    # getter for: Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->simpleItemSelectedColor:I
    invoke-static {v2}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->access$200(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;)I

    #@e
    move-result v2

    #@f
    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    #@12
    .line 494
    iget-object v2, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;->pressedRippleColor:Landroid/content/res/ColorStateList;

    #@14
    if-eqz v2, :cond_23

    #@16
    .line 500
    iget-object v2, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;->selectedItemRippleOverlaidColor:Landroid/content/res/ColorStateList;

    #@18
    invoke-static {v0, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    #@1b
    .line 501
    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    #@1d
    iget-object v3, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;->pressedRippleColor:Landroid/content/res/ColorStateList;

    #@1f
    invoke-direct {v2, v3, v0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@22
    return-object v2

    #@23
    :cond_23
    return-object v0

    #@24
    :cond_24
    return-object v1
.end method

.method private hasSelectedColor()Z
    .registers 2

    #@0
    .line 551
    iget-object v0, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;->this$0:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    #@2
    # getter for: Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->simpleItemSelectedColor:I
    invoke-static {v0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->access$200(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;)I

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    :goto_b
    return v0
.end method

.method private hasSelectedRippleColor()Z
    .registers 2

    #@0
    .line 555
    iget-object v0, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;->this$0:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    #@2
    # getter for: Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->simpleItemSelectedRippleColor:Landroid/content/res/ColorStateList;
    invoke-static {v0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->access$300(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;)Landroid/content/res/ColorStateList;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    :goto_b
    return v0
.end method

.method private sanitizeDropdownItemSelectedRippleColor()Landroid/content/res/ColorStateList;
    .registers 7

    #@0
    .line 534
    invoke-direct {p0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;->hasSelectedRippleColor()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_8

    #@6
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    :cond_8
    const/4 v0, 0x1

    #@9
    new-array v1, v0, [I

    #@b
    const v2, 0x10100a7

    #@e
    const/4 v3, 0x0

    #@f
    aput v2, v1, v3

    #@11
    const/4 v2, 0x2

    #@12
    new-array v4, v2, [I

    #@14
    .line 541
    iget-object v5, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;->this$0:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    #@16
    .line 543
    # getter for: Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->simpleItemSelectedRippleColor:Landroid/content/res/ColorStateList;
    invoke-static {v5}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->access$300(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;)Landroid/content/res/ColorStateList;

    #@19
    move-result-object v5

    #@1a
    invoke-virtual {v5, v1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@1d
    move-result v5

    #@1e
    aput v5, v4, v3

    #@20
    aput v3, v4, v0

    #@22
    new-array v2, v2, [[I

    #@24
    aput-object v1, v2, v3

    #@26
    new-array v1, v3, [I

    #@28
    aput-object v1, v2, v0

    #@2a
    .line 547
    new-instance v0, Landroid/content/res/ColorStateList;

    #@2c
    invoke-direct {v0, v2, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    #@2f
    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    #@0
    .line 472
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    #@3
    move-result-object p1

    #@4
    .line 474
    instance-of p2, p1, Landroid/widget/TextView;

    #@6
    if-eqz p2, :cond_28

    #@8
    .line 475
    move-object p2, p1

    #@9
    check-cast p2, Landroid/widget/TextView;

    #@b
    .line 476
    iget-object p3, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;->this$0:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    #@d
    invoke-virtual {p3}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->getText()Landroid/text/Editable;

    #@10
    move-result-object p3

    #@11
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@14
    move-result-object p3

    #@15
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {p3, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    #@1c
    move-result p3

    #@1d
    if-eqz p3, :cond_24

    #@1f
    .line 477
    invoke-direct {p0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;->getSelectedItemDrawable()Landroid/graphics/drawable/Drawable;

    #@22
    move-result-object p3

    #@23
    goto :goto_25

    #@24
    :cond_24
    const/4 p3, 0x0

    #@25
    :goto_25
    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    #@28
    :cond_28
    return-object p1
.end method

.method updateSelectedItemColorStateList()V
    .registers 2

    #@0
    .line 466
    invoke-direct {p0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;->sanitizeDropdownItemSelectedRippleColor()Landroid/content/res/ColorStateList;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;->pressedRippleColor:Landroid/content/res/ColorStateList;

    #@6
    .line 467
    invoke-direct {p0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;->createItemSelectedColorStateList()Landroid/content/res/ColorStateList;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;->selectedItemRippleOverlaidColor:Landroid/content/res/ColorStateList;

    #@c
    return-void
.end method
