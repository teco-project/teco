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
    /// ModifyApplicationAutoscaler请求参数结构体
    public struct ModifyApplicationAutoscalerRequest: TCRequestModel {
        /// 服务id
        public let applicationId: String

        /// 环境ID
        public let environmentId: String

        /// 来源渠道
        public let sourceChannel: Int64?

        /// 弹性伸缩策略ID
        public let autoscalerId: String?

        /// 弹性伸缩策略
        public let autoscaler: Autoscaler?

        public init(applicationId: String, environmentId: String, sourceChannel: Int64? = nil, autoscalerId: String? = nil, autoscaler: Autoscaler? = nil) {
            self.applicationId = applicationId
            self.environmentId = environmentId
            self.sourceChannel = sourceChannel
            self.autoscalerId = autoscalerId
            self.autoscaler = autoscaler
        }

        enum CodingKeys: String, CodingKey {
            case applicationId = "ApplicationId"
            case environmentId = "EnvironmentId"
            case sourceChannel = "SourceChannel"
            case autoscalerId = "AutoscalerId"
            case autoscaler = "Autoscaler"
        }
    }

    /// ModifyApplicationAutoscaler返回参数结构体
    public struct ModifyApplicationAutoscalerResponse: TCResponseModel {
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

    /// 修改弹性伸缩策略组合
    @inlinable
    public func modifyApplicationAutoscaler(_ input: ModifyApplicationAutoscalerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyApplicationAutoscalerResponse> {
        self.client.execute(action: "ModifyApplicationAutoscaler", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改弹性伸缩策略组合
    @inlinable
    public func modifyApplicationAutoscaler(_ input: ModifyApplicationAutoscalerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyApplicationAutoscalerResponse {
        try await self.client.execute(action: "ModifyApplicationAutoscaler", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改弹性伸缩策略组合
    @inlinable
    public func modifyApplicationAutoscaler(applicationId: String, environmentId: String, sourceChannel: Int64? = nil, autoscalerId: String? = nil, autoscaler: Autoscaler? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyApplicationAutoscalerResponse> {
        self.modifyApplicationAutoscaler(.init(applicationId: applicationId, environmentId: environmentId, sourceChannel: sourceChannel, autoscalerId: autoscalerId, autoscaler: autoscaler), region: region, logger: logger, on: eventLoop)
    }

    /// 修改弹性伸缩策略组合
    @inlinable
    public func modifyApplicationAutoscaler(applicationId: String, environmentId: String, sourceChannel: Int64? = nil, autoscalerId: String? = nil, autoscaler: Autoscaler? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyApplicationAutoscalerResponse {
        try await self.modifyApplicationAutoscaler(.init(applicationId: applicationId, environmentId: environmentId, sourceChannel: sourceChannel, autoscalerId: autoscalerId, autoscaler: autoscaler), region: region, logger: logger, on: eventLoop)
    }
}
