.class final Lcom/appbrain/a/i$k$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appbrain/o/o0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/a/i$k;->a(Landroid/content/Context;Lcom/appbrain/a/i$s;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/appbrain/a/i$s;


# direct methods
.method constructor <init>(Lcom/appbrain/a/i$k;Landroid/widget/ImageView;Lcom/appbrain/a/i$s;)V
    .locals 0

    iput-object p2, p0, Lcom/appbrain/a/i$k$a;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/appbrain/a/i$k$a;->b:Lcom/appbrain/a/i$s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    iget-object p1, p0, Lcom/appbrain/a/i$k$a;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/appbrain/a/i$k$a;->b:Lcom/appbrain/a/i$s;

    iget-object v0, v0, Lcom/appbrain/a/i$s;->d:Lcom/appbrain/a/i$e;

    iget-object v0, v0, Lcom/appbrain/a/i$e;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
