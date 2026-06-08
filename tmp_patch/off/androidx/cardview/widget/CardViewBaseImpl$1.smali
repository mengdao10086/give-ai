.class Landroidx/cardview/widget/CardViewBaseImpl$1;
.super Ljava/lang/Object;
.source "CardViewBaseImpl.java"

# interfaces
.implements Landroidx/cardview/widget/RoundRectDrawableWithShadow$RoundRectHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/cardview/widget/CardViewBaseImpl;->initStatic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/cardview/widget/CardViewBaseImpl;


# direct methods
.method constructor <init>(Landroidx/cardview/widget/CardViewBaseImpl;)V
    .registers 2

    #@0
    .line 38
    iput-object p1, p0, Landroidx/cardview/widget/CardViewBaseImpl$1;->this$0:Landroidx/cardview/widget/CardViewBaseImpl;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V
    .registers 21

    #@0
    move-object/from16 v0, p0

    #@2
    move-object/from16 v7, p1

    #@4
    move-object/from16 v8, p2

    #@6
    const/high16 v1, 0x40000000    # 2.0f

    #@8
    mul-float v1, v1, p3

    #@a
    .line 43
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    #@d
    move-result v2

    #@e
    sub-float/2addr v2, v1

    #@f
    const/high16 v9, 0x3f800000    # 1.0f

    #@11
    sub-float v10, v2, v9

    #@13
    .line 44
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    #@16
    move-result v2

    #@17
    sub-float/2addr v2, v1

    #@18
    sub-float v11, v2, v9

    #@1a
    cmpl-float v1, p3, v9

    #@1c
    if-ltz v1, :cond_a4

    #@1e
    const/high16 v1, 0x3f000000    # 0.5f

    #@20
    add-float v12, p3, v1

    #@22
    .line 48
    iget-object v1, v0, Landroidx/cardview/widget/CardViewBaseImpl$1;->this$0:Landroidx/cardview/widget/CardViewBaseImpl;

    #@24
    iget-object v1, v1, Landroidx/cardview/widget/CardViewBaseImpl;->mCornerRect:Landroid/graphics/RectF;

    #@26
    neg-float v2, v12

    #@27
    invoke-virtual {v1, v2, v2, v12, v12}, Landroid/graphics/RectF;->set(FFFF)V

    #@2a
    .line 50
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    #@2d
    move-result v13

    #@2e
    .line 51
    iget v1, v8, Landroid/graphics/RectF;->left:F

    #@30
    add-float/2addr v1, v12

    #@31
    iget v2, v8, Landroid/graphics/RectF;->top:F

    #@33
    add-float/2addr v2, v12

    #@34
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    #@37
    .line 53
    iget-object v1, v0, Landroidx/cardview/widget/CardViewBaseImpl$1;->this$0:Landroidx/cardview/widget/CardViewBaseImpl;

    #@39
    iget-object v2, v1, Landroidx/cardview/widget/CardViewBaseImpl;->mCornerRect:Landroid/graphics/RectF;

    #@3b
    const/high16 v3, 0x43340000    # 180.0f

    #@3d
    const/high16 v4, 0x42b40000    # 90.0f

    #@3f
    const/4 v5, 0x1

    #@40
    move-object/from16 v1, p1

    #@42
    move-object/from16 v6, p4

    #@44
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    #@47
    const/4 v14, 0x0

    #@48
    .line 54
    invoke-virtual {v7, v10, v14}, Landroid/graphics/Canvas;->translate(FF)V

    #@4b
    const/high16 v15, 0x42b40000    # 90.0f

    #@4d
    .line 55
    invoke-virtual {v7, v15}, Landroid/graphics/Canvas;->rotate(F)V

    #@50
    .line 56
    iget-object v1, v0, Landroidx/cardview/widget/CardViewBaseImpl$1;->this$0:Landroidx/cardview/widget/CardViewBaseImpl;

    #@52
    iget-object v2, v1, Landroidx/cardview/widget/CardViewBaseImpl;->mCornerRect:Landroid/graphics/RectF;

    #@54
    move-object/from16 v1, p1

    #@56
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    #@59
    .line 57
    invoke-virtual {v7, v11, v14}, Landroid/graphics/Canvas;->translate(FF)V

    #@5c
    .line 58
    invoke-virtual {v7, v15}, Landroid/graphics/Canvas;->rotate(F)V

    #@5f
    .line 59
    iget-object v1, v0, Landroidx/cardview/widget/CardViewBaseImpl$1;->this$0:Landroidx/cardview/widget/CardViewBaseImpl;

    #@61
    iget-object v2, v1, Landroidx/cardview/widget/CardViewBaseImpl;->mCornerRect:Landroid/graphics/RectF;

    #@63
    move-object/from16 v1, p1

    #@65
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    #@68
    .line 60
    invoke-virtual {v7, v10, v14}, Landroid/graphics/Canvas;->translate(FF)V

    #@6b
    .line 61
    invoke-virtual {v7, v15}, Landroid/graphics/Canvas;->rotate(F)V

    #@6e
    .line 62
    iget-object v1, v0, Landroidx/cardview/widget/CardViewBaseImpl$1;->this$0:Landroidx/cardview/widget/CardViewBaseImpl;

    #@70
    iget-object v2, v1, Landroidx/cardview/widget/CardViewBaseImpl;->mCornerRect:Landroid/graphics/RectF;

    #@72
    move-object/from16 v1, p1

    #@74
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    #@77
    .line 63
    invoke-virtual {v7, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@7a
    .line 65
    iget v1, v8, Landroid/graphics/RectF;->left:F

    #@7c
    add-float/2addr v1, v12

    #@7d
    sub-float v2, v1, v9

    #@7f
    iget v3, v8, Landroid/graphics/RectF;->top:F

    #@81
    iget v1, v8, Landroid/graphics/RectF;->right:F

    #@83
    sub-float/2addr v1, v12

    #@84
    add-float v4, v1, v9

    #@86
    iget v1, v8, Landroid/graphics/RectF;->top:F

    #@88
    add-float v5, v1, v12

    #@8a
    move-object/from16 v1, p1

    #@8c
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@8f
    .line 69
    iget v1, v8, Landroid/graphics/RectF;->left:F

    #@91
    add-float/2addr v1, v12

    #@92
    sub-float v2, v1, v9

    #@94
    iget v1, v8, Landroid/graphics/RectF;->bottom:F

    #@96
    sub-float v3, v1, v12

    #@98
    iget v1, v8, Landroid/graphics/RectF;->right:F

    #@9a
    sub-float/2addr v1, v12

    #@9b
    add-float v4, v1, v9

    #@9d
    iget v5, v8, Landroid/graphics/RectF;->bottom:F

    #@9f
    move-object/from16 v1, p1

    #@a1
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@a4
    .line 74
    :cond_a4
    iget v2, v8, Landroid/graphics/RectF;->left:F

    #@a6
    iget v1, v8, Landroid/graphics/RectF;->top:F

    #@a8
    add-float v3, v1, p3

    #@aa
    iget v4, v8, Landroid/graphics/RectF;->right:F

    #@ac
    iget v1, v8, Landroid/graphics/RectF;->bottom:F

    #@ae
    sub-float v5, v1, p3

    #@b0
    move-object/from16 v1, p1

    #@b2
    move-object/from16 v6, p4

    #@b4
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@b7
    return-void
.end method
