.class public final Lcom/appbrain/o/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Z = false

.field private static b:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    sget-boolean v0, Lcom/appbrain/o/a;->a:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/appbrain/o/g0;->c(Landroid/content/Context;)V

    invoke-static {}, Lcom/appbrain/o/f0;->c()Lcom/appbrain/o/f0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/o/f0;->g()V

    invoke-static {}, Lcom/appbrain/o/i0;->d()V

    invoke-static {p0}, Lcom/appbrain/o/p0;->b(Landroid/content/Context;)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/appbrain/o/a;->a:Z

    :cond_0
    sget-boolean p0, Lcom/appbrain/o/a;->b:Z

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/appbrain/o/q0;->a()Lcom/appbrain/o/t;

    move-result-object p0

    invoke-interface {p0}, Lcom/appbrain/o/t;->c()V

    :cond_1
    invoke-static {}, Lcom/appbrain/o/q0;->b()Lcom/appbrain/o/t;

    move-result-object p0

    invoke-interface {p0}, Lcom/appbrain/o/t;->c()V

    return-void
.end method
