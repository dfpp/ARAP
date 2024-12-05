.class final Lb/a/a/a/b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field private final a:Lb/a/a/a/c;

.field final synthetic b:Lb/a/a/a/b;


# direct methods
.method private constructor <init>(Lb/a/a/a/b;Lb/a/a/a/c;)V
    .locals 0

    iput-object p1, p0, Lb/a/a/a/b$b;->b:Lb/a/a/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    iput-object p2, p0, Lb/a/a/a/b$b;->a:Lb/a/a/a/c;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Please specify a listener to know when setup is done."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lb/a/a/a/b;Lb/a/a/a/c;Lb/a/a/a/b$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lb/a/a/a/b$b;-><init>(Lb/a/a/a/b;Lb/a/a/a/c;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "InstallReferrerClient"

    const-string v0, "Install Referrer service connected."

    invoke-static {p1, v0}, Lb/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lb/a/a/a/b$b;->b:Lb/a/a/a/b;

    invoke-static {p2}, Lb/b/a/b/a/a$a;->b(Landroid/os/IBinder;)Lb/b/a/b/a/a;

    move-result-object p2

    invoke-static {p1, p2}, Lb/a/a/a/b;->e(Lb/a/a/a/b;Lb/b/a/b/a/a;)Lb/b/a/b/a/a;

    iget-object p1, p0, Lb/a/a/a/b$b;->b:Lb/a/a/a/b;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lb/a/a/a/b;->f(Lb/a/a/a/b;I)I

    iget-object p1, p0, Lb/a/a/a/b$b;->a:Lb/a/a/a/c;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lb/a/a/a/c;->a(I)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "InstallReferrerClient"

    const-string v0, "Install Referrer service disconnected."

    invoke-static {p1, v0}, Lb/a/a/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lb/a/a/a/b$b;->b:Lb/a/a/a/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lb/a/a/a/b;->e(Lb/a/a/a/b;Lb/b/a/b/a/a;)Lb/b/a/b/a/a;

    iget-object p1, p0, Lb/a/a/a/b$b;->b:Lb/a/a/a/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lb/a/a/a/b;->f(Lb/a/a/a/b;I)I

    iget-object p1, p0, Lb/a/a/a/b$b;->a:Lb/a/a/a/c;

    invoke-interface {p1}, Lb/a/a/a/c;->b()V

    return-void
.end method
