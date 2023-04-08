//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
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

import Logging
import NIOCore
import TecoCore

extension Acp {
    /// CreateAppScanTask请求参数结构体
    public struct CreateAppScanTaskRequest: TCRequestModel {
        /// 任务类型, 0:基础版, 1:专家版, 2:本地化
        public let taskType: Int64

        /// 任务来源, 0:小程序诊断, 1:预留字段(暂未使用), 2:app诊断(android), 3:app漏洞扫描;
        public let source: Int64

        /// 应用平台, 0:android, 1:ios, 2:小程序
        public let platform: Int64

        /// App包名
        public let appPackage: String?

        /// App名称(任务来源为2时必填)
        public let appName: String?

        /// App版本
        public let appVersion: String?

        /// 上传的软件文件ID(任务来源为1时必填)
        public let fileID: String?

        /// 软件下载链接地址(任务来源为2时必填)
        public let appDownloadUrl: String?

        /// 隐私文本下载地址(任务来源为2时必填)
        public let privacyTextUrl: String?

        /// 联系人信息
        public let contactName: String?

        /// 联系电话
        public let telNumber: String?

        /// 公司邮箱
        public let email: String?

        /// 公司名称
        public let corpName: String?

        /// 商务对接人员
        public let salesPerson: String?

        /// 备注信息
        public let remark: String?

        /// 是否同意隐私条款，0:不同意(默认), 1:同意
        public let isAgreePrivacy: Int64?

        /// 隐私申明文件名称
        public let privacyTextName: String?

        /// 软件Sha1值(PrivacyTextMD5不为空时必填)
        public let appSha1: String?

        /// 隐私申明文本md5(AppSha1不为空时必填)
        public let privacyTextMD5: String?

        public init(taskType: Int64, source: Int64, platform: Int64, appPackage: String? = nil, appName: String? = nil, appVersion: String? = nil, fileID: String? = nil, appDownloadUrl: String? = nil, privacyTextUrl: String? = nil, contactName: String? = nil, telNumber: String? = nil, email: String? = nil, corpName: String? = nil, salesPerson: String? = nil, remark: String? = nil, isAgreePrivacy: Int64? = nil, privacyTextName: String? = nil, appSha1: String? = nil, privacyTextMD5: String? = nil) {
            self.taskType = taskType
            self.source = source
            self.platform = platform
            self.appPackage = appPackage
            self.appName = appName
            self.appVersion = appVersion
            self.fileID = fileID
            self.appDownloadUrl = appDownloadUrl
            self.privacyTextUrl = privacyTextUrl
            self.contactName = contactName
            self.telNumber = telNumber
            self.email = email
            self.corpName = corpName
            self.salesPerson = salesPerson
            self.remark = remark
            self.isAgreePrivacy = isAgreePrivacy
            self.privacyTextName = privacyTextName
            self.appSha1 = appSha1
            self.privacyTextMD5 = privacyTextMD5
        }

        enum CodingKeys: String, CodingKey {
            case taskType = "TaskType"
            case source = "Source"
            case platform = "Platform"
            case appPackage = "AppPackage"
            case appName = "AppName"
            case appVersion = "AppVersion"
            case fileID = "FileID"
            case appDownloadUrl = "AppDownloadUrl"
            case privacyTextUrl = "PrivacyTextUrl"
            case contactName = "ContactName"
            case telNumber = "TelNumber"
            case email = "Email"
            case corpName = "CorpName"
            case salesPerson = "SalesPerson"
            case remark = "Remark"
            case isAgreePrivacy = "IsAgreePrivacy"
            case privacyTextName = "PrivacyTextName"
            case appSha1 = "AppSha1"
            case privacyTextMD5 = "PrivacyTextMD5"
        }
    }

    /// CreateAppScanTask返回参数结构体
    public struct CreateAppScanTaskResponse: TCResponseModel {
        /// 返回值, 0:成功, 其他值请查看“返回值”定义
        public let result: Int64

        /// 任务ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskID: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case taskID = "TaskID"
            case requestId = "RequestId"
        }
    }

    /// 创建应用合规隐私诊断任务
    @inlinable
    public func createAppScanTask(_ input: CreateAppScanTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAppScanTaskResponse> {
        self.client.execute(action: "CreateAppScanTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建应用合规隐私诊断任务
    @inlinable
    public func createAppScanTask(_ input: CreateAppScanTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAppScanTaskResponse {
        try await self.client.execute(action: "CreateAppScanTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建应用合规隐私诊断任务
    @inlinable
    public func createAppScanTask(taskType: Int64, source: Int64, platform: Int64, appPackage: String? = nil, appName: String? = nil, appVersion: String? = nil, fileID: String? = nil, appDownloadUrl: String? = nil, privacyTextUrl: String? = nil, contactName: String? = nil, telNumber: String? = nil, email: String? = nil, corpName: String? = nil, salesPerson: String? = nil, remark: String? = nil, isAgreePrivacy: Int64? = nil, privacyTextName: String? = nil, appSha1: String? = nil, privacyTextMD5: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAppScanTaskResponse> {
        self.createAppScanTask(.init(taskType: taskType, source: source, platform: platform, appPackage: appPackage, appName: appName, appVersion: appVersion, fileID: fileID, appDownloadUrl: appDownloadUrl, privacyTextUrl: privacyTextUrl, contactName: contactName, telNumber: telNumber, email: email, corpName: corpName, salesPerson: salesPerson, remark: remark, isAgreePrivacy: isAgreePrivacy, privacyTextName: privacyTextName, appSha1: appSha1, privacyTextMD5: privacyTextMD5), region: region, logger: logger, on: eventLoop)
    }

    /// 创建应用合规隐私诊断任务
    @inlinable
    public func createAppScanTask(taskType: Int64, source: Int64, platform: Int64, appPackage: String? = nil, appName: String? = nil, appVersion: String? = nil, fileID: String? = nil, appDownloadUrl: String? = nil, privacyTextUrl: String? = nil, contactName: String? = nil, telNumber: String? = nil, email: String? = nil, corpName: String? = nil, salesPerson: String? = nil, remark: String? = nil, isAgreePrivacy: Int64? = nil, privacyTextName: String? = nil, appSha1: String? = nil, privacyTextMD5: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAppScanTaskResponse {
        try await self.createAppScanTask(.init(taskType: taskType, source: source, platform: platform, appPackage: appPackage, appName: appName, appVersion: appVersion, fileID: fileID, appDownloadUrl: appDownloadUrl, privacyTextUrl: privacyTextUrl, contactName: contactName, telNumber: telNumber, email: email, corpName: corpName, salesPerson: salesPerson, remark: remark, isAgreePrivacy: isAgreePrivacy, privacyTextName: privacyTextName, appSha1: appSha1, privacyTextMD5: privacyTextMD5), region: region, logger: logger, on: eventLoop)
    }
}
