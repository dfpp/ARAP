.class final Lcom/appbrain/n/j$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/n/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/appbrain/p/e;

.field private final b:F


# direct methods
.method private constructor <init>(Lcom/appbrain/p/e;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appbrain/n/j$a;->a:Lcom/appbrain/p/e;

    iput p2, p0, Lcom/appbrain/n/j$a;->b:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/appbrain/p/e;FB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/appbrain/n/j$a;-><init>(Lcom/appbrain/p/e;F)V

    return-void
.end method

.method static synthetic a(Lcom/appbrain/n/j$a;)F
    .locals 0

    iget p0, p0, Lcom/appbrain/n/j$a;->b:F

    return p0
.end method

.method static synthetic b(Lcom/appbrain/n/j$a;)Lcom/appbrain/p/e;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/n/j$a;->a:Lcom/appbrain/p/e;

    return-object p0
.end method
