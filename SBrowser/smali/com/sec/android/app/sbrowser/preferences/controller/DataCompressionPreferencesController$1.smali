.class Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController$1;
.super Ljava/lang/Object;
.source "DataCompressionPreferencesController.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/DataCompressionPreferencesModel;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->access$000(Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;)Lcom/sec/android/app/sbrowser/preferences/model/DataCompressionPreferencesModel;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sec/android/app/sbrowser/preferences/model/DataCompressionPreferencesModel;->setDataCompressionCheck(Z)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->maxImageQualityMenuIndex:I
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->access$100(Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;)I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->mImageQualityMenuKeyString:[Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->access$200(Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->mImageQualityMenu:[Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->access$300(Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;)[Landroid/preference/CheckBoxPreference;

    move-result-object v2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/preferences/controller/PreferenceFragmentController;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->mImageQualityMenuKeyString:[Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->access$200(Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->mImageQualityMenu:[Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->access$300(Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;)[Landroid/preference/CheckBoxPreference;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
