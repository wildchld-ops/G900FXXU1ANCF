.class Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController$2;
.super Ljava/lang/Object;
.source "DataCompressionPreferencesController.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->onActivityCreated(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController$2;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController$2;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/DataCompressionPreferencesController;->setListPreferenceData(Landroid/preference/Preference;)Z

    const/4 v0, 0x0

    return v0
.end method
