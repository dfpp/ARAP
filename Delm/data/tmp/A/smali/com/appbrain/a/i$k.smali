.class final Lcom/appbrain/a/i$k;
.super Lcom/appbrain/a/i$r;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "k"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/a/i$r;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/a/i$k;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/appbrain/a/i$s;)Landroid/view/View;
    .locals 3

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/appbrain/o/e;->a()Lcom/appbrain/o/e;

    move-result-object p1

    iget-object v1, p2, Lcom/appbrain/a/i$s;->e:Ljava/lang/String;

    new-instance v2, Lcom/appbrain/a/i$k$a;

    invoke-direct {v2, p0, v0, p2}, Lcom/appbrain/a/i$k$a;-><init>(Lcom/appbrain/a/i$k;Landroid/widget/ImageView;Lcom/appbrain/a/i$s;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/appbrain/o/e;->c(Landroid/widget/ImageView;Ljava/lang/String;Lcom/appbrain/o/o0;)V

    return-object v0
.end method
