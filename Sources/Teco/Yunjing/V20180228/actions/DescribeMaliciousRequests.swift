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

extension Yunjing {
    /// DescribeMaliciousRequests请求参数结构体
    public struct DescribeMaliciousRequestsRequest: TCRequestModel {
        /// 返回数量，默认为10，最大值为100。
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// <li>Status - String - 是否必填：否 - 状态筛选（UN_OPERATED: 待处理 | TRUSTED：已信任 | UN_TRUSTED：已取消信任）</li>
        /// <li>Domain - String - 是否必填：否 - 恶意请求的域名</li>
        /// <li>MachineIp - String - 是否必填：否 - 主机内网IP</li>
        public let filters: [Filter]?

        /// 云镜客户端唯一UUID。
        public let uuid: String?

        public init(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, uuid: String? = nil) {
            self.limit = limit
            self.offset = offset
            self.filters = filters
            self.uuid = uuid
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
            case uuid = "Uuid"
        }
    }

    /// DescribeMaliciousRequests返回参数结构体
    public struct DescribeMaliciousRequestsResponse: TCResponseModel {
        /// 记录总数。
        public let totalCount: UInt64

        /// 恶意请求记录数组。
        public let maliciousRequests: [MaliciousRequest]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case maliciousRequests = "MaliciousRequests"
            case requestId = "RequestId"
        }
    }

    /// 获取恶意请求数据
    ///
    /// 本接口 (DescribeMaliciousRequests) 用于获取恶意请求数据。
    @inlinable
    public func describeMaliciousRequests(_ input: DescribeMaliciousRequestsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMaliciousRequestsResponse> {
        self.client.execute(action: "DescribeMaliciousRequests", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取恶意请求数据
    ///
    /// 本接口 (DescribeMaliciousRequests) 用于获取恶意请求数据。
    @inlinable
    public func describeMaliciousRequests(_ input: DescribeMaliciousRequestsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMaliciousRequestsResponse {
        try await self.client.execute(action: "DescribeMaliciousRequests", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取恶意请求数据
    ///
    /// 本接口 (DescribeMaliciousRequests) 用于获取恶意请求数据。
    @inlinable
    public func describeMaliciousRequests(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, uuid: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMaliciousRequestsResponse> {
        let input = DescribeMaliciousRequestsRequest(limit: limit, offset: offset, filters: filters, uuid: uuid)
        return self.client.execute(action: "DescribeMaliciousRequests", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取恶意请求数据
    ///
    /// 本接口 (DescribeMaliciousRequests) 用于获取恶意请求数据。
    @inlinable
    public func describeMaliciousRequests(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, uuid: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMaliciousRequestsResponse {
        let input = DescribeMaliciousRequestsRequest(limit: limit, offset: offset, filters: filters, uuid: uuid)
        return try await self.client.execute(action: "DescribeMaliciousRequests", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
