.class public final Lcom/appbrain/a/b1;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Lcom/appbrain/t/u;

.field private static b:Lcom/appbrain/a/e1$c;

.field private static c:Ljava/util/LinkedHashSet;


# direct methods
.method private static a()Lcom/appbrain/t/u;
    .locals 8

    sget-object v0, Lcom/appbrain/a/b1;->a:Lcom/appbrain/t/u;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/appbrain/a/l1$c;->a()Lcom/appbrain/a/l1;

    const-string v0, "app_alert"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appbrain/a/l1;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/appbrain/t/u;->U([B)Lcom/appbrain/t/u;

    move-result-object v1
    :try_end_0
    .catch Lcom/appbrain/q/t; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/appbrain/a/b1;->g(Lcom/appbrain/t/u;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Lcom/appbrain/t/u;->e0()Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    :goto_1
    const/4 v2, 0x1

    goto :goto_2

    :cond_0
    invoke-static {}, Lcom/appbrain/a/l1$c;->a()Lcom/appbrain/a/l1;

    invoke-static {}, Lcom/appbrain/o/f0;->c()Lcom/appbrain/o/f0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/o/f0;->j()Lcom/appbrain/o/k0;

    move-result-object v0

    const-wide/16 v4, 0x0

    const-string v6, "last_app_alert_discard"

    invoke-virtual {v0, v6, v4, v5}, Lcom/appbrain/o/k0;->b(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v6, v4

    long-to-int v0, v6

    invoke-virtual {v1}, Lcom/appbrain/t/u;->f0()I

    move-result v4

    if-le v0, v4, :cond_1

    goto :goto_1

    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    sput-object v1, Lcom/appbrain/a/b1;->a:Lcom/appbrain/t/u;

    :cond_2
    sget-object v0, Lcom/appbrain/a/b1;->a:Lcom/appbrain/t/u;

    return-object v0
.end method

.method private static b(ILandroid/content/SharedPreferences$Editor;)V
    .locals 5

    invoke-static {}, Lcom/appbrain/a/b1;->f()V

    sget-object v0, Lcom/appbrain/a/b1;->c:Ljava/util/LinkedHashSet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/appbrain/a/b1;->c:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x64

    sget-object v1, Lcom/appbrain/a/b1;->c:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-lt v2, v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    const/16 v4, 0x2c

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "discarded_app_alert_ids"

    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method static c(Landroid/app/Activity;)V
    .locals 10

    if-eqz p0, :cond_d

    instance-of v0, p0, Lcom/appbrain/AppBrainActivity;

    if-nez v0, :cond_d

    invoke-static {p0}, Lcom/appbrain/o/j;->g(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {}, Lcom/appbrain/a/h1;->b()Lcom/appbrain/a/h1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/a/h1;->j()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static {}, Lcom/appbrain/a/b1;->a()Lcom/appbrain/t/u;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/appbrain/t/u;->g0()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/appbrain/o/h0;->d()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_1

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    goto/16 :goto_4

    :cond_3
    sget-object v1, Lcom/appbrain/a/b1$b;->a:[I

    invoke-virtual {v0}, Lcom/appbrain/t/u;->b0()Lcom/appbrain/t/u$a;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v1, v1, v4

    if-eq v1, v2, :cond_c

    const/4 v2, 0x2

    if-eq v1, v2, :cond_b

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    const/4 v2, 0x4

    if-eq v1, v2, :cond_4

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/appbrain/a/b1;->b:Lcom/appbrain/a/e1$c;

    if-nez v1, :cond_5

    new-instance v1, Lcom/appbrain/a/b1$a;

    const-string v2, "AppAlertService"

    invoke-direct {v1, v2}, Lcom/appbrain/a/b1$a;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/appbrain/a/b1;->b:Lcom/appbrain/a/e1$c;

    :cond_5
    sget-object v1, Lcom/appbrain/a/b1;->b:Lcom/appbrain/a/e1$c;

    invoke-static {p0, v0, v1}, Lcom/appbrain/a/e1;->c(Landroid/app/Activity;Lcom/appbrain/t/u;Lcom/appbrain/a/e1$c;)V

    :goto_1
    return-void

    :cond_6
    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/appbrain/t/u;->Z()Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/appbrain/AppBrainService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "appalert"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/appbrain/q/a;->h()[B

    move-result-object v2

    const-string v4, "appbrain.internal.AppAlertNotificationManager.Alert"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/appbrain/t/u;->T()I

    move-result v2

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    :cond_7
    move-object v9, v1

    invoke-virtual {v0}, Lcom/appbrain/t/u;->Y()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lcom/appbrain/t/u;->Y()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_8
    invoke-virtual {v0}, Lcom/appbrain/t/u;->W()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0}, Lcom/appbrain/t/u;->Y()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v0}, Lcom/appbrain/t/u;->Y()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_9
    invoke-static {}, Lcom/appbrain/o/h0;->d()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    move-object v7, v2

    invoke-static {}, Lcom/appbrain/o/i0;->e()Lcom/appbrain/o/i0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appbrain/o/i0;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/appbrain/o/v;->e()Lcom/appbrain/o/v;

    move-result-object v4

    const/16 v5, 0x20

    invoke-static {v5, v2}, Lcom/appbrain/a/q;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x21

    invoke-static {v6, v2}, Lcom/appbrain/a/q;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "appbrain_channel"

    invoke-virtual {v4, p0, v6, v5, v2}, Lcom/appbrain/o/v;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/appbrain/o/v;->e()Lcom/appbrain/o/v;

    move-result-object v4

    invoke-virtual {v0}, Lcom/appbrain/t/u;->W()Ljava/lang/String;

    move-result-object v8

    const-string v6, "appbrain_channel"

    move-object v5, p0

    invoke-virtual/range {v4 .. v9}, Lcom/appbrain/o/v;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v2

    if-eqz v2, :cond_a

    iput-object v1, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v1, v2, Landroid/app/Notification;->icon:I

    const/16 v1, 0x10

    iput v1, v2, Landroid/app/Notification;->flags:I

    iget v1, v2, Landroid/app/Notification;->defaults:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v2, Landroid/app/Notification;->defaults:I

    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    invoke-virtual {v0}, Lcom/appbrain/t/u;->T()I

    move-result v1

    const-string v4, "appbrain.internal.AppAlertNotificationManager"

    invoke-virtual {p0, v4, v1, v2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    :cond_a
    invoke-static {v0, v3}, Lcom/appbrain/a/b1;->d(Lcom/appbrain/t/u;Z)V

    return-void

    :cond_b
    invoke-static {p0, v0}, Lcom/appbrain/a/c1;->b(Landroid/app/Activity;Lcom/appbrain/t/u;)V

    return-void

    :cond_c
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_d

    new-instance v1, Lcom/appbrain/a/z0$a;

    invoke-direct {v1, p0, v0}, Lcom/appbrain/a/z0$a;-><init>(Landroid/app/Activity;Lcom/appbrain/t/u;)V

    invoke-static {v1}, Lcom/appbrain/o/j;->c(Ljava/lang/Runnable;)V

    :cond_d
    :goto_4
    return-void
.end method

.method static d(Lcom/appbrain/t/u;Z)V
    .locals 3

    invoke-static {p0}, Lcom/appbrain/a/b1;->g(Lcom/appbrain/t/u;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/appbrain/a/l1$c;->a()Lcom/appbrain/a/l1;

    invoke-static {}, Lcom/appbrain/o/f0;->c()Lcom/appbrain/o/f0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/o/f0;->j()Lcom/appbrain/o/k0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/o/k0;->c()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/appbrain/t/u;->e0()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/appbrain/t/u;->d0()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/appbrain/t/u;->T()I

    move-result p1

    invoke-static {p1, v0}, Lcom/appbrain/a/b1;->b(ILandroid/content/SharedPreferences$Editor;)V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string p1, "last_app_alert_discard"

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/appbrain/o/f0;->d(Landroid/content/SharedPreferences$Editor;)V

    :cond_2
    sget-object p1, Lcom/appbrain/a/b1;->a:Lcom/appbrain/t/u;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/appbrain/t/u;->T()I

    move-result p1

    invoke-virtual {p0}, Lcom/appbrain/t/u;->T()I

    move-result p0

    if-ne p1, p0, :cond_3

    const/4 p0, 0x0

    sput-object p0, Lcom/appbrain/a/b1;->a:Lcom/appbrain/t/u;

    :cond_3
    return-void
.end method

.method static e(Lcom/appbrain/t/u;)Z
    .locals 1

    sget-object v0, Lcom/appbrain/a/b1;->a:Lcom/appbrain/t/u;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/appbrain/t/u;->T()I

    move-result v0

    invoke-virtual {p0}, Lcom/appbrain/t/u;->T()I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static f()V
    .locals 5

    sget-object v0, Lcom/appbrain/a/b1;->c:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcom/appbrain/a/b1;->c:Ljava/util/LinkedHashSet;

    invoke-static {}, Lcom/appbrain/a/l1$c;->a()Lcom/appbrain/a/l1;

    invoke-static {}, Lcom/appbrain/o/f0;->c()Lcom/appbrain/o/f0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/o/f0;->j()Lcom/appbrain/o/k0;

    move-result-object v0

    const-string v1, "discarded_app_alert_ids"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/appbrain/o/k0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    :try_start_0
    sget-object v4, Lcom/appbrain/a/b1;->c:Ljava/util/LinkedHashSet;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static g(Lcom/appbrain/t/u;)Z
    .locals 1

    invoke-static {}, Lcom/appbrain/a/b1;->f()V

    sget-object v0, Lcom/appbrain/a/b1;->c:Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Lcom/appbrain/t/u;->T()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
