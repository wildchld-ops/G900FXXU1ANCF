.class Lcom/android/settings/grid/GridSettingsFragment$2;
.super Ljava/lang/Object;
.source "GridSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/grid/GridSettingsFragment;->initClickListner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/grid/GridSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/grid/GridSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/grid/GridSettingsFragment$2;->this$0:Lcom/android/settings/grid/GridSettingsFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const v4, 0x7f0b009b

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/ToggleImageView;

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/android/settings/grid/GridSettingsFragment$2;->this$0:Lcom/android/settings/grid/GridSettingsFragment;

    iget-object v4, v4, Lcom/android/settings/grid/GridSettingsFragment;->mGridAdapter:Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;

    invoke-virtual {v4, p1}, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->getPositionByView(Landroid/view/View;)I

    move-result v2

    iget-object v4, p0, Lcom/android/settings/grid/GridSettingsFragment$2;->this$0:Lcom/android/settings/grid/GridSettingsFragment;

    iget-object v4, v4, Lcom/android/settings/grid/GridSettingsFragment;->mGridAdapter:Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;

    invoke-virtual {v4, v2}, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->getHeaderByPosition(I)Landroid/preference/PreferenceActivity$Header;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/grid/GridSettingsFragment$2;->this$0:Lcom/android/settings/grid/GridSettingsFragment;

    invoke-virtual {v4}, Lcom/android/settings/grid/GridSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "enterprise_policy"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Long;

    iget-wide v5, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    iget-object v4, p0, Lcom/android/settings/grid/GridSettingsFragment$2;->this$0:Lcom/android/settings/grid/GridSettingsFragment;

    iget-object v4, v4, Lcom/android/settings/grid/GridSettingsFragment;->mOnGridItemSelectedListener:Lcom/android/settings/grid/GridSettingsFragment$OnGridItemSelectedListener;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/grid/GridSettingsFragment$2;->this$0:Lcom/android/settings/grid/GridSettingsFragment;

    iget-object v4, v4, Lcom/android/settings/grid/GridSettingsFragment;->mOnGridItemSelectedListener:Lcom/android/settings/grid/GridSettingsFragment$OnGridItemSelectedListener;

    invoke-interface {v4, v1, v2}, Lcom/android/settings/grid/GridSettingsFragment$OnGridItemSelectedListener;->onGridItemSelected(Landroid/preference/PreferenceActivity$Header;I)V

    :cond_1
    invoke-virtual {v3}, Lcom/android/settings/ToggleImageView;->toggle()V

    iget-object v4, p0, Lcom/android/settings/grid/GridSettingsFragment$2;->this$0:Lcom/android/settings/grid/GridSettingsFragment;

    iget-object v4, v4, Lcom/android/settings/grid/GridSettingsFragment;->mGridAdapter:Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;

    invoke-virtual {v4}, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->resumeEnabler()V

    :cond_2
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/enterprise/RestrictionPolicy;->isAirplaneModeAllowed(Z)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b068d
        :pswitch_0
    .end packed-switch
.end method
