.class final Lcom/appbrain/o/q0$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/o/q0$a;->g(Lcom/appbrain/o/o0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/appbrain/o/o0;


# direct methods
.method constructor <init>(Lcom/appbrain/o/q0$a;Lcom/appbrain/o/o0;)V
    .locals 0

    iput-object p2, p0, Lcom/appbrain/o/q0$a$a;->b:Lcom/appbrain/o/o0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/appbrain/o/q0$a$a;->b:Lcom/appbrain/o/o0;

    invoke-static {}, Lcom/appbrain/o/v;->e()Lcom/appbrain/o/v;

    move-result-object v1

    invoke-static {}, Lcom/appbrain/o/g0;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appbrain/o/v;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/appbrain/o/o0;->a(Ljava/lang/Object;)V

    return-void
.end method
