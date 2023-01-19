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

extension Tem {
    /// EnableApplicationAutoscaler请求参数结构体
    public struct EnableApplicationAutoscalerRequest: TCRequestModel {
        /// 服务id
        public let applicationId: String

        /// 环境ID
        public let environmentId: String

        /// 来源渠道
        public let sourceChannel: Int64?

        /// 弹性伸缩策略ID
        public let autoscalerId: String?

        public init(applicationId: String, environmentId: String, sourceChannel: Int64? = nil, autoscalerId: String? = nil) {
            self.applicationId = applicationId
            self.environmentId = environmentId
            self.sourceChannel = sourceChannel
            self.autoscalerId = autoscalerId
        }

        enum CodingKeys: String, CodingKey {
            case applicationId = "ApplicationId"
            case environmentId = "EnvironmentId"
            case sourceChannel = "SourceChannel"
            case autoscalerId = "AutoscalerId"
        }
    }

    /// EnableApplicationAutoscaler返回参数结构体
    public struct EnableApplicationAutoscalerResponse: TCResponseModel {
        /// 是否成功
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: Bool?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 启用应用弹性策略组合
    @inlinable
    public func enableApplicationAutoscaler(_ input: EnableApplicationAutoscalerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableApplicationAutoscalerResponse> {
        self.client.execute(action: "EnableApplicationAutoscaler", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 启用应用弹性策略组合
    @inlinable
    public func enableApplicationAutoscaler(_ input: EnableApplicationAutoscalerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableApplicationAutoscalerResponse {
        try await self.client.execute(action: "EnableApplicationAutoscaler", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 启用应用弹性策略组合
    @inlinable
    public func enableApplicationAutoscaler(applicationId: String, environmentId: String, sourceChannel: Int64? = nil, autoscalerId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableApplicationAutoscalerResponse> {
        self.enableApplicationAutoscaler(EnableApplicationAutoscalerRequest(applicationId: applicationId, environmentId: environmentId, sourceChannel: sourceChannel, autoscalerId: autoscalerId), region: region, logger: logger, on: eventLoop)
    }

    /// 启用应用弹性策略组合
    @inlinable
    public func enableApplicationAutoscaler(applicationId: String, environmentId: String, sourceChannel: Int64? = nil, autoscalerId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableApplicationAutoscalerResponse {
        try await self.enableApplicationAutoscaler(EnableApplicationAutoscalerRequest(applicationId: applicationId, environmentId: environmentId, sourceChannel: sourceChannel, autoscalerId: autoscalerId), region: region, logger: logger, on: eventLoop)
    }
}
