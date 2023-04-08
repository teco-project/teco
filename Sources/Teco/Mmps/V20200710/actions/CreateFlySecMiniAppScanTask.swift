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

import TecoCore

extension Mmps {
    /// CreateFlySecMiniAppScanTask请求参数结构体
    public struct CreateFlySecMiniAppScanTaskRequest: TCRequestModel {
        /// 小程序AppID
        public let miniAppID: String

        /// 诊断模式 1:基础诊断
        public let mode: Int64

        /// 小程序测试账号(自有账号体系需提供,其他情况不需要)
        public let miniAppTestAccount: String?

        /// 小程序测试密码(自有账号体系需提供,其他情况不需要)
        public let miniAppTestPwd: String?

        /// 小程序所属行业
        public let industry: String?

        /// 小程序调查问卷json字符串
        public let surveyContent: String?

        /// 手机号码
        public let mobile: String?

        /// 邮箱地址
        public let email: String?

        /// 商务合作接口人
        public let salesPerson: String?

        /// 诊断扫描版本 0:正式版 1:体验版
        public let scanVersion: Int64?

        public init(miniAppID: String, mode: Int64, miniAppTestAccount: String? = nil, miniAppTestPwd: String? = nil, industry: String? = nil, surveyContent: String? = nil, mobile: String? = nil, email: String? = nil, salesPerson: String? = nil, scanVersion: Int64? = nil) {
            self.miniAppID = miniAppID
            self.mode = mode
            self.miniAppTestAccount = miniAppTestAccount
            self.miniAppTestPwd = miniAppTestPwd
            self.industry = industry
            self.surveyContent = surveyContent
            self.mobile = mobile
            self.email = email
            self.salesPerson = salesPerson
            self.scanVersion = scanVersion
        }

        enum CodingKeys: String, CodingKey {
            case miniAppID = "MiniAppID"
            case mode = "Mode"
            case miniAppTestAccount = "MiniAppTestAccount"
            case miniAppTestPwd = "MiniAppTestPwd"
            case industry = "Industry"
            case surveyContent = "SurveyContent"
            case mobile = "Mobile"
            case email = "Email"
            case salesPerson = "SalesPerson"
            case scanVersion = "ScanVersion"
        }
    }

    /// CreateFlySecMiniAppScanTask返回参数结构体
    public struct CreateFlySecMiniAppScanTaskResponse: TCResponseModel {
        /// 返回值, 0:成功, 其他值请查看“返回值”定义
        public let ret: Int64

        /// 任务id
        public let taskID: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ret = "Ret"
            case taskID = "TaskID"
            case requestId = "RequestId"
        }
    }

    /// 创建小程序翼扬安全诊断任务
    ///
    /// 创建小程序翼扬安全的基础或深度诊断任务
    @inlinable
    public func createFlySecMiniAppScanTask(_ input: CreateFlySecMiniAppScanTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFlySecMiniAppScanTaskResponse> {
        self.client.execute(action: "CreateFlySecMiniAppScanTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建小程序翼扬安全诊断任务
    ///
    /// 创建小程序翼扬安全的基础或深度诊断任务
    @inlinable
    public func createFlySecMiniAppScanTask(_ input: CreateFlySecMiniAppScanTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFlySecMiniAppScanTaskResponse {
        try await self.client.execute(action: "CreateFlySecMiniAppScanTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建小程序翼扬安全诊断任务
    ///
    /// 创建小程序翼扬安全的基础或深度诊断任务
    @inlinable
    public func createFlySecMiniAppScanTask(miniAppID: String, mode: Int64, miniAppTestAccount: String? = nil, miniAppTestPwd: String? = nil, industry: String? = nil, surveyContent: String? = nil, mobile: String? = nil, email: String? = nil, salesPerson: String? = nil, scanVersion: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFlySecMiniAppScanTaskResponse> {
        self.createFlySecMiniAppScanTask(.init(miniAppID: miniAppID, mode: mode, miniAppTestAccount: miniAppTestAccount, miniAppTestPwd: miniAppTestPwd, industry: industry, surveyContent: surveyContent, mobile: mobile, email: email, salesPerson: salesPerson, scanVersion: scanVersion), region: region, logger: logger, on: eventLoop)
    }

    /// 创建小程序翼扬安全诊断任务
    ///
    /// 创建小程序翼扬安全的基础或深度诊断任务
    @inlinable
    public func createFlySecMiniAppScanTask(miniAppID: String, mode: Int64, miniAppTestAccount: String? = nil, miniAppTestPwd: String? = nil, industry: String? = nil, surveyContent: String? = nil, mobile: String? = nil, email: String? = nil, salesPerson: String? = nil, scanVersion: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFlySecMiniAppScanTaskResponse {
        try await self.createFlySecMiniAppScanTask(.init(miniAppID: miniAppID, mode: mode, miniAppTestAccount: miniAppTestAccount, miniAppTestPwd: miniAppTestPwd, industry: industry, surveyContent: surveyContent, mobile: mobile, email: email, salesPerson: salesPerson, scanVersion: scanVersion), region: region, logger: logger, on: eventLoop)
    }
}
