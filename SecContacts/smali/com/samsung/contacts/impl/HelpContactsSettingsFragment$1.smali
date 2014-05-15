.class Lcom/samsung/contacts/impl/HelpContactsSettingsFragment$1;
.super Ljava/lang/Object;
.source "HelpContactsSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/impl/HelpContactsSettingsFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/impl/HelpContactsSettingsFragment;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/impl/HelpContactsSettingsFragment;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/impl/HelpContactsSettingsFragment$1;->this$0:Lcom/samsung/contacts/impl/HelpContactsSettingsFragment;

    iput-object p2, p0, Lcom/samsung/contacts/impl/HelpContactsSettingsFragment$1;->val$intent:Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpContactsSettingsFragment$1;->this$0:Lcom/samsung/contacts/impl/HelpContactsSettingsFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/impl/HelpContactsSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/impl/HelpContactsSettingsFragment$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpContactsSettingsFragment$1;->this$0:Lcom/samsung/contacts/impl/HelpContactsSettingsFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/impl/HelpContactsSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    return v0
.end method
