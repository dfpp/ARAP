.class final Lcom/appbrain/a/n$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field private static final a:Lcom/appbrain/a/n;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/appbrain/a/n;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appbrain/a/n;-><init>(B)V

    sput-object v0, Lcom/appbrain/a/n$c;->a:Lcom/appbrain/a/n;

    return-void
.end method

.method static synthetic a()Lcom/appbrain/a/n;
    .locals 1

    sget-object v0, Lcom/appbrain/a/n$c;->a:Lcom/appbrain/a/n;

    return-object v0
.end method
