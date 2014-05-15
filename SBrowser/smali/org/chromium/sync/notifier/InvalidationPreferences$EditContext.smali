.class public Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;
.super Ljava/lang/Object;
.source "InvalidationPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/sync/notifier/InvalidationPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EditContext"
.end annotation


# instance fields
.field private final editor:Landroid/content/SharedPreferences$Editor;

.field final synthetic this$0:Lorg/chromium/sync/notifier/InvalidationPreferences;


# direct methods
.method constructor <init>(Lorg/chromium/sync/notifier/InvalidationPreferences;)V
    .locals 1

    iput-object p1, p0, Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;->this$0:Lorg/chromium/sync/notifier/InvalidationPreferences;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #getter for: Lorg/chromium/sync/notifier/InvalidationPreferences;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lorg/chromium/sync/notifier/InvalidationPreferences;->access$000(Lorg/chromium/sync/notifier/InvalidationPreferences;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;->editor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Lorg/chromium/sync/notifier/InvalidationPreferences$EditContext;->editor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method
