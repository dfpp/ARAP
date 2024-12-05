.class public final Lcom/appbrain/t/g$a;
.super Lcom/appbrain/q/q$a;
.source ""

# interfaces
.implements Lcom/appbrain/q/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/t/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/appbrain/t/g;->Q()Lcom/appbrain/t/g;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/appbrain/q/q$a;-><init>(Lcom/appbrain/q/q;)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/t/g$a;-><init>()V

    return-void
.end method
