.class Lcom/diotek/ime/implement/setting/PhraseSettings$2;
.super Ljava/lang/Object;
.source "PhraseSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/implement/setting/PhraseSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/PhraseSettings;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/PhraseSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/PhraseSettings$2;->this$0:Lcom/diotek/ime/implement/setting/PhraseSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/PhraseSettings$2;->this$0:Lcom/diotek/ime/implement/setting/PhraseSettings;

    invoke-virtual {v1, p2}, Lcom/diotek/ime/implement/setting/PhraseSettings;->stateSetScrollView(Z)V

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/PhraseSettings$2;->this$0:Lcom/diotek/ime/implement/setting/PhraseSettings;

    #getter for: Lcom/diotek/ime/implement/setting/PhraseSettings;->mSPref:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/diotek/ime/implement/setting/PhraseSettings;->access$100(Lcom/diotek/ime/implement/setting/PhraseSettings;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SETTINGS_SHORTCUT_PHRASE"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
