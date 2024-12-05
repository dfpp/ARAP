.class public Lcom/appbrain/l;
.super Landroid/content/BroadcastReceiver;
.source ""


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/appbrain/a/l1;->d()Lcom/appbrain/a/l1;

    invoke-static {}, Lcom/appbrain/a/l1;->k()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/appbrain/a/l1;->d()Lcom/appbrain/a/l1;

    invoke-static {}, Lcom/appbrain/o/f0;->c()Lcom/appbrain/o/f0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/appbrain/o/f0;->j()Lcom/appbrain/o/k0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/appbrain/o/k0;->c()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p2, "ref"

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {p0}, Lcom/appbrain/o/f0;->d(Landroid/content/SharedPreferences$Editor;)V

    :cond_1
    return-void
.end method
