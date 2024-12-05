.class public final Lcom/appbrain/o/e0;
.super Lcom/appbrain/o/d0;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/o/d0;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 0

    invoke-static {p1}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p1

    return-object p1
.end method
