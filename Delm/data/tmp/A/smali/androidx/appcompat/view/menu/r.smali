.class final Landroidx/appcompat/view/menu/r;
.super Landroidx/appcompat/view/menu/k;
.source ""

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroidx/appcompat/view/menu/m;
.implements Landroid/view/View$OnKeyListener;


# static fields
.field private static final w:I


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Landroidx/appcompat/view/menu/g;

.field private final e:Landroidx/appcompat/view/menu/f;

.field private final f:Z

.field private final g:I

.field private final h:I

.field private final i:I

.field final j:Landroidx/appcompat/widget/y;

.field final k:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final l:Landroid/view/View$OnAttachStateChangeListener;

.field private m:Landroid/widget/PopupWindow$OnDismissListener;

.field private n:Landroid/view/View;

.field o:Landroid/view/View;

.field private p:Landroidx/appcompat/view/menu/m$a;

.field q:Landroid/view/ViewTreeObserver;

.field private r:Z

.field private s:Z

.field private t:I

.field private u:I

.field private v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, La/a/g;->abc_popup_menu_item_layout:I

    sput v0, Landroidx/appcompat/view/menu/r;->w:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/g;Landroid/view/View;IIZ)V
    .locals 3

    invoke-direct {p0}, Landroidx/appcompat/view/menu/k;-><init>()V

    new-instance v0, Landroidx/appcompat/view/menu/r$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/r$a;-><init>(Landroidx/appcompat/view/menu/r;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/r;->k:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    new-instance v0, Landroidx/appcompat/view/menu/r$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/r$b;-><init>(Landroidx/appcompat/view/menu/r;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/r;->l:Landroid/view/View$OnAttachStateChangeListener;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/view/menu/r;->u:I

    iput-object p1, p0, Landroidx/appcompat/view/menu/r;->c:Landroid/content/Context;

    iput-object p2, p0, Landroidx/appcompat/view/menu/r;->d:Landroidx/appcompat/view/menu/g;

    iput-boolean p6, p0, Landroidx/appcompat/view/menu/r;->f:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p6

    new-instance v0, Landroidx/appcompat/view/menu/f;

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/r;->f:Z

    sget v2, Landroidx/appcompat/view/menu/r;->w:I

    invoke-direct {v0, p2, p6, v1, v2}, Landroidx/appcompat/view/menu/f;-><init>(Landroidx/appcompat/view/menu/g;Landroid/view/LayoutInflater;ZI)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/r;->e:Landroidx/appcompat/view/menu/f;

    iput p4, p0, Landroidx/appcompat/view/menu/r;->h:I

    iput p5, p0, Landroidx/appcompat/view/menu/r;->i:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p5

    iget p5, p5, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p5, p5, 0x2

    sget p6, La/a/d;->abc_config_prefDialogWidth:I

    invoke-virtual {p4, p6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    invoke-static {p5, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    iput p4, p0, Landroidx/appcompat/view/menu/r;->g:I

    iput-object p3, p0, Landroidx/appcompat/view/menu/r;->n:Landroid/view/View;

    new-instance p3, Landroidx/appcompat/widget/y;

    iget-object p4, p0, Landroidx/appcompat/view/menu/r;->c:Landroid/content/Context;

    iget p5, p0, Landroidx/appcompat/view/menu/r;->h:I

    iget p6, p0, Landroidx/appcompat/view/menu/r;->i:I

    const/4 v0, 0x0

    invoke-direct {p3, p4, v0, p5, p6}, Landroidx/appcompat/widget/y;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p3, p0, Landroidx/appcompat/view/menu/r;->j:Landroidx/appcompat/widget/y;

    invoke-virtual {p2, p0, p1}, Landroidx/appcompat/view/menu/g;->b(Landroidx/appcompat/view/menu/m;Landroid/content/Context;)V

    return-void
.end method

.method private z()Z
    .locals 7

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/r;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/r;->r:Z

    const/4 v2, 0x0

    if-nez v0, :cond_7

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->n:Landroid/view/View;

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    iput-object v0, p0, Landroidx/appcompat/view/menu/r;->o:Landroid/view/View;

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->j:Landroidx/appcompat/widget/y;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/w;->B(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->j:Landroidx/appcompat/widget/y;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/w;->C(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->j:Landroidx/appcompat/widget/y;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/w;->A(Z)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->o:Landroid/view/View;

    iget-object v3, p0, Landroidx/appcompat/view/menu/r;->q:Landroid/view/ViewTreeObserver;

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    iput-object v4, p0, Landroidx/appcompat/view/menu/r;->q:Landroid/view/ViewTreeObserver;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroidx/appcompat/view/menu/r;->k:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v4, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3
    iget-object v3, p0, Landroidx/appcompat/view/menu/r;->l:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v3, p0, Landroidx/appcompat/view/menu/r;->j:Landroidx/appcompat/widget/y;

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/w;->s(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->j:Landroidx/appcompat/widget/y;

    iget v3, p0, Landroidx/appcompat/view/menu/r;->u:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/w;->w(I)V

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/r;->s:Z

    const/4 v3, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->e:Landroidx/appcompat/view/menu/f;

    iget-object v4, p0, Landroidx/appcompat/view/menu/r;->c:Landroid/content/Context;

    iget v5, p0, Landroidx/appcompat/view/menu/r;->g:I

    invoke-static {v0, v3, v4, v5}, Landroidx/appcompat/view/menu/k;->o(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/r;->t:I

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/r;->s:Z

    :cond_4
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->j:Landroidx/appcompat/widget/y;

    iget v4, p0, Landroidx/appcompat/view/menu/r;->t:I

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/w;->v(I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->j:Landroidx/appcompat/widget/y;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/w;->z(I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->j:Landroidx/appcompat/widget/y;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/k;->n()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/w;->x(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->j:Landroidx/appcompat/widget/y;

    invoke-virtual {v0}, Landroidx/appcompat/widget/w;->e()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->j:Landroidx/appcompat/widget/y;

    invoke-virtual {v0}, Landroidx/appcompat/widget/w;->c()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-boolean v4, p0, Landroidx/appcompat/view/menu/r;->v:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroidx/appcompat/view/menu/r;->d:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/g;->u()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroidx/appcompat/view/menu/r;->c:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, La/a/g;->abc_popup_menu_header_item_layout:I

    invoke-virtual {v4, v5, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    const v5, 0x1020016

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_5

    iget-object v6, p0, Landroidx/appcompat/view/menu/r;->d:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/g;->u()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    invoke-virtual {v0, v4, v3, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_6
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->j:Landroidx/appcompat/widget/y;

    iget-object v2, p0, Landroidx/appcompat/view/menu/r;->e:Landroidx/appcompat/view/menu/f;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/w;->r(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->j:Landroidx/appcompat/widget/y;

    invoke-virtual {v0}, Landroidx/appcompat/widget/w;->e()V

    return v1

    :cond_7
    :goto_1
    return v2
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/g;Z)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->d:Landroidx/appcompat/view/menu/g;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/r;->dismiss()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->p:Landroidx/appcompat/view/menu/m$a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/m$a;->a(Landroidx/appcompat/view/menu/g;Z)V

    :cond_1
    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/r;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->j:Landroidx/appcompat/widget/y;

    invoke-virtual {v0}, Landroidx/appcompat/widget/w;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->j:Landroidx/appcompat/widget/y;

    invoke-virtual {v0}, Landroidx/appcompat/widget/w;->c()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public dismiss()V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/r;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->j:Landroidx/appcompat/widget/y;

    invoke-virtual {v0}, Landroidx/appcompat/widget/w;->dismiss()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/view/menu/r;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StandardMenuPopup cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f(Landroidx/appcompat/view/menu/m$a;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/r;->p:Landroidx/appcompat/view/menu/m$a;

    return-void
.end method

.method public g(Landroidx/appcompat/view/menu/s;)Z
    .locals 9

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    new-instance v0, Landroidx/appcompat/view/menu/l;

    iget-object v3, p0, Landroidx/appcompat/view/menu/r;->c:Landroid/content/Context;

    iget-object v5, p0, Landroidx/appcompat/view/menu/r;->o:Landroid/view/View;

    iget-boolean v6, p0, Landroidx/appcompat/view/menu/r;->f:Z

    iget v7, p0, Landroidx/appcompat/view/menu/r;->h:I

    iget v8, p0, Landroidx/appcompat/view/menu/r;->i:I

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Landroidx/appcompat/view/menu/l;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/g;Landroid/view/View;ZII)V

    iget-object v2, p0, Landroidx/appcompat/view/menu/r;->p:Landroidx/appcompat/view/menu/m$a;

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/l;->j(Landroidx/appcompat/view/menu/m$a;)V

    invoke-static {p1}, Landroidx/appcompat/view/menu/k;->x(Landroidx/appcompat/view/menu/g;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/l;->g(Z)V

    iget-object v2, p0, Landroidx/appcompat/view/menu/r;->m:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/l;->i(Landroid/widget/PopupWindow$OnDismissListener;)V

    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/appcompat/view/menu/r;->m:Landroid/widget/PopupWindow$OnDismissListener;

    iget-object v2, p0, Landroidx/appcompat/view/menu/r;->d:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/g;->d(Z)V

    iget-object v2, p0, Landroidx/appcompat/view/menu/r;->j:Landroidx/appcompat/widget/y;

    invoke-virtual {v2}, Landroidx/appcompat/widget/w;->k()I

    move-result v2

    iget-object v3, p0, Landroidx/appcompat/view/menu/r;->j:Landroidx/appcompat/widget/y;

    invoke-virtual {v3}, Landroidx/appcompat/widget/w;->m()I

    move-result v3

    iget v4, p0, Landroidx/appcompat/view/menu/r;->u:I

    iget-object v5, p0, Landroidx/appcompat/view/menu/r;->n:Landroid/view/View;

    invoke-static {v5}, La/c/i/l;->c(Landroid/view/View;)I

    move-result v5

    invoke-static {v4, v5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v4

    and-int/lit8 v4, v4, 0x7

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Landroidx/appcompat/view/menu/r;->n:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    :cond_0
    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/view/menu/l;->n(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->p:Landroidx/appcompat/view/menu/m$a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/m$a;->b(Landroidx/appcompat/view/menu/g;)Z

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i(Z)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/r;->s:Z

    iget-object p1, p0, Landroidx/appcompat/view/menu/r;->e:Landroidx/appcompat/view/menu/f;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/f;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public l(Landroidx/appcompat/view/menu/g;)V
    .locals 0

    return-void
.end method

.method public onDismiss()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/r;->r:Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->d:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->close()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->q:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/r;->q:Landroid/view/ViewTreeObserver;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->q:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Landroidx/appcompat/view/menu/r;->k:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/r;->q:Landroid/view/ViewTreeObserver;

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->o:Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/view/menu/r;->l:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->m:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_2
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/r;->dismiss()V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public p(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/r;->n:Landroid/view/View;

    return-void
.end method

.method public r(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->e:Landroidx/appcompat/view/menu/f;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/f;->d(Z)V

    return-void
.end method

.method public s(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/view/menu/r;->u:I

    return-void
.end method

.method public t(I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->j:Landroidx/appcompat/widget/y;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/w;->y(I)V

    return-void
.end method

.method public u(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/r;->m:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public v(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/r;->v:Z

    return-void
.end method

.method public w(I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->j:Landroidx/appcompat/widget/y;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/w;->H(I)V

    return-void
.end method
