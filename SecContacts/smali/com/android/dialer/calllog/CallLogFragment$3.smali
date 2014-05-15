.class Lcom/android/dialer/calllog/CallLogFragment$3;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/calllog/CallLogFragment;->onCallsFetched(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/calllog/CallLogFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/calllog/CallLogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogFragment$3;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment$3;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mSwipeCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v2}, Lcom/android/dialer/calllog/CallLogFragment;->access$200(Lcom/android/dialer/calllog/CallLogFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment$3;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mSwipeCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v2}, Lcom/android/dialer/calllog/CallLogFragment;->access$200(Lcom/android/dialer/calllog/CallLogFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment$3;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/dialer/calllog/CallLogFragment;->access$300(Lcom/android/dialer/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "enable_sweep_actions"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment$3;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #calls: Lcom/android/dialer/calllog/CallLogFragment;->setSwipePopupPref()V
    invoke-static {v2}, Lcom/android/dialer/calllog/CallLogFragment;->access$400(Lcom/android/dialer/calllog/CallLogFragment;)V

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment$3;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mActivity:Lcom/android/contacts/activities/PeopleActivity;
    invoke-static {v2}, Lcom/android/dialer/calllog/CallLogFragment;->access$000(Lcom/android/dialer/calllog/CallLogFragment;)Lcom/android/contacts/activities/PeopleActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/contacts/activities/PeopleActivity;->configureSweepAction(Z)V

    return-void
.end method
