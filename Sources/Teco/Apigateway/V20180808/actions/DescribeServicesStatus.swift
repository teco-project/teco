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

extension Apigateway {
    /// DescribeServicesStatus请求参数结构体
    public struct DescribeServicesStatusRequest: TCPaginatedRequest {
        /// 返回数量，默认为 20，最大值为 100。
        public let limit: Int64?

        /// 偏移量，默认为 0。
        public let offset: Int64?

        /// 过滤条件。支持ServiceId、ServiceName、NotUsagePlanId、Environment、IpVersion、InstanceId、NetType、EIAMAppId。
        public let filters: [Filter]?

        public init(limit: Int64? = nil, offset: Int64? = nil, filters: [Filter]? = nil) {
            self.limit = limit
            self.offset = offset
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeServicesStatusResponse) -> DescribeServicesStatusRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeServicesStatusRequest(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters)
        }
    }

    /// DescribeServicesStatus返回参数结构体
    public struct DescribeServicesStatusResponse: TCPaginatedResponse {
        /// 服务列表查询结果。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: ServicesStatus?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [Service] {
            self.result?.serviceSet ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result?.totalCount
        }
    }

    /// 查询服务列表状态
    ///
    /// 本接口（DescribeServicesStatus）用于搜索查询某一个服务或多个服务的列表，并返回服务相关的域名、时间等信息。
    @inlinable
    public func describeServicesStatus(_ input: DescribeServicesStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeServicesStatusResponse> {
        self.client.execute(action: "DescribeServicesStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询服务列表状态
    ///
    /// 本接口（DescribeServicesStatus）用于搜索查询某一个服务或多个服务的列表，并返回服务相关的域名、时间等信息。
    @inlinable
    public func describeServicesStatus(_ input: DescribeServicesStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeServicesStatusResponse {
        try await self.client.execute(action: "DescribeServicesStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询服务列表状态
    ///
    /// 本接口（DescribeServicesStatus）用于搜索查询某一个服务或多个服务的列表，并返回服务相关的域名、时间等信息。
    @inlinable
    public func describeServicesStatus(limit: Int64? = nil, offset: Int64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeServicesStatusResponse> {
        let input = DescribeServicesStatusRequest(limit: limit, offset: offset, filters: filters)
        return self.client.execute(action: "DescribeServicesStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询服务列表状态
    ///
    /// 本接口（DescribeServicesStatus）用于搜索查询某一个服务或多个服务的列表，并返回服务相关的域名、时间等信息。
    @inlinable
    public func describeServicesStatus(limit: Int64? = nil, offset: Int64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeServicesStatusResponse {
        let input = DescribeServicesStatusRequest(limit: limit, offset: offset, filters: filters)
        return try await self.client.execute(action: "DescribeServicesStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
