.class Lcom/google/android/material/textfield/IndicatorViewController$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "IndicatorViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/textfield/IndicatorViewController;->updateCaptionViewsVisibility(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/textfield/IndicatorViewController;

.field final synthetic val$captionToHide:I

.field final synthetic val$captionToShow:I

.field final synthetic val$captionViewToHide:Landroid/widget/TextView;

.field final synthetic val$captionViewToShow:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/IndicatorViewController;ILandroid/widget/TextView;ILandroid/widget/TextView;)V
    .registers 6

    #@0
    .line 269
    iput-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController$1;->this$0:Lcom/google/android/material/textfield/IndicatorViewController;

    #@2
    iput p2, p0, Lcom/google/android/material/textfield/IndicatorViewController$1;->val$captionToShow:I

    #@4
    iput-object p3, p0, Lcom/google/android/material/textfield/IndicatorViewController$1;->val$captionViewToHide:Landroid/widget/TextView;

    #@6
    iput p4, p0, Lcom/google/android/material/textfield/IndicatorViewController$1;->val$captionToHide:I

    #@8
    iput-object p5, p0, Lcom/google/android/material/textfield/IndicatorViewController$1;->val$captionViewToShow:Landroid/widget/TextView;

    #@a
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    #@d
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    #@0
    .line 272
    iget-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController$1;->this$0:Lcom/google/android/material/textfield/IndicatorViewController;

    #@2
    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController$1;->val$captionToShow:I

    #@4
    # setter for: Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I
    invoke-static {p1, v0}, Lcom/google/android/material/textfield/IndicatorViewController;->access$002(Lcom/google/android/material/textfield/IndicatorViewController;I)I

    #@7
    .line 273
    iget-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController$1;->this$0:Lcom/google/android/material/textfield/IndicatorViewController;

    #@9
    const/4 v0, 0x0

    #@a
    # setter for: Lcom/google/android/material/textfield/IndicatorViewController;->captionAnimator:Landroid/animation/Animator;
    invoke-static {p1, v0}, Lcom/google/android/material/textfield/IndicatorViewController;->access$102(Lcom/google/android/material/textfield/IndicatorViewController;Landroid/animation/Animator;)Landroid/animation/Animator;

    #@d
    .line 274
    iget-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController$1;->val$captionViewToHide:Landroid/widget/TextView;

    #@f
    if-eqz p1, :cond_2b

    #@11
    const/4 v1, 0x4

    #@12
    .line 275
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    #@15
    .line 276
    iget p1, p0, Lcom/google/android/material/textfield/IndicatorViewController$1;->val$captionToHide:I

    #@17
    const/4 v1, 0x1

    #@18
    if-ne p1, v1, :cond_2b

    #@1a
    iget-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController$1;->this$0:Lcom/google/android/material/textfield/IndicatorViewController;

    #@1c
    # getter for: Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/google/android/material/textfield/IndicatorViewController;->access$200(Lcom/google/android/material/textfield/IndicatorViewController;)Landroid/widget/TextView;

    #@1f
    move-result-object p1

    #@20
    if-eqz p1, :cond_2b

    #@22
    .line 277
    iget-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController$1;->this$0:Lcom/google/android/material/textfield/IndicatorViewController;

    #@24
    # getter for: Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/google/android/material/textfield/IndicatorViewController;->access$200(Lcom/google/android/material/textfield/IndicatorViewController;)Landroid/widget/TextView;

    #@27
    move-result-object p1

    #@28
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@2b
    .line 281
    :cond_2b
    iget-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController$1;->val$captionViewToShow:Landroid/widget/TextView;

    #@2d
    if-eqz p1, :cond_3a

    #@2f
    const/4 v0, 0x0

    #@30
    .line 282
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    #@33
    .line 283
    iget-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController$1;->val$captionViewToShow:Landroid/widget/TextView;

    #@35
    const/high16 v0, 0x3f800000    # 1.0f

    #@37
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    #@3a
    :cond_3a
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    #@0
    .line 289
    iget-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController$1;->val$captionViewToShow:Landroid/widget/TextView;

    #@2
    if-eqz p1, :cond_e

    #@4
    const/4 v0, 0x0

    #@5
    .line 290
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    #@8
    .line 291
    iget-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController$1;->val$captionViewToShow:Landroid/widget/TextView;

    #@a
    const/4 v0, 0x0

    #@b
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    #@e
    :cond_e
    return-void
.end method
