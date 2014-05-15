.class Lorg/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;
.super Ljava/lang/Object;
.source "ChildProcessConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/ChildProcessConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectionParams"
.end annotation


# instance fields
.field final mCallback:Lorg/chromium/content/common/IChildProcessCallback;

.field final mCommandLine:[Ljava/lang/String;

.field final mFilesToBeMapped:[Lorg/chromium/content/browser/FileDescriptorInfo;


# direct methods
.method constructor <init>([Ljava/lang/String;[Lorg/chromium/content/browser/FileDescriptorInfo;Lorg/chromium/content/common/IChildProcessCallback;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;->mCommandLine:[Ljava/lang/String;

    iput-object p2, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;->mFilesToBeMapped:[Lorg/chromium/content/browser/FileDescriptorInfo;

    iput-object p3, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;->mCallback:Lorg/chromium/content/common/IChildProcessCallback;

    return-void
.end method
