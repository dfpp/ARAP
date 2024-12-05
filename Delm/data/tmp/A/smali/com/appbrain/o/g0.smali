.class public final Lcom/appbrain/o/g0;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile a:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method public static a()Landroid/content/Context;
    .locals 2

    sget-object v0, Lcom/appbrain/o/g0;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AppContext.get() called before init()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Landroid/app/Activity;)Landroid/content/Context;
    .locals 0

    if-nez p0, :cond_0

    sget-object p0, Lcom/appbrain/o/g0;->a:Landroid/content/Context;

    :cond_0
    return-object p0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/appbrain/o/g0;->a:Landroid/content/Context;

    return-void
.end method
