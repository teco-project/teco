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

import TecoPaginationHelpers

extension Clb {
    /// DescribeCustomizedConfigAssociateList请求参数结构体
    public struct DescribeCustomizedConfigAssociateListRequest: TCPaginatedRequest {
        /// 配置ID
        public let uconfigId: String?

        /// 拉取绑定关系列表开始位置，默认值 0
        public let offset: Int64?

        /// 拉取绑定关系列表数目，默认值 20
        public let limit: Int64?

        /// 搜索域名
        public let domain: String?

        public init(uconfigId: String? = nil, offset: Int64? = nil, limit: Int64? = nil, domain: String? = nil) {
            self.uconfigId = uconfigId
            self.offset = offset
            self.limit = limit
            self.domain = domain
        }

        enum CodingKeys: String, CodingKey {
            case uconfigId = "UconfigId"
            case offset = "Offset"
            case limit = "Limit"
            case domain = "Domain"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeCustomizedConfigAssociateListResponse) -> DescribeCustomizedConfigAssociateListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeCustomizedConfigAssociateListRequest(uconfigId: self.uconfigId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, domain: self.domain)
        }
    }

    /// DescribeCustomizedConfigAssociateList返回参数结构体
    public struct DescribeCustomizedConfigAssociateListResponse: TCPaginatedResponse {
        /// 绑定关系列表
        public let bindList: [BindDetailItem]

        /// 绑定关系总数目
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case bindList = "BindList"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [BindDetailItem] {
            self.bindList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 拉取配置绑定的server或location。
    ///
    /// 拉取配置绑定的 server 或 location，如果 domain 存在，结果将根据 domain 过滤。或拉取配置绑定的 loadbalancer。
    @inlinable
    public func describeCustomizedConfigAssociateList(_ input: DescribeCustomizedConfigAssociateListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCustomizedConfigAssociateListResponse> {
        self.client.execute(action: "DescribeCustomizedConfigAssociateList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 拉取配置绑定的server或location。
    ///
    /// 拉取配置绑定的 server 或 location，如果 domain 存在，结果将根据 domain 过滤。或拉取配置绑定的 loadbalancer。
    @inlinable
    public func describeCustomizedConfigAssociateList(_ input: DescribeCustomizedConfigAssociateListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCustomizedConfigAssociateListResponse {
        try await self.client.execute(action: "DescribeCustomizedConfigAssociateList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 拉取配置绑定的server或location。
    ///
    /// 拉取配置绑定的 server 或 location，如果 domain 存在，结果将根据 domain 过滤。或拉取配置绑定的 loadbalancer。
    @inlinable
    public func describeCustomizedConfigAssociateList(uconfigId: String? = nil, offset: Int64? = nil, limit: Int64? = nil, domain: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCustomizedConfigAssociateListResponse> {
        let input = DescribeCustomizedConfigAssociateListRequest(uconfigId: uconfigId, offset: offset, limit: limit, domain: domain)
        return self.client.execute(action: "DescribeCustomizedConfigAssociateList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 拉取配置绑定的server或location。
    ///
    /// 拉取配置绑定的 server 或 location，如果 domain 存在，结果将根据 domain 过滤。或拉取配置绑定的 loadbalancer。
    @inlinable
    public func describeCustomizedConfigAssociateList(uconfigId: String? = nil, offset: Int64? = nil, limit: Int64? = nil, domain: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCustomizedConfigAssociateListResponse {
        let input = DescribeCustomizedConfigAssociateListRequest(uconfigId: uconfigId, offset: offset, limit: limit, domain: domain)
        return try await self.client.execute(action: "DescribeCustomizedConfigAssociateList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
