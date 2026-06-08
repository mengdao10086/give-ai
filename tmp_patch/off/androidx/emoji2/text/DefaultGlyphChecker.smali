.class Landroidx/emoji2/text/DefaultGlyphChecker;
.super Ljava/lang/Object;
.source "DefaultGlyphChecker.java"

# interfaces
.implements Landroidx/emoji2/text/EmojiCompat$GlyphChecker;


# static fields
.field private static final PAINT_TEXT_SIZE:I = 0xa

.field private static final sStringBuilder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mTextPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 46
    new-instance v0, Ljava/lang/ThreadLocal;

    #@2
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    #@5
    sput-object v0, Landroidx/emoji2/text/DefaultGlyphChecker;->sStringBuilder:Ljava/lang/ThreadLocal;

    #@7
    return-void
.end method

.method constructor <init>()V
    .registers 3

    #@0
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 54
    new-instance v0, Landroid/text/TextPaint;

    #@5
    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/emoji2/text/DefaultGlyphChecker;->mTextPaint:Landroid/text/TextPaint;

    #@a
    const/high16 v1, 0x41200000    # 10.0f

    #@c
    .line 55
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    #@f
    return-void
.end method

.method private static getStringBuilder()Ljava/lang/StringBuilder;
    .registers 2

    #@0
    .line 84
    sget-object v0, Landroidx/emoji2/text/DefaultGlyphChecker;->sStringBuilder:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    if-nez v1, :cond_10

    #@8
    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@10
    .line 87
    :cond_10
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/lang/StringBuilder;

    #@16
    return-object v0
.end method


# virtual methods
.method public hasGlyph(Ljava/lang/CharSequence;III)Z
    .registers 6

    #@0
    .line 72
    invoke-static {}, Landroidx/emoji2/text/DefaultGlyphChecker;->getStringBuilder()Ljava/lang/StringBuilder;

    #@3
    move-result-object p4

    #@4
    const/4 v0, 0x0

    #@5
    .line 73
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    #@8
    :goto_8
    if-ge p2, p3, :cond_14

    #@a
    .line 76
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    #@d
    move-result v0

    #@e
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@11
    add-int/lit8 p2, p2, 0x1

    #@13
    goto :goto_8

    #@14
    .line 80
    :cond_14
    iget-object p1, p0, Landroidx/emoji2/text/DefaultGlyphChecker;->mTextPaint:Landroid/text/TextPaint;

    #@16
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object p2

    #@1a
    invoke-static {p1, p2}, Landroidx/core/graphics/PaintCompat;->hasGlyph(Landroid/graphics/Paint;Ljava/lang/String;)Z

    #@1d
    move-result p1

    #@1e
    return p1
.end method
