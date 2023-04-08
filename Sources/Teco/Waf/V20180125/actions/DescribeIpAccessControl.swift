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

extension Waf {
    /// DescribeIpAccessControl请求参数结构体
    public struct DescribeIpAccessControlRequest: TCRequestModel {
        /// 域名
        public let domain: String

        /// 计数标识
        public let count: UInt64

        /// 动作，40表示查询白名单，42表示查询黑名单
        public let actionType: UInt64?

        /// 最小有效时间的时间戳
        public let vtsMin: UInt64?

        /// 最大有效时间的时间戳
        public let vtsMax: UInt64?

        /// 最小创建时间的时间戳
        public let ctsMin: UInt64?

        /// 最大创建时间的时间戳
        public let ctsMax: UInt64?

        /// 分页开始条数
        public let offSet: UInt64?

        /// 每页的条数
        public let limit: UInt64?

        /// 来源
        public let source: String?

        /// 排序参数
        public let sort: String?

        /// ip
        public let ip: String?

        public init(domain: String, count: UInt64, actionType: UInt64? = nil, vtsMin: UInt64? = nil, vtsMax: UInt64? = nil, ctsMin: UInt64? = nil, ctsMax: UInt64? = nil, offSet: UInt64? = nil, limit: UInt64? = nil, source: String? = nil, sort: String? = nil, ip: String? = nil) {
            self.domain = domain
            self.count = count
            self.actionType = actionType
            self.vtsMin = vtsMin
            self.vtsMax = vtsMax
            self.ctsMin = ctsMin
            self.ctsMax = ctsMax
            self.offSet = offSet
            self.limit = limit
            self.source = source
            self.sort = sort
            self.ip = ip
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case count = "Count"
            case actionType = "ActionType"
            case vtsMin = "VtsMin"
            case vtsMax = "VtsMax"
            case ctsMin = "CtsMin"
            case ctsMax = "CtsMax"
            case offSet = "OffSet"
            case limit = "Limit"
            case source = "Source"
            case sort = "Sort"
            case ip = "Ip"
        }
    }

    /// DescribeIpAccessControl返回参数结构体
    public struct DescribeIpAccessControlResponse: TCResponseModel {
        /// 输出
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: IpAccessControlData?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// Waf ip黑白名单查询
    @inlinable
    public func describeIpAccessControl(_ input: DescribeIpAccessControlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIpAccessControlResponse> {
        self.client.execute(action: "DescribeIpAccessControl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Waf ip黑白名单查询
    @inlinable
    public func describeIpAccessControl(_ input: DescribeIpAccessControlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIpAccessControlResponse {
        try await self.client.execute(action: "DescribeIpAccessControl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// Waf ip黑白名单查询
    @inlinable
    public func describeIpAccessControl(domain: String, count: UInt64, actionType: UInt64? = nil, vtsMin: UInt64? = nil, vtsMax: UInt64? = nil, ctsMin: UInt64? = nil, ctsMax: UInt64? = nil, offSet: UInt64? = nil, limit: UInt64? = nil, source: String? = nil, sort: String? = nil, ip: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIpAccessControlResponse> {
        self.describeIpAccessControl(.init(domain: domain, count: count, actionType: actionType, vtsMin: vtsMin, vtsMax: vtsMax, ctsMin: ctsMin, ctsMax: ctsMax, offSet: offSet, limit: limit, source: source, sort: sort, ip: ip), region: region, logger: logger, on: eventLoop)
    }

    /// Waf ip黑白名单查询
    @inlinable
    public func describeIpAccessControl(domain: String, count: UInt64, actionType: UInt64? = nil, vtsMin: UInt64? = nil, vtsMax: UInt64? = nil, ctsMin: UInt64? = nil, ctsMax: UInt64? = nil, offSet: UInt64? = nil, limit: UInt64? = nil, source: String? = nil, sort: String? = nil, ip: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIpAccessControlResponse {
        try await self.describeIpAccessControl(.init(domain: domain, count: count, actionType: actionType, vtsMin: vtsMin, vtsMax: vtsMax, ctsMin: ctsMin, ctsMax: ctsMax, offSet: offSet, limit: limit, source: source, sort: sort, ip: ip), region: region, logger: logger, on: eventLoop)
    }
}
