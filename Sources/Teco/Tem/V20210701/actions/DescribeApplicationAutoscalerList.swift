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

extension Tem {
    /// DescribeApplicationAutoscalerList请求参数结构体
    public struct DescribeApplicationAutoscalerListRequest: TCRequestModel {
        /// 服务id
        public let applicationId: String

        /// 环境ID
        public let environmentId: String

        /// 来源渠道
        public let sourceChannel: Int64?

        public init(applicationId: String, environmentId: String, sourceChannel: Int64? = nil) {
            self.applicationId = applicationId
            self.environmentId = environmentId
            self.sourceChannel = sourceChannel
        }

        enum CodingKeys: String, CodingKey {
            case applicationId = "ApplicationId"
            case environmentId = "EnvironmentId"
            case sourceChannel = "SourceChannel"
        }
    }

    /// DescribeApplicationAutoscalerList返回参数结构体
    public struct DescribeApplicationAutoscalerListResponse: TCResponseModel {
        /// 弹性伸缩策略组合
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: [Autoscaler]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 获取应用弹性策略组合
    @inlinable
    public func describeApplicationAutoscalerList(_ input: DescribeApplicationAutoscalerListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApplicationAutoscalerListResponse> {
        self.client.execute(action: "DescribeApplicationAutoscalerList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取应用弹性策略组合
    @inlinable
    public func describeApplicationAutoscalerList(_ input: DescribeApplicationAutoscalerListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApplicationAutoscalerListResponse {
        try await self.client.execute(action: "DescribeApplicationAutoscalerList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取应用弹性策略组合
    @inlinable
    public func describeApplicationAutoscalerList(applicationId: String, environmentId: String, sourceChannel: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApplicationAutoscalerListResponse> {
        self.describeApplicationAutoscalerList(.init(applicationId: applicationId, environmentId: environmentId, sourceChannel: sourceChannel), region: region, logger: logger, on: eventLoop)
    }

    /// 获取应用弹性策略组合
    @inlinable
    public func describeApplicationAutoscalerList(applicationId: String, environmentId: String, sourceChannel: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApplicationAutoscalerListResponse {
        try await self.describeApplicationAutoscalerList(.init(applicationId: applicationId, environmentId: environmentId, sourceChannel: sourceChannel), region: region, logger: logger, on: eventLoop)
    }
}
