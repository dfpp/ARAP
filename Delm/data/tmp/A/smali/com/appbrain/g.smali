.class public Lcom/appbrain/g;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a()Lcom/appbrain/f;
    .locals 1

    invoke-static {}, Lcom/appbrain/a/h1;->b()Lcom/appbrain/a/h1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/a/h1;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/appbrain/a/y0;->b()Lcom/appbrain/a/y0;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/appbrain/a/e0;

    invoke-direct {v0}, Lcom/appbrain/a/e0;-><init>()V

    return-object v0
.end method
