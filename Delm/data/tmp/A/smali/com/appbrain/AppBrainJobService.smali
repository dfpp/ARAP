.class public Lcom/appbrain/AppBrainJobService;
.super Landroid/app/job/JobService;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/appbrain/AppBrainJobService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/appbrain/AppBrainJobService;->b:Z

    return p0
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    invoke-static {}, Lcom/appbrain/a/h1;->b()Lcom/appbrain/a/h1;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appbrain/a/h1;->d(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->isOverrideDeadlineExpired()Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appbrain/AppBrainJobService;->b:Z

    invoke-static {}, Lcom/appbrain/a/n0;->b()Lcom/appbrain/a/n0;

    move-result-object v0

    new-instance v1, Lcom/appbrain/AppBrainJobService$a;

    invoke-direct {v1, p0, p1}, Lcom/appbrain/AppBrainJobService$a;-><init>(Lcom/appbrain/AppBrainJobService;Landroid/app/job/JobParameters;)V

    invoke-virtual {v0, v1}, Lcom/appbrain/a/n0;->f(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/appbrain/AppBrainJobService;->b:Z

    const/4 p1, 0x0

    return p1
.end method
