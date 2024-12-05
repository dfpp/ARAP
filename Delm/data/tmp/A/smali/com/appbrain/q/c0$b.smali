.class final Lcom/appbrain/q/c0$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/q/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Ljava/util/Iterator;

.field private static final b:Ljava/lang/Iterable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appbrain/q/c0$b$a;

    invoke-direct {v0}, Lcom/appbrain/q/c0$b$a;-><init>()V

    sput-object v0, Lcom/appbrain/q/c0$b;->a:Ljava/util/Iterator;

    new-instance v0, Lcom/appbrain/q/c0$b$b;

    invoke-direct {v0}, Lcom/appbrain/q/c0$b$b;-><init>()V

    sput-object v0, Lcom/appbrain/q/c0$b;->b:Ljava/lang/Iterable;

    return-void
.end method

.method static a()Ljava/lang/Iterable;
    .locals 1

    sget-object v0, Lcom/appbrain/q/c0$b;->b:Ljava/lang/Iterable;

    return-object v0
.end method

.method static synthetic b()Ljava/util/Iterator;
    .locals 1

    sget-object v0, Lcom/appbrain/q/c0$b;->a:Ljava/util/Iterator;

    return-object v0
.end method
