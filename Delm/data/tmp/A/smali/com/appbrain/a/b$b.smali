.class final Lcom/appbrain/a/b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appbrain/o/o0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/a/b;->y()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appbrain/a/b$e;

.field final synthetic b:Lcom/appbrain/a/b$f;

.field final synthetic c:Lcom/appbrain/a/b;


# direct methods
.method constructor <init>(Lcom/appbrain/a/b;Lcom/appbrain/a/b$e;Lcom/appbrain/a/b$f;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/b$b;->c:Lcom/appbrain/a/b;

    iput-object p2, p0, Lcom/appbrain/a/b$b;->a:Lcom/appbrain/a/b$e;

    iput-object p3, p0, Lcom/appbrain/a/b$b;->b:Lcom/appbrain/a/b$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/appbrain/a/h$b;

    iget-object v0, p0, Lcom/appbrain/a/b$b;->c:Lcom/appbrain/a/b;

    iget-object v1, p0, Lcom/appbrain/a/b$b;->a:Lcom/appbrain/a/b$e;

    iget-object v2, p0, Lcom/appbrain/a/b$b;->b:Lcom/appbrain/a/b$f;

    invoke-interface {v2}, Lcom/appbrain/a/b$f;->a()Z

    move-result v2

    invoke-static {v0, p1, v1, v2}, Lcom/appbrain/a/b;->x(Lcom/appbrain/a/b;Lcom/appbrain/a/h$b;Lcom/appbrain/a/b$e;Z)V

    return-void
.end method
