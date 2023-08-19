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

extension Cdb {
    /// DescribeProxySupportParam请求参数结构体
    public struct DescribeProxySupportParamRequest: TCRequest {
        /// 实例ID
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// DescribeProxySupportParam返回参数结构体
    public struct DescribeProxySupportParamResponse: TCResponse {
        /// 支持最大代理版本
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let proxyVersion: String?

        /// 是否支持连接池
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let supportPool: Bool?

        /// 连接池最小值
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let poolMin: UInt64?

        /// 连接池最大值
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let poolMax: UInt64?

        /// 是否支持事务拆分
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let supportTransSplit: Bool?

        /// 支持连接池的最小代理版本
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let supportPoolMinVersion: String?

        /// 支持事务拆分的最小代理版本
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let supportTransSplitMinVersion: String?

        /// 是否支持设置只读
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let supportReadOnly: Bool?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case proxyVersion = "ProxyVersion"
            case supportPool = "SupportPool"
            case poolMin = "PoolMin"
            case poolMax = "PoolMax"
            case supportTransSplit = "SupportTransSplit"
            case supportPoolMinVersion = "SupportPoolMinVersion"
            case supportTransSplitMinVersion = "SupportTransSplitMinVersion"
            case supportReadOnly = "SupportReadOnly"
            case requestId = "RequestId"
        }
    }

    /// 查询实例支持代理版本和参数
    @inlinable
    public func describeProxySupportParam(_ input: DescribeProxySupportParamRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProxySupportParamResponse> {
        self.client.execute(action: "DescribeProxySupportParam", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例支持代理版本和参数
    @inlinable
    public func describeProxySupportParam(_ input: DescribeProxySupportParamRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProxySupportParamResponse {
        try await self.client.execute(action: "DescribeProxySupportParam", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例支持代理版本和参数
    @inlinable
    public func describeProxySupportParam(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProxySupportParamResponse> {
        self.describeProxySupportParam(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实例支持代理版本和参数
    @inlinable
    public func describeProxySupportParam(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProxySupportParamResponse {
        try await self.describeProxySupportParam(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
