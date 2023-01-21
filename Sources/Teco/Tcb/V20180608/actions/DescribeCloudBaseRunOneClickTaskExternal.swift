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

extension Tcb {
    /// DescribeCloudBaseRunOneClickTaskExternal请求参数结构体
    public struct DescribeCloudBaseRunOneClickTaskExternalRequest: TCRequestModel {
        /// 外部任务Id 最长64字节
        public let externalId: String

        public init(externalId: String) {
            self.externalId = externalId
        }

        enum CodingKeys: String, CodingKey {
            case externalId = "ExternalId"
        }
    }

    /// DescribeCloudBaseRunOneClickTaskExternal返回参数结构体
    public struct DescribeCloudBaseRunOneClickTaskExternalResponse: TCResponseModel {
        /// 外部任务Id
        public let externalId: String

        /// 弃用
        public let envId: String

        /// 用户uin
        public let userUin: String

        /// 服务名
        public let serverName: String

        /// 版本名
        public let versionName: String

        /// 创建时间
        public let createTime: String

        /// 当前阶段
        /// 微信云托管环境创建阶段：envStage
        /// 存储资源创建阶段：storageStage
        /// 服务创建阶段：serverStage
        public let stage: String

        /// 状态
        /// running
        /// stopped
        /// failed
        /// finished
        public let status: String

        /// 失败原因
        public let failReason: String

        /// 用户envId
        public let userEnvId: String

        /// 创建时间
        public let startTime: String

        /// 步骤信息
        public let steps: [OneClickTaskStepInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case externalId = "ExternalId"
            case envId = "EnvId"
            case userUin = "UserUin"
            case serverName = "ServerName"
            case versionName = "VersionName"
            case createTime = "CreateTime"
            case stage = "Stage"
            case status = "Status"
            case failReason = "FailReason"
            case userEnvId = "UserEnvId"
            case startTime = "StartTime"
            case steps = "Steps"
            case requestId = "RequestId"
        }
    }

    /// 查询一键部署任务
    ///
    /// 查询一键部署任务 （特定接口：外部查询使用）
    @inlinable
    public func describeCloudBaseRunOneClickTaskExternal(_ input: DescribeCloudBaseRunOneClickTaskExternalRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCloudBaseRunOneClickTaskExternalResponse> {
        self.client.execute(action: "DescribeCloudBaseRunOneClickTaskExternal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询一键部署任务
    ///
    /// 查询一键部署任务 （特定接口：外部查询使用）
    @inlinable
    public func describeCloudBaseRunOneClickTaskExternal(_ input: DescribeCloudBaseRunOneClickTaskExternalRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloudBaseRunOneClickTaskExternalResponse {
        try await self.client.execute(action: "DescribeCloudBaseRunOneClickTaskExternal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询一键部署任务
    ///
    /// 查询一键部署任务 （特定接口：外部查询使用）
    @inlinable
    public func describeCloudBaseRunOneClickTaskExternal(externalId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCloudBaseRunOneClickTaskExternalResponse> {
        self.describeCloudBaseRunOneClickTaskExternal(DescribeCloudBaseRunOneClickTaskExternalRequest(externalId: externalId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询一键部署任务
    ///
    /// 查询一键部署任务 （特定接口：外部查询使用）
    @inlinable
    public func describeCloudBaseRunOneClickTaskExternal(externalId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloudBaseRunOneClickTaskExternalResponse {
        try await self.describeCloudBaseRunOneClickTaskExternal(DescribeCloudBaseRunOneClickTaskExternalRequest(externalId: externalId), region: region, logger: logger, on: eventLoop)
    }
}
