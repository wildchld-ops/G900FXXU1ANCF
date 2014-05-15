.class public interface abstract Lcom/nuance/connect/api/AccountService;
.super Ljava/lang/Object;
.source "AccountService.java"


# virtual methods
.method public abstract deleteAccount(Z)V
.end method

.method public abstract getActiveAccount()Lcom/nuance/connect/internal/common/ConnectAccount;
.end method

.method public abstract getDeviceNameFromId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getEmailAccounts()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHasKnownAccounts()Z
.end method

.method public abstract getRegisteredAccount()Ljava/lang/String;
.end method

.method public abstract getSystemEmailAccounts()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isAccountKnownAccount(ILjava/lang/String;)Z
.end method

.method public abstract isAccountRegistered()Z
.end method

.method public abstract isAccountRegisteredAndVerified()Z
.end method

.method public abstract isValidEmail(Ljava/lang/String;)Z
.end method

.method public abstract refreshDevices()V
.end method

.method public abstract registerAccount(ILjava/lang/String;)V
.end method

.method public abstract registerEmailAccount(Ljava/lang/String;)Z
.end method

.method public abstract sendReverify()V
.end method

.method public abstract setDelayedRegistrationAlert()V
.end method

.method public abstract unlinkDevice(Ljava/lang/String;)V
.end method

.method public abstract validateAccount(Ljava/lang/String;)V
.end method
