//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Acp {
    /// CreateAppScanTaskRepeat请求参数结构体
    public struct CreateAppScanTaskRepeatRequest: TCRequestModel {
        /// 任务来源, 0:小程序诊断, 1:预留字段(暂未使用), 2:app诊断(android), 3:app漏洞扫描;
        public let source: Int64

        /// 应用平台, 0:android, 1:ios, 2:小程序
        public let platform: Int64

        /// 任务类型, 0:基础版, 1:专家版, 2:本地化
        public let taskType: Int64

        /// 原诊断任务ID
        public let orgTaskID: String

        /// App包名
        public let appPackage: String?

        /// 上传的文件ID(任务来源为1时必填)
        public let fileID: String?

        /// 软件下载链接地址(任务来源为2时必填)
        public let appDownloadUrl: String?

        /// 隐私文本下载地址(任务来源为2时必填)
        public let privacyTextUrl: String?

        /// 应用名称
        public let appName: String?

        /// 隐私申明文件名称
        public let privacyTextName: String?

        /// 软件Sha1值(PrivacyTextMD5不为空时必填)
        public let appSha1: String?

        /// 隐私申明文本md5(AppSha1不为空时必填)
        public let privacyTextMD5: String?

        public init(source: Int64, platform: Int64, taskType: Int64, orgTaskID: String, appPackage: String? = nil, fileID: String? = nil, appDownloadUrl: String? = nil, privacyTextUrl: String? = nil, appName: String? = nil, privacyTextName: String? = nil, appSha1: String? = nil, privacyTextMD5: String? = nil) {
            self.source = source
            self.platform = platform
            self.taskType = taskType
            self.orgTaskID = orgTaskID
            self.appPackage = appPackage
            self.fileID = fileID
            self.appDownloadUrl = appDownloadUrl
            self.privacyTextUrl = privacyTextUrl
            self.appName = appName
            self.privacyTextName = privacyTextName
            self.appSha1 = appSha1
            self.privacyTextMD5 = privacyTextMD5
        }

        enum CodingKeys: String, CodingKey {
            case source = "Source"
            case platform = "Platform"
            case taskType = "TaskType"
            case orgTaskID = "OrgTaskID"
            case appPackage = "AppPackage"
            case fileID = "FileID"
            case appDownloadUrl = "AppDownloadUrl"
            case privacyTextUrl = "PrivacyTextUrl"
            case appName = "AppName"
            case privacyTextName = "PrivacyTextName"
            case appSha1 = "AppSha1"
            case privacyTextMD5 = "PrivacyTextMD5"
        }
    }

    /// CreateAppScanTaskRepeat返回参数结构体
    public struct CreateAppScanTaskRepeatResponse: TCResponseModel {
        /// 返回值, 0:成功, 其他值请查看“返回值”定义
        public let result: Int64

        /// 任务id
        public let taskID: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case taskID = "TaskID"
            case requestId = "RequestId"
        }
    }

    /// 应用合规隐私诊断重试任务
    ///
    /// App应用合规隐私诊断重试任务
    @inlinable
    public func createAppScanTaskRepeat(_ input: CreateAppScanTaskRepeatRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAppScanTaskRepeatResponse> {
        self.client.execute(action: "CreateAppScanTaskRepeat", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 应用合规隐私诊断重试任务
    ///
    /// App应用合规隐私诊断重试任务
    @inlinable
    public func createAppScanTaskRepeat(_ input: CreateAppScanTaskRepeatRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAppScanTaskRepeatResponse {
        try await self.client.execute(action: "CreateAppScanTaskRepeat", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 应用合规隐私诊断重试任务
    ///
    /// App应用合规隐私诊断重试任务
    @inlinable
    public func createAppScanTaskRepeat(source: Int64, platform: Int64, taskType: Int64, orgTaskID: String, appPackage: String? = nil, fileID: String? = nil, appDownloadUrl: String? = nil, privacyTextUrl: String? = nil, appName: String? = nil, privacyTextName: String? = nil, appSha1: String? = nil, privacyTextMD5: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAppScanTaskRepeatResponse> {
        self.createAppScanTaskRepeat(CreateAppScanTaskRepeatRequest(source: source, platform: platform, taskType: taskType, orgTaskID: orgTaskID, appPackage: appPackage, fileID: fileID, appDownloadUrl: appDownloadUrl, privacyTextUrl: privacyTextUrl, appName: appName, privacyTextName: privacyTextName, appSha1: appSha1, privacyTextMD5: privacyTextMD5), region: region, logger: logger, on: eventLoop)
    }

    /// 应用合规隐私诊断重试任务
    ///
    /// App应用合规隐私诊断重试任务
    @inlinable
    public func createAppScanTaskRepeat(source: Int64, platform: Int64, taskType: Int64, orgTaskID: String, appPackage: String? = nil, fileID: String? = nil, appDownloadUrl: String? = nil, privacyTextUrl: String? = nil, appName: String? = nil, privacyTextName: String? = nil, appSha1: String? = nil, privacyTextMD5: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAppScanTaskRepeatResponse {
        try await self.createAppScanTaskRepeat(CreateAppScanTaskRepeatRequest(source: source, platform: platform, taskType: taskType, orgTaskID: orgTaskID, appPackage: appPackage, fileID: fileID, appDownloadUrl: appDownloadUrl, privacyTextUrl: privacyTextUrl, appName: appName, privacyTextName: privacyTextName, appSha1: appSha1, privacyTextMD5: privacyTextMD5), region: region, logger: logger, on: eventLoop)
    }
}
