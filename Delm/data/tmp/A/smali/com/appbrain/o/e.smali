.class public final Lcom/appbrain/o/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static i:Ljava/lang/String; = "ImageDownloader"

.field private static j:Lcom/appbrain/o/e;


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:Ljava/util/Map;

.field private final c:Ljava/util/Map;

.field private final d:Lcom/appbrain/o/l0;

.field private final e:Landroid/graphics/Bitmap;

.field private f:Lcom/appbrain/o/m0;

.field private g:I

.field private h:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appbrain/o/e;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appbrain/o/e;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/appbrain/o/e;->c:Ljava/util/Map;

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/o/e;->e:Landroid/graphics/Bitmap;

    new-instance v0, Lcom/appbrain/o/n0;

    invoke-direct {v0}, Lcom/appbrain/o/n0;-><init>()V

    iput-object v0, p0, Lcom/appbrain/o/e;->f:Lcom/appbrain/o/m0;

    new-instance v0, Lcom/appbrain/o/l0;

    invoke-direct {v0}, Lcom/appbrain/o/l0;-><init>()V

    iput-object v0, p0, Lcom/appbrain/o/e;->d:Lcom/appbrain/o/l0;

    return-void
.end method

.method public static declared-synchronized a()Lcom/appbrain/o/e;
    .locals 2

    const-class v0, Lcom/appbrain/o/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/appbrain/o/e;->j:Lcom/appbrain/o/e;

    if-nez v1, :cond_0

    new-instance v1, Lcom/appbrain/o/e;

    invoke-direct {v1}, Lcom/appbrain/o/e;-><init>()V

    sput-object v1, Lcom/appbrain/o/e;->j:Lcom/appbrain/o/e;

    :cond_0
    sget-object v1, Lcom/appbrain/o/e;->j:Lcom/appbrain/o/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized b(Landroid/graphics/Bitmap;Ljava/lang/String;ZZ)V
    .locals 6

    monitor-enter p0

    if-nez p1, :cond_4

    :try_start_0
    iget-object p1, p0, Lcom/appbrain/o/e;->f:Lcom/appbrain/o/m0;

    iget-object p4, p0, Lcom/appbrain/o/e;->e:Landroid/graphics/Bitmap;

    invoke-interface {p1, p2, p4}, Lcom/appbrain/o/m0;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/appbrain/o/e;->a:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/appbrain/o/e;->c:Ljava/util/Map;

    invoke-interface {v0, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/appbrain/o/e;->c:Ljava/util/Map;

    invoke-interface {v0, p4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/appbrain/o/e;->b:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/appbrain/o/o0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p4, 0x0

    :try_start_1
    invoke-interface {p3, p4}, Lcom/appbrain/o/o0;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p3

    :try_start_2
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/appbrain/o/e;->a:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/appbrain/o/e;->b:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :try_start_3
    iget p3, p0, Lcom/appbrain/o/e;->g:I

    if-nez p3, :cond_5

    const/high16 p3, 0x43200000    # 160.0f

    invoke-static {p3}, Lcom/appbrain/o/p0;->c(F)I

    move-result v0

    invoke-static {p3}, Lcom/appbrain/o/p0;->c(F)I

    move-result p3

    mul-int v0, v0, p3

    iput v0, p0, Lcom/appbrain/o/e;->g:I

    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    mul-int p3, p3, v0

    iget v0, p0, Lcom/appbrain/o/e;->g:I

    if-gt p3, v0, :cond_6

    iget-object p3, p0, Lcom/appbrain/o/e;->f:Lcom/appbrain/o/m0;

    invoke-interface {p3, p2, p1}, Lcom/appbrain/o/m0;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    iget-object p3, p0, Lcom/appbrain/o/e;->a:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    if-eqz p3, :cond_a

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_7
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/appbrain/o/e;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/appbrain/o/e;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p4, :cond_9

    iget-object v2, p0, Lcom/appbrain/o/e;->h:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_8

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v2, p0, Lcom/appbrain/o/e;->h:Landroid/graphics/drawable/Drawable;

    :cond_8
    new-instance v2, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/appbrain/o/e;->h:Landroid/graphics/drawable/Drawable;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v4, v3, v1

    invoke-direct {v2, v3}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0xc8

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_2

    :cond_9
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_a
    iget-object p3, p0, Lcom/appbrain/o/e;->b:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    if-eqz p3, :cond_b

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_b

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/appbrain/o/o0;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-interface {p4, p1}, Lcom/appbrain/o/o0;->a(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catch_1
    move-exception p4

    :try_start_5
    invoke-virtual {p4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_b
    iget-object p1, p0, Lcom/appbrain/o/e;->a:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/appbrain/o/e;->b:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method private declared-synchronized d(Landroid/widget/ImageView;Ljava/lang/String;ZLcom/appbrain/o/o0;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/appbrain/o/j;->e()Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/appbrain/o/e;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p4, :cond_1

    invoke-interface {p4, v1}, Lcom/appbrain/o/o0;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/appbrain/o/e;->f:Lcom/appbrain/o/m0;

    invoke-interface {v0, p2}, Lcom/appbrain/o/m0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8

    iget-object p2, p0, Lcom/appbrain/o/e;->e:Landroid/graphics/Bitmap;

    if-eq v0, p2, :cond_4

    if-eqz p1, :cond_3

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_3
    if-eqz p4, :cond_6

    invoke-interface {p4, v0}, Lcom/appbrain/o/o0;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    if-eqz p3, :cond_5

    if-eqz p1, :cond_5

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    if-eqz p4, :cond_6

    invoke-interface {p4, v1}, Lcom/appbrain/o/o0;->a(Ljava/lang/Object;)V

    :cond_6
    :goto_0
    if-eqz p1, :cond_7

    iget-object p2, p0, Lcom/appbrain/o/e;->c:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    monitor-exit p0

    return-void

    :cond_8
    if-eqz p4, :cond_a

    :try_start_2
    iget-object v0, p0, Lcom/appbrain/o/e;->b:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/appbrain/o/e;->b:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object p4, p0, Lcom/appbrain/o/e;->a:Ljava/util/Map;

    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/List;

    if-eqz p4, :cond_c

    if-eqz p1, :cond_b

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_b
    monitor-exit p0

    return-void

    :cond_c
    :try_start_3
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_d

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    iget-object p1, p0, Lcom/appbrain/o/e;->a:Ljava/util/Map;

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/appbrain/o/e;->d:Lcom/appbrain/o/l0;

    new-instance p4, Lcom/appbrain/o/e$a;

    invoke-direct {p4, p0, p2, p3}, Lcom/appbrain/o/e$a;-><init>(Lcom/appbrain/o/e;Ljava/lang/String;Z)V

    invoke-virtual {p1, p2, p4}, Lcom/appbrain/o/l0;->b(Ljava/lang/String;Lcom/appbrain/o/o0;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_e
    :try_start_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Call imagedownloader on the UI thread only."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic e(Lcom/appbrain/o/e;Landroid/graphics/Bitmap;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/appbrain/o/e;->b(Landroid/graphics/Bitmap;Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/appbrain/o/e;->i:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized c(Landroid/widget/ImageView;Ljava/lang/String;Lcom/appbrain/o/o0;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/appbrain/o/e;->d(Landroid/widget/ImageView;Ljava/lang/String;ZLcom/appbrain/o/o0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized g(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/appbrain/o/e;->d(Landroid/widget/ImageView;Ljava/lang/String;ZLcom/appbrain/o/o0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
