.class public final Lb/a/a/a/a$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/a/a/a$b;->a:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lb/a/a/a/a$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lb/a/a/a/a$b;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()Lb/a/a/a/a;
    .locals 2

    iget-object v0, p0, Lb/a/a/a/a$b;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v1, Lb/a/a/a/b;

    invoke-direct {v1, v0}, Lb/a/a/a/b;-><init>(Landroid/content/Context;)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please provide a valid Context."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
