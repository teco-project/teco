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

extension Mmps {
    /// CreateFlySecMiniAppProfessionalScanTask请求参数结构体
    public struct CreateFlySecMiniAppProfessionalScanTaskRequest: TCRequestModel {
        /// 小程序AppID
        public let miniAppID: String

        /// 小程序名称
        public let miniAppName: String

        /// 诊断模式 2:深度诊断
        public let mode: Int64

        /// 公司名称
        public let corpName: String

        /// 手机号码
        public let mobile: String

        /// 电子邮箱
        public let email: String

        /// 备注信息
        public let remark: String?

        public init(miniAppID: String, miniAppName: String, mode: Int64, corpName: String, mobile: String, email: String, remark: String? = nil) {
            self.miniAppID = miniAppID
            self.miniAppName = miniAppName
            self.mode = mode
            self.corpName = corpName
            self.mobile = mobile
            self.email = email
            self.remark = remark
        }

        enum CodingKeys: String, CodingKey {
            case miniAppID = "MiniAppID"
            case miniAppName = "MiniAppName"
            case mode = "Mode"
            case corpName = "CorpName"
            case mobile = "Mobile"
            case email = "Email"
            case remark = "Remark"
        }
    }

    /// CreateFlySecMiniAppProfessionalScanTask返回参数结构体
    public struct CreateFlySecMiniAppProfessionalScanTaskResponse: TCResponseModel {
        /// 返回值, 0:成功, 其他值请查看“返回值”定义
        public let ret: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ret = "Ret"
            case requestId = "RequestId"
        }
    }

    /// 提交深度诊断任务
    ///
    /// 创建小程序安全深度诊断任务
    @inlinable
    public func createFlySecMiniAppProfessionalScanTask(_ input: CreateFlySecMiniAppProfessionalScanTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFlySecMiniAppProfessionalScanTaskResponse> {
        self.client.execute(action: "CreateFlySecMiniAppProfessionalScanTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 提交深度诊断任务
    ///
    /// 创建小程序安全深度诊断任务
    @inlinable
    public func createFlySecMiniAppProfessionalScanTask(_ input: CreateFlySecMiniAppProfessionalScanTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFlySecMiniAppProfessionalScanTaskResponse {
        try await self.client.execute(action: "CreateFlySecMiniAppProfessionalScanTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 提交深度诊断任务
    ///
    /// 创建小程序安全深度诊断任务
    @inlinable
    public func createFlySecMiniAppProfessionalScanTask(miniAppID: String, miniAppName: String, mode: Int64, corpName: String, mobile: String, email: String, remark: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFlySecMiniAppProfessionalScanTaskResponse> {
        let input = CreateFlySecMiniAppProfessionalScanTaskRequest(miniAppID: miniAppID, miniAppName: miniAppName, mode: mode, corpName: corpName, mobile: mobile, email: email, remark: remark)
        return self.client.execute(action: "CreateFlySecMiniAppProfessionalScanTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 提交深度诊断任务
    ///
    /// 创建小程序安全深度诊断任务
    @inlinable
    public func createFlySecMiniAppProfessionalScanTask(miniAppID: String, miniAppName: String, mode: Int64, corpName: String, mobile: String, email: String, remark: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFlySecMiniAppProfessionalScanTaskResponse {
        let input = CreateFlySecMiniAppProfessionalScanTaskRequest(miniAppID: miniAppID, miniAppName: miniAppName, mode: mode, corpName: corpName, mobile: mobile, email: email, remark: remark)
        return try await self.client.execute(action: "CreateFlySecMiniAppProfessionalScanTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
