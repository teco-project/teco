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
    /// DescribeAutoDenyIP请求参数结构体
    public struct DescribeAutoDenyIPRequest: TCRequestModel {
        /// 域名
        public let domain: String

        /// 查询IP自动封禁状态
        public let ip: String?

        /// 计数标识
        public let count: Int64?

        /// 类别
        public let category: String?

        /// 有效时间最小时间戳
        public let vtsMin: UInt64?

        /// 有效时间最大时间戳
        public let vtsMax: UInt64?

        /// 创建时间最小时间戳
        public let ctsMin: UInt64?

        /// 创建时间最大时间戳
        public let ctsMax: UInt64?

        /// 偏移量
        public let skip: UInt64?

        /// 限制条数
        public let limit: UInt64?

        /// 策略名字
        public let name: String?

        /// 排序参数
        public let sort: String?

        public init(domain: String, ip: String? = nil, count: Int64? = nil, category: String? = nil, vtsMin: UInt64? = nil, vtsMax: UInt64? = nil, ctsMin: UInt64? = nil, ctsMax: UInt64? = nil, skip: UInt64? = nil, limit: UInt64? = nil, name: String? = nil, sort: String? = nil) {
            self.domain = domain
            self.ip = ip
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
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case ip = "Ip"
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
        }
    }

    /// DescribeAutoDenyIP返回参数结构体
    public struct DescribeAutoDenyIPResponse: TCResponseModel {
        /// 查询IP封禁状态返回结果
        public let data: IpHitItemsData

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 描述WAF自动封禁IP详情
    ///
    /// 描述WAF自动封禁IP详情,对齐自动封堵状态
    @inlinable
    public func describeAutoDenyIP(_ input: DescribeAutoDenyIPRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAutoDenyIPResponse> {
        self.client.execute(action: "DescribeAutoDenyIP", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 描述WAF自动封禁IP详情
    ///
    /// 描述WAF自动封禁IP详情,对齐自动封堵状态
    @inlinable
    public func describeAutoDenyIP(_ input: DescribeAutoDenyIPRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAutoDenyIPResponse {
        try await self.client.execute(action: "DescribeAutoDenyIP", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 描述WAF自动封禁IP详情
    ///
    /// 描述WAF自动封禁IP详情,对齐自动封堵状态
    @inlinable
    public func describeAutoDenyIP(domain: String, ip: String? = nil, count: Int64? = nil, category: String? = nil, vtsMin: UInt64? = nil, vtsMax: UInt64? = nil, ctsMin: UInt64? = nil, ctsMax: UInt64? = nil, skip: UInt64? = nil, limit: UInt64? = nil, name: String? = nil, sort: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAutoDenyIPResponse> {
        self.describeAutoDenyIP(DescribeAutoDenyIPRequest(domain: domain, ip: ip, count: count, category: category, vtsMin: vtsMin, vtsMax: vtsMax, ctsMin: ctsMin, ctsMax: ctsMax, skip: skip, limit: limit, name: name, sort: sort), region: region, logger: logger, on: eventLoop)
    }

    /// 描述WAF自动封禁IP详情
    ///
    /// 描述WAF自动封禁IP详情,对齐自动封堵状态
    @inlinable
    public func describeAutoDenyIP(domain: String, ip: String? = nil, count: Int64? = nil, category: String? = nil, vtsMin: UInt64? = nil, vtsMax: UInt64? = nil, ctsMin: UInt64? = nil, ctsMax: UInt64? = nil, skip: UInt64? = nil, limit: UInt64? = nil, name: String? = nil, sort: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAutoDenyIPResponse {
        try await self.describeAutoDenyIP(DescribeAutoDenyIPRequest(domain: domain, ip: ip, count: count, category: category, vtsMin: vtsMin, vtsMax: vtsMax, ctsMin: ctsMin, ctsMax: ctsMax, skip: skip, limit: limit, name: name, sort: sort), region: region, logger: logger, on: eventLoop)
    }
}
