.class public final Lcom/appbrain/a/l;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile a:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcom/appbrain/a/l;->a:Z

    return v0
.end method
