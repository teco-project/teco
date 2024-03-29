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

extension Tem {
    /// CreateApplicationAutoscaler请求参数结构体
    public struct CreateApplicationAutoscalerRequest: TCRequest {
        /// 服务id
        public let applicationId: String

        /// 环境ID
        public let environmentId: String

        /// 来源渠道
        public let sourceChannel: Int64?

        /// 弹性伸缩策略
        public let autoscaler: Autoscaler?

        public init(applicationId: String, environmentId: String, sourceChannel: Int64? = nil, autoscaler: Autoscaler? = nil) {
            self.applicationId = applicationId
            self.environmentId = environmentId
            self.sourceChannel = sourceChannel
            self.autoscaler = autoscaler
        }

        enum CodingKeys: String, CodingKey {
            case applicationId = "ApplicationId"
            case environmentId = "EnvironmentId"
            case sourceChannel = "SourceChannel"
            case autoscaler = "Autoscaler"
        }
    }

    /// CreateApplicationAutoscaler返回参数结构体
    public struct CreateApplicationAutoscalerResponse: TCResponse {
        /// 弹性伸缩策略组合ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 创建弹性伸缩策略组合
    @inlinable
    public func createApplicationAutoscaler(_ input: CreateApplicationAutoscalerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateApplicationAutoscalerResponse> {
        self.client.execute(action: "CreateApplicationAutoscaler", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建弹性伸缩策略组合
    @inlinable
    public func createApplicationAutoscaler(_ input: CreateApplicationAutoscalerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateApplicationAutoscalerResponse {
        try await self.client.execute(action: "CreateApplicationAutoscaler", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建弹性伸缩策略组合
    @inlinable
    public func createApplicationAutoscaler(applicationId: String, environmentId: String, sourceChannel: Int64? = nil, autoscaler: Autoscaler? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateApplicationAutoscalerResponse> {
        self.createApplicationAutoscaler(.init(applicationId: applicationId, environmentId: environmentId, sourceChannel: sourceChannel, autoscaler: autoscaler), region: region, logger: logger, on: eventLoop)
    }

    /// 创建弹性伸缩策略组合
    @inlinable
    public func createApplicationAutoscaler(applicationId: String, environmentId: String, sourceChannel: Int64? = nil, autoscaler: Autoscaler? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateApplicationAutoscalerResponse {
        try await self.createApplicationAutoscaler(.init(applicationId: applicationId, environmentId: environmentId, sourceChannel: sourceChannel, autoscaler: autoscaler), region: region, logger: logger, on: eventLoop)
    }
}
