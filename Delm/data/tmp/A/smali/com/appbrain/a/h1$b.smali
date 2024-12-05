.class final Lcom/appbrain/a/h1$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appbrain/o/h0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/a/h1;->e(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/appbrain/a/h1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Lcom/appbrain/a/q0;->a()Lcom/appbrain/a/q0;

    move-result-object v0

    sget-object v1, Lcom/appbrain/t/d;->f:Lcom/appbrain/t/d;

    invoke-static {v1}, Lcom/appbrain/a/q0;->b(Lcom/appbrain/t/d;)Lcom/appbrain/t/c$a;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/appbrain/t/c$a;->z(Ljava/lang/String;)Lcom/appbrain/t/c$a;

    invoke-virtual {v0, v1}, Lcom/appbrain/a/q0;->f(Lcom/appbrain/t/c$a;)V

    return-void
.end method
