.class Lcom/sec/android/app/sbrowser/common/Tab$6$1;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/Tab$6;->onSetBingSearchEngineAsDefault()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/common/Tab$6;

.field final synthetic val$mPrefsettings:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/Tab$6;Landroid/content/SharedPreferences;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/Tab$6$1;->this$1:Lcom/sec/android/app/sbrowser/common/Tab$6;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/Tab$6$1;->val$mPrefsettings:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/Tab$6$1;->val$mPrefsettings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dntshowbingpopup"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
