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

extension Tem {
    /// ModifyApplicationReplicas请求参数结构体
    public struct ModifyApplicationReplicasRequest: TCRequestModel {
        /// 服务id
        public let applicationId: String

        /// 环境ID
        public let environmentId: String

        /// 实例数量
        public let replicas: Int64

        /// 来源渠道
        public let sourceChannel: Int64?

        public init(applicationId: String, environmentId: String, replicas: Int64, sourceChannel: Int64? = nil) {
            self.applicationId = applicationId
            self.environmentId = environmentId
            self.replicas = replicas
            self.sourceChannel = sourceChannel
        }

        enum CodingKeys: String, CodingKey {
            case applicationId = "ApplicationId"
            case environmentId = "EnvironmentId"
            case replicas = "Replicas"
            case sourceChannel = "SourceChannel"
        }
    }

    /// ModifyApplicationReplicas返回参数结构体
    public struct ModifyApplicationReplicasResponse: TCResponseModel {
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

    /// 修改应用实例数量
    @inlinable
    public func modifyApplicationReplicas(_ input: ModifyApplicationReplicasRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyApplicationReplicasResponse> {
        self.client.execute(action: "ModifyApplicationReplicas", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改应用实例数量
    @inlinable
    public func modifyApplicationReplicas(_ input: ModifyApplicationReplicasRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyApplicationReplicasResponse {
        try await self.client.execute(action: "ModifyApplicationReplicas", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改应用实例数量
    @inlinable
    public func modifyApplicationReplicas(applicationId: String, environmentId: String, replicas: Int64, sourceChannel: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyApplicationReplicasResponse> {
        self.modifyApplicationReplicas(ModifyApplicationReplicasRequest(applicationId: applicationId, environmentId: environmentId, replicas: replicas, sourceChannel: sourceChannel), region: region, logger: logger, on: eventLoop)
    }

    /// 修改应用实例数量
    @inlinable
    public func modifyApplicationReplicas(applicationId: String, environmentId: String, replicas: Int64, sourceChannel: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyApplicationReplicasResponse {
        try await self.modifyApplicationReplicas(ModifyApplicationReplicasRequest(applicationId: applicationId, environmentId: environmentId, replicas: replicas, sourceChannel: sourceChannel), region: region, logger: logger, on: eventLoop)
    }
}
