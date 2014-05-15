.class Lorg/chromium/content/browser/FileDescriptorInfo;
.super Ljava/lang/Object;
.source "FileDescriptorInfo.java"


# instance fields
.field public mAutoClose:Z

.field public mFd:I

.field public mId:I


# direct methods
.method constructor <init>(IIZ)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/chromium/content/browser/FileDescriptorInfo;->mId:I

    iput p2, p0, Lorg/chromium/content/browser/FileDescriptorInfo;->mFd:I

    iput-boolean p3, p0, Lorg/chromium/content/browser/FileDescriptorInfo;->mAutoClose:Z

    return-void
.end method
