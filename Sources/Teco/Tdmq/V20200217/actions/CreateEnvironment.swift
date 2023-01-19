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
    /// CreateEnvironment请求参数结构体
    public struct CreateEnvironmentRequest: TCRequestModel {
        /// 环境（命名空间）名称，不支持中字以及除了短线和下划线外的特殊字符且不超过16个字符。
        public let environmentId: String

        /// 未消费消息过期时间，单位：秒，取值范围：60秒~15天。
        public let msgTTL: UInt64

        /// 说明，128个字符以内。
        public let remark: String?

        /// Pulsar 集群的ID
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

    /// CreateEnvironment返回参数结构体
    public struct CreateEnvironmentResponse: TCResponseModel {
        /// 环境（命名空间）名称。
        public let environmentId: String

        /// 未消费消息过期时间，单位：秒。
        public let msgTTL: UInt64

        /// 说明，128个字符以内。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let remark: String?

        /// 命名空间ID
        public let namespaceId: String

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

    /// 创建命名空间
    ///
    /// 用于在用户账户下创建消息队列 Tdmq 命名空间
    @inlinable
    public func createEnvironment(_ input: CreateEnvironmentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateEnvironmentResponse> {
        self.client.execute(action: "CreateEnvironment", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建命名空间
    ///
    /// 用于在用户账户下创建消息队列 Tdmq 命名空间
    @inlinable
    public func createEnvironment(_ input: CreateEnvironmentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateEnvironmentResponse {
        try await self.client.execute(action: "CreateEnvironment", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建命名空间
    ///
    /// 用于在用户账户下创建消息队列 Tdmq 命名空间
    @inlinable
    public func createEnvironment(environmentId: String, msgTTL: UInt64, remark: String? = nil, clusterId: String? = nil, retentionPolicy: RetentionPolicy? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateEnvironmentResponse> {
        self.createEnvironment(CreateEnvironmentRequest(environmentId: environmentId, msgTTL: msgTTL, remark: remark, clusterId: clusterId, retentionPolicy: retentionPolicy), region: region, logger: logger, on: eventLoop)
    }

    /// 创建命名空间
    ///
    /// 用于在用户账户下创建消息队列 Tdmq 命名空间
    @inlinable
    public func createEnvironment(environmentId: String, msgTTL: UInt64, remark: String? = nil, clusterId: String? = nil, retentionPolicy: RetentionPolicy? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateEnvironmentResponse {
        try await self.createEnvironment(CreateEnvironmentRequest(environmentId: environmentId, msgTTL: msgTTL, remark: remark, clusterId: clusterId, retentionPolicy: retentionPolicy), region: region, logger: logger, on: eventLoop)
    }
}
