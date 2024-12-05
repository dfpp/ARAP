.class public Lcom/appbrain/a/z;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/appbrain/a/z;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/appbrain/a/z;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/appbrain/a/z;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/appbrain/a/z;->c:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/appbrain/a/z;->d:Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized b(Ljava/io/File;[B)V
    .locals 2

    monitor-enter p0

    if-eqz p2, :cond_2

    :try_start_0
    array-length v0, p2

    const/high16 v1, 0xa00000

    if-le v0, v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "Couldn\'t create directory"

    invoke-static {p1}, Lcom/appbrain/o/i;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    :try_start_3
    const-string p2, "writing localUS"

    invoke-static {p2, p1}, Lcom/appbrain/o/i;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v0

    :goto_1
    invoke-static {v1}, Lcom/appbrain/o/d;->a(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :goto_2
    :try_start_4
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "Couldn\'t delete file"

    invoke-static {p1}, Lcom/appbrain/o/i;->d(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private e()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/appbrain/a/z;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appbrain/a/l1;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/appbrain/a/z;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v0, v1

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 7

    :goto_0
    iget-object v0, p0, Lcom/appbrain/a/z;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/appbrain/a/l1$c;->a()Lcom/appbrain/a/l1;

    invoke-direct {p0}, Lcom/appbrain/a/z;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/appbrain/o/f0;->c()Lcom/appbrain/o/f0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appbrain/o/f0;->j()Lcom/appbrain/o/k0;

    move-result-object v1

    iget-object v3, p0, Lcom/appbrain/a/z;->b:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/appbrain/o/k0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/appbrain/o/g0;->a()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    iget-object v6, p0, Lcom/appbrain/a/z;->a:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-nez v0, :cond_3

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/appbrain/o/f0;->c()Lcom/appbrain/o/f0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/o/f0;->j()Lcom/appbrain/o/k0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/o/k0;->c()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/appbrain/a/z;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Couldn\'t delete file"

    invoke-static {v0}, Lcom/appbrain/o/i;->d(Ljava/lang/String;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/appbrain/a/z;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/appbrain/a/z;->c:Ljava/lang/String;

    if-eqz v5, :cond_6

    const-string v5, "?"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x26

    goto :goto_2

    :cond_5
    const/16 v5, 0x3f

    :goto_2
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/appbrain/a/z;->c:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {}, Lcom/appbrain/o/c;->d()Lcom/appbrain/o/c;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/appbrain/o/c;->a(Ljava/lang/String;)Lcom/appbrain/o/c$a;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/appbrain/o/c$a;->b()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v1

    goto :goto_3

    :catch_0
    nop

    :cond_7
    :goto_3
    invoke-direct {p0}, Lcom/appbrain/a/z;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0, v3, v4}, Lcom/appbrain/a/z;->b(Ljava/io/File;[B)V

    invoke-static {}, Lcom/appbrain/o/f0;->c()Lcom/appbrain/o/f0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appbrain/o/f0;->j()Lcom/appbrain/o/k0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appbrain/o/k0;->c()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v3, p0, Lcom/appbrain/a/z;->b:Ljava/lang/String;

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/appbrain/a/z;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0
.end method

.method public final declared-synchronized c()[B
    .locals 5

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/appbrain/o/g0;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/appbrain/a/z;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit p0

    return-object v2

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v1, v3

    new-array v3, v1, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v4, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    if-ne v0, v1, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v4, v2

    :goto_0
    :try_start_4
    const-string v1, "reading LocalUS"

    invoke-static {v1, v0}, Lcom/appbrain/o/i;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    invoke-static {v4}, Lcom/appbrain/o/d;->a(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/appbrain/a/l1$c;->a()Lcom/appbrain/a/l1;

    invoke-static {}, Lcom/appbrain/o/f0;->c()Lcom/appbrain/o/f0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/o/f0;->j()Lcom/appbrain/o/k0;

    move-result-object v0

    iget-object v1, p0, Lcom/appbrain/a/z;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/appbrain/o/k0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
