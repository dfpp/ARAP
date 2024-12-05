.class final Lcom/appbrain/a/y$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/a/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/appbrain/a/y;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/appbrain/a/y;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appbrain/a/y;-><init>(B)V

    sput-object v0, Lcom/appbrain/a/y$a;->a:Lcom/appbrain/a/y;

    return-void
.end method

.method static synthetic a()Lcom/appbrain/a/y;
    .locals 1

    sget-object v0, Lcom/appbrain/a/y$a;->a:Lcom/appbrain/a/y;

    return-object v0
.end method
