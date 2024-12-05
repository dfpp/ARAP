.class public abstract Lcom/appbrain/q/q$d;
.super Lcom/appbrain/q/q;
.source ""

# interfaces
.implements Lcom/appbrain/q/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/q/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation


# instance fields
.field protected e:Lcom/appbrain/q/o;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/q/q;-><init>()V

    invoke-static {}, Lcom/appbrain/q/o;->a()Lcom/appbrain/q/o;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/q/q$d;->e:Lcom/appbrain/q/o;

    return-void
.end method
