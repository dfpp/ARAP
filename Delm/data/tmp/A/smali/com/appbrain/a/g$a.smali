.class final Lcom/appbrain/a/g$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appbrain/o/o0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/a/g;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appbrain/a/g;


# direct methods
.method constructor <init>(Lcom/appbrain/a/g;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/g$a;->a:Lcom/appbrain/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/appbrain/a/g$a;->a:Lcom/appbrain/a/g;

    invoke-static {p1}, Lcom/appbrain/a/g;->g(Lcom/appbrain/a/g;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/appbrain/a/g$a;->a:Lcom/appbrain/a/g;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/appbrain/a/g;->i(Lcom/appbrain/a/g;Lcom/appbrain/a/f;)V

    return-void
.end method
