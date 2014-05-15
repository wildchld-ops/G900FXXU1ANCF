.class public interface abstract Lcom/samsung/contacts/sim/list/ListSimOperation;
.super Ljava/lang/Object;
.source "ListSimOperation.java"


# virtual methods
.method public abstract addSimMenu(Landroid/content/Context;Landroid/widget/ArrayAdapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract excludeSimContactIfNecessary(Landroid/content/Context;Ljava/lang/StringBuilder;Z)V
.end method

.method public abstract getCallIntent(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;
.end method

.method public abstract getImportExportSimMenuString(Landroid/content/Context;I)Ljava/lang/String;
.end method

.method public abstract getSimInitString(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract isSimSupportedButNotReady(Landroid/content/Context;)Z
.end method

.method public abstract setSelectionArgsForJoin(Lcom/android/contacts/list/JoinContactLoader;J)V
.end method

.method public abstract shouldHandleImportRequest(Landroid/content/Context;)Z
.end method

.method public abstract shouldSkipLoadAccountFilter(Lcom/samsung/contacts/sim/PhoneBookManageSim;Lcom/android/contacts/common/model/account/AccountWithDataSet;Z)Z
.end method
