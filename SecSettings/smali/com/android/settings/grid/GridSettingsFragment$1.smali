.class Lcom/android/settings/grid/GridSettingsFragment$1;
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

    iput-object p1, p0, Lcom/android/settings/grid/GridSettingsFragment$1;->this$0:Lcom/android/settings/grid/GridSettingsFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v2, p0, Lcom/android/settings/grid/GridSettingsFragment$1;->this$0:Lcom/android/settings/grid/GridSettingsFragment;

    iget-object v2, v2, Lcom/android/settings/grid/GridSettingsFragment;->mGridAdapter:Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;

    invoke-virtual {v2, p1}, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->getPositionByView(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/grid/GridSettingsFragment$1;->this$0:Lcom/android/settings/grid/GridSettingsFragment;

    iget-object v2, v2, Lcom/android/settings/grid/GridSettingsFragment;->mGridAdapter:Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;

    invoke-virtual {v2, v1}, Lcom/android/settings/grid/GridSettingsFragment$GridAdapter;->getHeaderByPosition(I)Landroid/preference/PreferenceActivity$Header;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/grid/GridSettingsFragment$1;->this$0:Lcom/android/settings/grid/GridSettingsFragment;

    iget-object v2, v2, Lcom/android/settings/grid/GridSettingsFragment;->mOnGridItemSelectedListener:Lcom/android/settings/grid/GridSettingsFragment$OnGridItemSelectedListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/grid/GridSettingsFragment$1;->this$0:Lcom/android/settings/grid/GridSettingsFragment;

    iget-object v2, v2, Lcom/android/settings/grid/GridSettingsFragment;->mOnGridItemSelectedListener:Lcom/android/settings/grid/GridSettingsFragment$OnGridItemSelectedListener;

    invoke-interface {v2, v0, v1}, Lcom/android/settings/grid/GridSettingsFragment$OnGridItemSelectedListener;->onGridItemSelected(Landroid/preference/PreferenceActivity$Header;I)V

    :cond_0
    return-void
.end method
