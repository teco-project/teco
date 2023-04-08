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

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers

extension Teo {
    /// DescribeOriginGroupDetail请求参数结构体
    public struct DescribeOriginGroupDetailRequest: TCRequestModel {
        /// 源站组ID
        public let originId: String

        /// 站点ID
        public let zoneId: String

        public init(originId: String, zoneId: String) {
            self.originId = originId
            self.zoneId = zoneId
        }

        enum CodingKeys: String, CodingKey {
            case originId = "OriginId"
            case zoneId = "ZoneId"
        }
    }

    /// DescribeOriginGroupDetail返回参数结构体
    public struct DescribeOriginGroupDetailResponse: TCResponseModel {
        /// 源站组ID
        public let originId: String

        /// 源站组名称
        public let originName: String

        /// 源站组配置类型
        /// area：表示按照Record记录中的Area字段进行按客户端IP所在区域回源。
        /// weight：表示按照Record记录中的Weight字段进行按权重回源。
        public let type: String

        /// 记录
        public let record: [OriginRecord]

        /// 更新时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var updateTime: Date

        /// 站点ID
        public let zoneId: String

        /// 站点名称
        public let zoneName: String

        /// 源站类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let originType: String?

        /// 当前源站组是否被四层代理使用。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let applicationProxyUsed: Bool?

        /// 当前源站组是否被负载均衡使用。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let loadBalancingUsed: Bool?

        /// 使用当前源站组的负载均衡的类型：
        /// none：未被使用
        /// dns_only：被仅DNS类型负载均衡使用
        /// proxied：被代理加速类型负载均衡使用
        /// both：同时被仅DNS和代理加速类型负载均衡使用
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let loadBalancingUsedType: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case originId = "OriginId"
            case originName = "OriginName"
            case type = "Type"
            case record = "Record"
            case updateTime = "UpdateTime"
            case zoneId = "ZoneId"
            case zoneName = "ZoneName"
            case originType = "OriginType"
            case applicationProxyUsed = "ApplicationProxyUsed"
            case loadBalancingUsed = "LoadBalancingUsed"
            case loadBalancingUsedType = "LoadBalancingUsedType"
            case requestId = "RequestId"
        }
    }

    /// 获取源站组详细信息
    @inlinable
    public func describeOriginGroupDetail(_ input: DescribeOriginGroupDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOriginGroupDetailResponse> {
        self.client.execute(action: "DescribeOriginGroupDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取源站组详细信息
    @inlinable
    public func describeOriginGroupDetail(_ input: DescribeOriginGroupDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOriginGroupDetailResponse {
        try await self.client.execute(action: "DescribeOriginGroupDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取源站组详细信息
    @inlinable
    public func describeOriginGroupDetail(originId: String, zoneId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOriginGroupDetailResponse> {
        self.describeOriginGroupDetail(.init(originId: originId, zoneId: zoneId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取源站组详细信息
    @inlinable
    public func describeOriginGroupDetail(originId: String, zoneId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOriginGroupDetailResponse {
        try await self.describeOriginGroupDetail(.init(originId: originId, zoneId: zoneId), region: region, logger: logger, on: eventLoop)
    }
}
