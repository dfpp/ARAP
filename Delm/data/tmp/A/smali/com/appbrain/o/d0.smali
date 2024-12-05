.class public Lcom/appbrain/o/d0;
.super Lcom/appbrain/o/c0;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/o/c0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1

    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1, p2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public final g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v1, 0x2

    invoke-direct {v0, p2, p3, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, p4}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    const-class p2, Landroid/app/NotificationManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public final q(Landroid/content/Context;)Z
    .locals 0

    invoke-static {}, Lcom/appbrain/o/h0;->d()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->isInstantApp()Z

    move-result p1

    return p1
.end method
