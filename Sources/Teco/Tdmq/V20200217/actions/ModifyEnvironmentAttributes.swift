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

extension Tdmq {
    /// ModifyEnvironmentAttributes请求参数结构体
    public struct ModifyEnvironmentAttributesRequest: TCRequestModel {
        /// 命名空间名称。
        public let environmentId: String

        /// 未消费消息过期时间，单位：秒，范围60秒~15天。
        public let msgTTL: UInt64

        /// 备注，字符串最长不超过128。
        public let remark: String?

        /// 集群ID
        public let clusterId: String?

        /// 消息保留策略
        public let retentionPolicy: RetentionPolicy?

        public init(environmentId: String, msgTTL: UInt64, remark: String? = nil, clusterId: String? = nil, retentionPolicy: RetentionPolicy? = nil) {
            self.environmentId = environmentId
            self.msgTTL = msgTTL
            self.remark = remark
            self.clusterId = clusterId
            self.retentionPolicy = retentionPolicy
        }

        enum CodingKeys: String, CodingKey {
            case environmentId = "EnvironmentId"
            case msgTTL = "MsgTTL"
            case remark = "Remark"
            case clusterId = "ClusterId"
            case retentionPolicy = "RetentionPolicy"
        }
    }

    /// ModifyEnvironmentAttributes返回参数结构体
    public struct ModifyEnvironmentAttributesResponse: TCResponseModel {
        /// 命名空间名称。
        public let environmentId: String

        /// 未消费消息过期时间，单位：秒。
        public let msgTTL: UInt64

        /// 备注，字符串最长不超过128。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let remark: String?

        /// 命名空间ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let namespaceId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case environmentId = "EnvironmentId"
            case msgTTL = "MsgTTL"
            case remark = "Remark"
            case namespaceId = "NamespaceId"
            case requestId = "RequestId"
        }
    }

    /// 修改命名空间属性
    ///
    /// 修改指定命名空间的属性值
    @inlinable
    public func modifyEnvironmentAttributes(_ input: ModifyEnvironmentAttributesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyEnvironmentAttributesResponse> {
        self.client.execute(action: "ModifyEnvironmentAttributes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改命名空间属性
    ///
    /// 修改指定命名空间的属性值
    @inlinable
    public func modifyEnvironmentAttributes(_ input: ModifyEnvironmentAttributesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyEnvironmentAttributesResponse {
        try await self.client.execute(action: "ModifyEnvironmentAttributes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改命名空间属性
    ///
    /// 修改指定命名空间的属性值
    @inlinable
    public func modifyEnvironmentAttributes(environmentId: String, msgTTL: UInt64, remark: String? = nil, clusterId: String? = nil, retentionPolicy: RetentionPolicy? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyEnvironmentAttributesResponse> {
        self.modifyEnvironmentAttributes(ModifyEnvironmentAttributesRequest(environmentId: environmentId, msgTTL: msgTTL, remark: remark, clusterId: clusterId, retentionPolicy: retentionPolicy), region: region, logger: logger, on: eventLoop)
    }

    /// 修改命名空间属性
    ///
    /// 修改指定命名空间的属性值
    @inlinable
    public func modifyEnvironmentAttributes(environmentId: String, msgTTL: UInt64, remark: String? = nil, clusterId: String? = nil, retentionPolicy: RetentionPolicy? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyEnvironmentAttributesResponse {
        try await self.modifyEnvironmentAttributes(ModifyEnvironmentAttributesRequest(environmentId: environmentId, msgTTL: msgTTL, remark: remark, clusterId: clusterId, retentionPolicy: retentionPolicy), region: region, logger: logger, on: eventLoop)
    }
}
