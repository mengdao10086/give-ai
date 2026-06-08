.class public Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
.super Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;
.source "SearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchAutoComplete"
.end annotation


# instance fields
.field private mHasPendingShowSoftInputRequest:Z

.field final mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

.field private mSearchView:Landroidx/appcompat/widget/SearchView;

.field private mThreshold:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 1858
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    .line 1862
    sget v0, Landroidx/appcompat/R$attr;->autoCompleteTextViewStyle:I

    #@2
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    #@0
    .line 1866
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    .line 1850
    new-instance p1, Landroidx/appcompat/widget/SearchView$SearchAutoComplete$1;

    #@5
    invoke-direct {p1, p0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete$1;-><init>(Landroidx/appcompat/widget/SearchView$SearchAutoComplete;)V

    #@8
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    #@a
    .line 1867
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getThreshold()I

    #@d
    move-result p1

    #@e
    iput p1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->mThreshold:I

    #@10
    return-void
.end method

.method private getSearchViewTextMinWidthDp()I
    .registers 5

    #@0
    .line 1980
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@7
    move-result-object v0

    #@8
    .line 1981
    iget v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    #@a
    .line 1982
    iget v2, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    #@c
    const/16 v3, 0x3c0

    #@e
    if-lt v1, v3, :cond_1c

    #@10
    const/16 v3, 0x2d0

    #@12
    if-lt v2, v3, :cond_1c

    #@14
    .line 1984
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    #@16
    const/4 v3, 0x2

    #@17
    if-ne v0, v3, :cond_1c

    #@19
    const/16 v0, 0x100

    #@1b
    return v0

    #@1c
    :cond_1c
    const/16 v0, 0x258

    #@1e
    if-ge v1, v0, :cond_2c

    #@20
    const/16 v0, 0x280

    #@22
    if-lt v1, v0, :cond_29

    #@24
    const/16 v0, 0x1e0

    #@26
    if-lt v2, v0, :cond_29

    #@28
    goto :goto_2c

    #@29
    :cond_29
    const/16 v0, 0xa0

    #@2b
    return v0

    #@2c
    :cond_2c
    :goto_2c
    const/16 v0, 0xc0

    #@2e
    return v0
.end method


# virtual methods
.method public enoughToFilter()Z
    .registers 2

    #@0
    .line 1947
    iget v0, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->mThreshold:I

    #@2
    if-lez v0, :cond_d

    #@4
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->enoughToFilter()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_b

    #@a
    goto :goto_d

    #@b
    :cond_b
    const/4 v0, 0x0

    #@c
    goto :goto_e

    #@d
    :cond_d
    :goto_d
    const/4 v0, 0x1

    #@e
    :goto_e
    return v0
.end method

.method ensureImeVisible()V
    .registers 3

    #@0
    .line 2041
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1d

    #@4
    if-lt v0, v1, :cond_14

    #@6
    const/4 v0, 0x1

    #@7
    .line 2042
    invoke-static {p0, v0}, Landroidx/appcompat/widget/SearchView$Api29Impl;->setInputMethodMode(Landroidx/appcompat/widget/SearchView$SearchAutoComplete;I)V

    #@a
    .line 2043
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->enoughToFilter()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_19

    #@10
    .line 2044
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->showDropDown()V

    #@13
    goto :goto_19

    #@14
    .line 2047
    :cond_14
    sget-object v0, Landroidx/appcompat/widget/SearchView;->PRE_API_29_HIDDEN_METHOD_INVOKER:Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;

    #@16
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->ensureImeVisible(Landroid/widget/AutoCompleteTextView;)V

    #@19
    :cond_19
    :goto_19
    return-void
.end method

.method isEmpty()Z
    .registers 2

    #@0
    .line 1892
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_c

    #@a
    const/4 v0, 0x1

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    :goto_d
    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 3

    #@0
    .line 1999
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    #@3
    move-result-object p1

    #@4
    .line 2000
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->mHasPendingShowSoftInputRequest:Z

    #@6
    if-eqz v0, :cond_12

    #@8
    .line 2001
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    #@a
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@d
    .line 2002
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    #@f
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->post(Ljava/lang/Runnable;)Z

    #@12
    :cond_12
    return-object p1
.end method

.method protected onFinishInflate()V
    .registers 4

    #@0
    .line 1872
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->onFinishInflate()V

    #@3
    .line 1873
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getResources()Landroid/content/res/Resources;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@a
    move-result-object v0

    #@b
    .line 1875
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getSearchViewTextMinWidthDp()I

    #@e
    move-result v1

    #@f
    int-to-float v1, v1

    #@10
    const/4 v2, 0x1

    #@11
    .line 1874
    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    #@14
    move-result v0

    #@15
    float-to-int v0, v0

    #@16
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setMinWidth(I)V

    #@19
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 4

    #@0
    .line 1937
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    #@3
    .line 1938
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->mSearchView:Landroidx/appcompat/widget/SearchView;

    #@5
    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->onTextFocusChanged()V

    #@8
    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 5

    #@0
    const/4 v0, 0x4

    #@1
    if-ne p1, v0, :cond_3f

    #@3
    .line 1955
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    #@6
    move-result v0

    #@7
    const/4 v1, 0x1

    #@8
    if-nez v0, :cond_1a

    #@a
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_1a

    #@10
    .line 1956
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    #@13
    move-result-object p1

    #@14
    if-eqz p1, :cond_19

    #@16
    .line 1958
    invoke-virtual {p1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    #@19
    :cond_19
    return v1

    #@1a
    .line 1961
    :cond_1a
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    #@1d
    move-result v0

    #@1e
    if-ne v0, v1, :cond_3f

    #@20
    .line 1962
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    #@23
    move-result-object v0

    #@24
    if-eqz v0, :cond_29

    #@26
    .line 1964
    invoke-virtual {v0, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    #@29
    .line 1966
    :cond_29
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_3f

    #@2f
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    #@32
    move-result v0

    #@33
    if-nez v0, :cond_3f

    #@35
    .line 1967
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->mSearchView:Landroidx/appcompat/widget/SearchView;

    #@37
    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    #@3a
    const/4 p1, 0x0

    #@3b
    .line 1968
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    #@3e
    return v1

    #@3f
    .line 1973
    :cond_3f
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    #@42
    move-result p1

    #@43
    return p1
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    #@0
    .line 1919
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->onWindowFocusChanged(Z)V

    #@3
    if-eqz p1, :cond_23

    #@5
    .line 1921
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->mSearchView:Landroidx/appcompat/widget/SearchView;

    #@7
    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->hasFocus()Z

    #@a
    move-result p1

    #@b
    if-eqz p1, :cond_23

    #@d
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getVisibility()I

    #@10
    move-result p1

    #@11
    if-nez p1, :cond_23

    #@13
    const/4 p1, 0x1

    #@14
    .line 1926
    iput-boolean p1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->mHasPendingShowSoftInputRequest:Z

    #@16
    .line 1929
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getContext()Landroid/content/Context;

    #@19
    move-result-object p1

    #@1a
    invoke-static {p1}, Landroidx/appcompat/widget/SearchView;->isLandscapeMode(Landroid/content/Context;)Z

    #@1d
    move-result p1

    #@1e
    if-eqz p1, :cond_23

    #@20
    .line 1930
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->ensureImeVisible()V

    #@23
    :cond_23
    return-void
.end method

.method public performCompletion()V
    .registers 1

    #@0
    return-void
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .registers 2

    #@0
    return-void
.end method

.method setImeVisibility(Z)V
    .registers 4

    #@0
    .line 2018
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    const-string v1, "input_method"

    #@6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    #@c
    const/4 v1, 0x0

    #@d
    if-nez p1, :cond_1e

    #@f
    .line 2020
    iput-boolean v1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->mHasPendingShowSoftInputRequest:Z

    #@11
    .line 2021
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    #@13
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@16
    .line 2022
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getWindowToken()Landroid/os/IBinder;

    #@19
    move-result-object p1

    #@1a
    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    #@1d
    return-void

    #@1e
    .line 2026
    :cond_1e
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    #@21
    move-result p1

    #@22
    if-eqz p1, :cond_2f

    #@24
    .line 2029
    iput-boolean v1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->mHasPendingShowSoftInputRequest:Z

    #@26
    .line 2030
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    #@28
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@2b
    .line 2031
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    #@2e
    return-void

    #@2f
    :cond_2f
    const/4 p1, 0x1

    #@30
    .line 2037
    iput-boolean p1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->mHasPendingShowSoftInputRequest:Z

    #@32
    return-void
.end method

.method setSearchView(Landroidx/appcompat/widget/SearchView;)V
    .registers 2

    #@0
    .line 1879
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->mSearchView:Landroidx/appcompat/widget/SearchView;

    #@2
    return-void
.end method

.method public setThreshold(I)V
    .registers 2

    #@0
    .line 1884
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->setThreshold(I)V

    #@3
    .line 1885
    iput p1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->mThreshold:I

    #@5
    return-void
.end method

.method showSoftInputIfNecessary()V
    .registers 3

    #@0
    .line 2008
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->mHasPendingShowSoftInputRequest:Z

    #@2
    if-eqz v0, :cond_16

    #@4
    .line 2010
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getContext()Landroid/content/Context;

    #@7
    move-result-object v0

    #@8
    const-string v1, "input_method"

    #@a
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    #@10
    const/4 v1, 0x0

    #@11
    .line 2011
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    #@14
    .line 2012
    iput-boolean v1, p0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->mHasPendingShowSoftInputRequest:Z

    #@16
    :cond_16
    return-void
.end method
