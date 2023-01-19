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

extension Ssl {
    /// DescribePackages请求参数结构体
    public struct DescribePackagesRequest: TCRequestModel {
        /// 偏移量，默认0。
        public let offset: UInt64?

        /// 限制数目，默认20。
        public let limit: UInt64?

        /// 按状态筛选。
        public let status: String?

        /// 按过期时间升序或降序排列。
        public let expireTime: String?

        /// 按权益包ID搜索。
        public let packageId: String?

        /// 按权益包类型搜索。
        public let type: String?

        /// 子产品编号
        public let pid: Int64?

        public init(offset: UInt64? = nil, limit: UInt64? = nil, status: String? = nil, expireTime: String? = nil, packageId: String? = nil, type: String? = nil, pid: Int64? = nil) {
            self.offset = offset
            self.limit = limit
            self.status = status
            self.expireTime = expireTime
            self.packageId = packageId
            self.type = type
            self.pid = pid
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case status = "Status"
            case expireTime = "ExpireTime"
            case packageId = "PackageId"
            case type = "Type"
            case pid = "Pid"
        }
    }

    /// DescribePackages返回参数结构体
    public struct DescribePackagesResponse: TCResponseModel {
        /// 权益包列表。
        public let packages: [PackageInfo]

        /// 总条数。
        public let totalCount: UInt64

        /// 权益点总余额。
        public let totalBalance: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case packages = "Packages"
            case totalCount = "TotalCount"
            case totalBalance = "TotalBalance"
            case requestId = "RequestId"
        }
    }

    /// 获得权益包列表
    @inlinable
    public func describePackages(_ input: DescribePackagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePackagesResponse> {
        self.client.execute(action: "DescribePackages", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获得权益包列表
    @inlinable
    public func describePackages(_ input: DescribePackagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePackagesResponse {
        try await self.client.execute(action: "DescribePackages", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获得权益包列表
    @inlinable
    public func describePackages(offset: UInt64? = nil, limit: UInt64? = nil, status: String? = nil, expireTime: String? = nil, packageId: String? = nil, type: String? = nil, pid: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePackagesResponse> {
        self.describePackages(DescribePackagesRequest(offset: offset, limit: limit, status: status, expireTime: expireTime, packageId: packageId, type: type, pid: pid), region: region, logger: logger, on: eventLoop)
    }

    /// 获得权益包列表
    @inlinable
    public func describePackages(offset: UInt64? = nil, limit: UInt64? = nil, status: String? = nil, expireTime: String? = nil, packageId: String? = nil, type: String? = nil, pid: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePackagesResponse {
        try await self.describePackages(DescribePackagesRequest(offset: offset, limit: limit, status: status, expireTime: expireTime, packageId: packageId, type: type, pid: pid), region: region, logger: logger, on: eventLoop)
    }
}
