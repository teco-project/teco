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

extension Tdmq {
    /// DescribeEnvironmentAttributes请求参数结构体
    public struct DescribeEnvironmentAttributesRequest: TCRequestModel {
        /// 环境（命名空间）名称。
        public let environmentId: String

        /// Pulsar 集群的ID
        public let clusterId: String?

        public init(environmentId: String, clusterId: String? = nil) {
            self.environmentId = environmentId
            self.clusterId = clusterId
        }

        enum CodingKeys: String, CodingKey {
            case environmentId = "EnvironmentId"
            case clusterId = "ClusterId"
        }
    }

    /// DescribeEnvironmentAttributes返回参数结构体
    public struct DescribeEnvironmentAttributesResponse: TCResponseModel {
        /// 未消费消息过期时间，单位：秒，最大1296000（15天）。
        public let msgTTL: UInt64

        /// 消费速率限制，单位：byte/秒，0：不限速。
        public let rateInByte: UInt64

        /// 消费速率限制，单位：个数/秒，0：不限速。
        public let rateInSize: UInt64

        /// 已消费消息保存策略，单位：小时，0：消费完马上删除。
        public let retentionHours: UInt64

        /// 已消费消息保存策略，单位：G，0：消费完马上删除。
        public let retentionSize: UInt64

        /// 环境（命名空间）名称。
        public let environmentId: String

        /// 副本数。
        public let replicas: UInt64

        /// 备注。
        public let remark: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case msgTTL = "MsgTTL"
            case rateInByte = "RateInByte"
            case rateInSize = "RateInSize"
            case retentionHours = "RetentionHours"
            case retentionSize = "RetentionSize"
            case environmentId = "EnvironmentId"
            case replicas = "Replicas"
            case remark = "Remark"
            case requestId = "RequestId"
        }
    }

    /// 获取命名空间属性
    ///
    /// 获取指定命名空间的属性
    @inlinable
    public func describeEnvironmentAttributes(_ input: DescribeEnvironmentAttributesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEnvironmentAttributesResponse> {
        self.client.execute(action: "DescribeEnvironmentAttributes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取命名空间属性
    ///
    /// 获取指定命名空间的属性
    @inlinable
    public func describeEnvironmentAttributes(_ input: DescribeEnvironmentAttributesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEnvironmentAttributesResponse {
        try await self.client.execute(action: "DescribeEnvironmentAttributes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取命名空间属性
    ///
    /// 获取指定命名空间的属性
    @inlinable
    public func describeEnvironmentAttributes(environmentId: String, clusterId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEnvironmentAttributesResponse> {
        let input = DescribeEnvironmentAttributesRequest(environmentId: environmentId, clusterId: clusterId)
        return self.client.execute(action: "DescribeEnvironmentAttributes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取命名空间属性
    ///
    /// 获取指定命名空间的属性
    @inlinable
    public func describeEnvironmentAttributes(environmentId: String, clusterId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEnvironmentAttributesResponse {
        let input = DescribeEnvironmentAttributesRequest(environmentId: environmentId, clusterId: clusterId)
        return try await self.client.execute(action: "DescribeEnvironmentAttributes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
