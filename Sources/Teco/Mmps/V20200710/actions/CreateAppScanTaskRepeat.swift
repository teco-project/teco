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
    /// CreateAppScanTaskRepeat请求参数结构体
    public struct CreateAppScanTaskRepeatRequest: TCRequestModel {
        /// 任务类型, 0:基础版, 1:专家版, 2:本地化
        public let taskType: Int64

        /// 任务来源, 0:小程序诊断, 1:预留字段(暂未使用), 2:app诊断(android);
        public let source: Int64

        /// 小程序AppID
        public let appPackage: String

        /// 应用平台, 0:android, 1:ios, 2:小程序
        public let platform: Int64

        /// 原诊断任务ID
        public let orgTaskID: String

        public init(taskType: Int64, source: Int64, appPackage: String, platform: Int64, orgTaskID: String) {
            self.taskType = taskType
            self.source = source
            self.appPackage = appPackage
            self.platform = platform
            self.orgTaskID = orgTaskID
        }

        enum CodingKeys: String, CodingKey {
            case taskType = "TaskType"
            case source = "Source"
            case appPackage = "AppPackage"
            case platform = "Platform"
            case orgTaskID = "OrgTaskID"
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

    /// 隐私合规诊断重试任务
    ///
    /// 小程序隐私合规诊断重试任务
    @inlinable
    public func createAppScanTaskRepeat(_ input: CreateAppScanTaskRepeatRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAppScanTaskRepeatResponse> {
        self.client.execute(action: "CreateAppScanTaskRepeat", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 隐私合规诊断重试任务
    ///
    /// 小程序隐私合规诊断重试任务
    @inlinable
    public func createAppScanTaskRepeat(_ input: CreateAppScanTaskRepeatRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAppScanTaskRepeatResponse {
        try await self.client.execute(action: "CreateAppScanTaskRepeat", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 隐私合规诊断重试任务
    ///
    /// 小程序隐私合规诊断重试任务
    @inlinable
    public func createAppScanTaskRepeat(taskType: Int64, source: Int64, appPackage: String, platform: Int64, orgTaskID: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAppScanTaskRepeatResponse> {
        self.createAppScanTaskRepeat(.init(taskType: taskType, source: source, appPackage: appPackage, platform: platform, orgTaskID: orgTaskID), region: region, logger: logger, on: eventLoop)
    }

    /// 隐私合规诊断重试任务
    ///
    /// 小程序隐私合规诊断重试任务
    @inlinable
    public func createAppScanTaskRepeat(taskType: Int64, source: Int64, appPackage: String, platform: Int64, orgTaskID: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAppScanTaskRepeatResponse {
        try await self.createAppScanTaskRepeat(.init(taskType: taskType, source: source, appPackage: appPackage, platform: platform, orgTaskID: orgTaskID), region: region, logger: logger, on: eventLoop)
    }
}
