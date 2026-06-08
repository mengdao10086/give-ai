.class Landroidx/emoji2/viewsintegration/EmojiTransformationMethod;
.super Ljava/lang/Object;
.source "EmojiTransformationMethod.java"

# interfaces
.implements Landroid/text/method/TransformationMethod;


# instance fields
.field private final mTransformationMethod:Landroid/text/method/TransformationMethod;


# direct methods
.method constructor <init>(Landroid/text/method/TransformationMethod;)V
    .registers 2

    #@0
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 40
    iput-object p1, p0, Landroidx/emoji2/viewsintegration/EmojiTransformationMethod;->mTransformationMethod:Landroid/text/method/TransformationMethod;

    #@5
    return-void
.end method


# virtual methods
.method public getOriginalTransformationMethod()Landroid/text/method/TransformationMethod;
    .registers 2

    #@0
    .line 81
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiTransformationMethod;->mTransformationMethod:Landroid/text/method/TransformationMethod;

    #@2
    return-object v0
.end method

.method public getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .registers 4

    #@0
    .line 45
    invoke-virtual {p2}, Landroid/view/View;->isInEditMode()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_7

    #@6
    return-object p1

    #@7
    .line 49
    :cond_7
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiTransformationMethod;->mTransformationMethod:Landroid/text/method/TransformationMethod;

    #@9
    if-eqz v0, :cond_f

    #@b
    .line 50
    invoke-interface {v0, p1, p2}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    #@e
    move-result-object p1

    #@f
    :cond_f
    if-eqz p1, :cond_25

    #@11
    .line 54
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    #@14
    move-result-object p2

    #@15
    invoke-virtual {p2}, Landroidx/emoji2/text/EmojiCompat;->getLoadState()I

    #@18
    move-result p2

    #@19
    const/4 v0, 0x1

    #@1a
    if-eq p2, v0, :cond_1d

    #@1c
    goto :goto_25

    #@1d
    .line 56
    :cond_1d
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    #@20
    move-result-object p2

    #@21
    invoke-virtual {p2, p1}, Landroidx/emoji2/text/EmojiCompat;->process(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@24
    move-result-object p1

    #@25
    :cond_25
    :goto_25
    return-object p1
.end method

.method public onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V
    .registers 12

    #@0
    .line 70
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiTransformationMethod;->mTransformationMethod:Landroid/text/method/TransformationMethod;

    #@2
    if-eqz v0, :cond_c

    #@4
    move-object v1, p1

    #@5
    move-object v2, p2

    #@6
    move v3, p3

    #@7
    move v4, p4

    #@8
    move-object v5, p5

    #@9
    .line 71
    invoke-interface/range {v0 .. v5}, Landroid/text/method/TransformationMethod;->onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V

    #@c
    :cond_c
    return-void
.end method
