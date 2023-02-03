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

extension Waf {
    /// DescribeIpHitItems请求参数结构体
    public struct DescribeIpHitItemsRequest: TCRequestModel {
        /// 域名
        public let domain: String

        /// 计数标识
        public let count: Int64

        /// 类别
        public let category: String

        /// 有效时间最小时间戳
        public let vtsMin: UInt64?

        /// 有效时间最大时间戳
        public let vtsMax: UInt64?

        /// 创建时间最小时间戳
        public let ctsMin: UInt64?

        /// 创建时间最大时间戳
        public let ctsMax: UInt64?

        /// 偏移参数
        public let skip: UInt64?

        /// 限制数目
        public let limit: UInt64?

        /// 策略名称
        public let name: String?

        /// 排序参数
        public let sort: String?

        /// IP
        public let ip: String?

        public init(domain: String, count: Int64, category: String, vtsMin: UInt64? = nil, vtsMax: UInt64? = nil, ctsMin: UInt64? = nil, ctsMax: UInt64? = nil, skip: UInt64? = nil, limit: UInt64? = nil, name: String? = nil, sort: String? = nil, ip: String? = nil) {
            self.domain = domain
            self.count = count
            self.category = category
            self.vtsMin = vtsMin
            self.vtsMax = vtsMax
            self.ctsMin = ctsMin
            self.ctsMax = ctsMax
            self.skip = skip
            self.limit = limit
            self.name = name
            self.sort = sort
            self.ip = ip
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case count = "Count"
            case category = "Category"
            case vtsMin = "VtsMin"
            case vtsMax = "VtsMax"
            case ctsMin = "CtsMin"
            case ctsMax = "CtsMax"
            case skip = "Skip"
            case limit = "Limit"
            case name = "Name"
            case sort = "Sort"
            case ip = "Ip"
        }
    }

    /// DescribeIpHitItems返回参数结构体
    public struct DescribeIpHitItemsResponse: TCResponseModel {
        /// 结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: IpHitItemsData?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// Waf  IP封堵状态查询
    @inlinable
    public func describeIpHitItems(_ input: DescribeIpHitItemsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIpHitItemsResponse> {
        self.client.execute(action: "DescribeIpHitItems", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Waf  IP封堵状态查询
    @inlinable
    public func describeIpHitItems(_ input: DescribeIpHitItemsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIpHitItemsResponse {
        try await self.client.execute(action: "DescribeIpHitItems", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// Waf  IP封堵状态查询
    @inlinable
    public func describeIpHitItems(domain: String, count: Int64, category: String, vtsMin: UInt64? = nil, vtsMax: UInt64? = nil, ctsMin: UInt64? = nil, ctsMax: UInt64? = nil, skip: UInt64? = nil, limit: UInt64? = nil, name: String? = nil, sort: String? = nil, ip: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIpHitItemsResponse> {
        let input = DescribeIpHitItemsRequest(domain: domain, count: count, category: category, vtsMin: vtsMin, vtsMax: vtsMax, ctsMin: ctsMin, ctsMax: ctsMax, skip: skip, limit: limit, name: name, sort: sort, ip: ip)
        return self.client.execute(action: "DescribeIpHitItems", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Waf  IP封堵状态查询
    @inlinable
    public func describeIpHitItems(domain: String, count: Int64, category: String, vtsMin: UInt64? = nil, vtsMax: UInt64? = nil, ctsMin: UInt64? = nil, ctsMax: UInt64? = nil, skip: UInt64? = nil, limit: UInt64? = nil, name: String? = nil, sort: String? = nil, ip: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIpHitItemsResponse {
        let input = DescribeIpHitItemsRequest(domain: domain, count: count, category: category, vtsMin: vtsMin, vtsMax: vtsMax, ctsMin: ctsMin, ctsMax: ctsMax, skip: skip, limit: limit, name: name, sort: sort, ip: ip)
        return try await self.client.execute(action: "DescribeIpHitItems", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
