.class Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$handwritingLanguageSettingListener;
.super Ljava/lang/Object;
.source "SwiftkeyLanguagesSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "handwritingLanguageSettingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;


# direct methods
.method private constructor <init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$handwritingLanguageSettingListener;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$handwritingLanguageSettingListener;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/high16 v4, 0x3400

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$handwritingLanguageSettingListener;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    #calls: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;->sendSupportLanguage()V
    invoke-static {v2}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;->access$100(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$handwritingLanguageSettingListener;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    const-string v2, "ro.build.characteristics"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "tablet"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.settings.handwritingsearch.HandwritingLanguageTablet"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "handwriting"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$handwritingLanguageSettingListener;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "handwriting"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$HandwritingLanguageActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings$handwritingLanguageSettingListener;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
