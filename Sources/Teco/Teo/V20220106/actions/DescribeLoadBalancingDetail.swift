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

@_exported import struct Foundation.Date
import TecoDateHelpers

extension Teo {
    /// DescribeLoadBalancingDetail请求参数结构体
    public struct DescribeLoadBalancingDetailRequest: TCRequestModel {
        /// 站点ID
        public let zoneId: String

        /// 负载均衡ID
        public let loadBalancingId: String

        public init(zoneId: String, loadBalancingId: String) {
            self.zoneId = zoneId
            self.loadBalancingId = loadBalancingId
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case loadBalancingId = "LoadBalancingId"
        }
    }

    /// DescribeLoadBalancingDetail返回参数结构体
    public struct DescribeLoadBalancingDetailResponse: TCResponseModel {
        /// 负载均衡ID
        public let loadBalancingId: String

        /// 站点ID
        public let zoneId: String

        /// 子域名，填写@表示根域
        public let host: String

        /// 代理模式：
        /// dns_only: 仅DNS
        /// proxied: 开启代理
        public let type: String

        /// 当Type=dns_only表示DNS的TTL时间
        public let ttl: UInt64

        /// 使用的源站组ID
        public let originId: [String]

        /// 使用的源站信息
        public let origin: [OriginGroup]

        /// 更新时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var updateTime: Date

        /// 状态
        public let status: String

        /// 调度域名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cname: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case loadBalancingId = "LoadBalancingId"
            case zoneId = "ZoneId"
            case host = "Host"
            case type = "Type"
            case ttl = "TTL"
            case originId = "OriginId"
            case origin = "Origin"
            case updateTime = "UpdateTime"
            case status = "Status"
            case cname = "Cname"
            case requestId = "RequestId"
        }
    }

    /// 获取负载均衡详细信息
    @inlinable
    public func describeLoadBalancingDetail(_ input: DescribeLoadBalancingDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLoadBalancingDetailResponse> {
        self.client.execute(action: "DescribeLoadBalancingDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取负载均衡详细信息
    @inlinable
    public func describeLoadBalancingDetail(_ input: DescribeLoadBalancingDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLoadBalancingDetailResponse {
        try await self.client.execute(action: "DescribeLoadBalancingDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取负载均衡详细信息
    @inlinable
    public func describeLoadBalancingDetail(zoneId: String, loadBalancingId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLoadBalancingDetailResponse> {
        self.describeLoadBalancingDetail(DescribeLoadBalancingDetailRequest(zoneId: zoneId, loadBalancingId: loadBalancingId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取负载均衡详细信息
    @inlinable
    public func describeLoadBalancingDetail(zoneId: String, loadBalancingId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLoadBalancingDetailResponse {
        try await self.describeLoadBalancingDetail(DescribeLoadBalancingDetailRequest(zoneId: zoneId, loadBalancingId: loadBalancingId), region: region, logger: logger, on: eventLoop)
    }
}
