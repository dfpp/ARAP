.class final Lcom/appbrain/a/p0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appbrain/o/o0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/a/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appbrain/o/o0;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/appbrain/a/e;


# direct methods
.method constructor <init>(Lcom/appbrain/o/o0;Landroid/content/Context;Lcom/appbrain/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/p0$a;->a:Lcom/appbrain/o/o0;

    iput-object p2, p0, Lcom/appbrain/a/p0$a;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/appbrain/a/p0$a;->c:Lcom/appbrain/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/appbrain/a/h$b;

    iget-object v0, p0, Lcom/appbrain/a/p0$a;->a:Lcom/appbrain/o/o0;

    iget-object v1, p0, Lcom/appbrain/a/p0$a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/appbrain/a/p0$a;->c:Lcom/appbrain/a/e;

    invoke-static {v1, v2, p1}, Lcom/appbrain/a/p0;->d(Landroid/content/Context;Lcom/appbrain/a/e;Lcom/appbrain/a/h$b;)Lcom/appbrain/a/f;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/appbrain/o/o0;->a(Ljava/lang/Object;)V

    return-void
.end method
