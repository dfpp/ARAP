.class final Lcom/appbrain/a/h1$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/a/h1;->e(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/appbrain/a/h1;


# direct methods
.method constructor <init>(Lcom/appbrain/a/h1;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/h1$c;->b:Lcom/appbrain/a/h1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const-string v0, "AppBrain"

    iget-object v1, p0, Lcom/appbrain/a/h1$c;->b:Lcom/appbrain/a/h1;

    invoke-static {v1}, Lcom/appbrain/a/h1;->c(Lcom/appbrain/a/h1;)Lcom/appbrain/o/o;

    move-result-object v1

    invoke-interface {v1}, Lcom/appbrain/o/o;->a()Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "en"

    invoke-static {v1, v2}, Lcom/appbrain/a/q;->a(ILjava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/appbrain/o/i0;->e()Lcom/appbrain/o/i0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appbrain/o/i0;->v()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v3, "GeneralMobile"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    invoke-static {}, Lcom/appbrain/o/g0;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/appbrain/o/h0;->d()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x6

    :try_start_0
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.appbrain.AppBrainActivity"

    invoke-direct {v5, v2, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v5, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.appbrain.AppBrainService"

    invoke-direct {v5, v2, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v5, v1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    const/16 v6, 0x15

    if-lt v5, v6, :cond_1

    :try_start_3
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.appbrain.AppBrainJobService"

    invoke-direct {v5, v2, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v5, v1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_0
    :try_start_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No AppBrainJobService defined in the manifest!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_1
    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v2, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/appbrain/a/h1$c;->b:Lcom/appbrain/a/h1;

    invoke-static {}, Lcom/appbrain/a/h1;->q()Z

    move-result v3

    invoke-static {v1, v3}, Lcom/appbrain/a/h1;->f(Lcom/appbrain/a/h1;Z)Z

    iget-object v1, p0, Lcom/appbrain/a/h1$c;->b:Lcom/appbrain/a/h1;

    invoke-static {v1}, Lcom/appbrain/a/h1;->h(Lcom/appbrain/a/h1;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "The AppBrain SDK requires changes to your ProGuard config! Please check https://bit.ly/2LjzK2N for the correct AppBrain SDK setup."

    invoke-static {v4, v0, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/appbrain/a/h1$c$a;

    invoke-direct {v1, p0, v2}, Lcom/appbrain/a/h1$c$a;-><init>(Lcom/appbrain/a/h1$c;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/appbrain/o/j;->c(Ljava/lang/Runnable;)V

    :cond_2
    return-void

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Add the INTERNET permission to your Android manifest!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No AppBrainService defined in the manifest!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No AppBrainActivity defined in the manifest!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_2
    const-string v2, "Please check https://bit.ly/2LjzK2N for the correct AppBrain SDK setup."

    invoke-static {v4, v0, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    throw v1

    :cond_4
    return-void
.end method
