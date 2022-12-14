//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Apigateway {
    /// DescribeApiAppsStatus请求参数结构体
    public struct DescribeApiAppsStatusRequest: TCRequestModel {
        /// 返回数量，默认为 20，最大值为 100。
        public let limit: Int64?

        /// 偏移量，默认为 0。
        public let offset: Int64?

        /// 过滤条件。支持ApiAppId、ApiAppName、KeyWord（ 可以匹配name或者ID）。
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
    }

    /// DescribeApiAppsStatus返回参数结构体
    public struct DescribeApiAppsStatusResponse: TCResponseModel {
        /// 应用列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: ApiAppInfos?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 查询应用列表
    ///
    /// 本接口（DescribeApiAppsStatus）查询应用列表。
    @inlinable
    public func describeApiAppsStatus(_ input: DescribeApiAppsStatusRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeApiAppsStatusResponse > {
        self.client.execute(action: "DescribeApiAppsStatus", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询应用列表
    ///
    /// 本接口（DescribeApiAppsStatus）查询应用列表。
    @inlinable
    public func describeApiAppsStatus(_ input: DescribeApiAppsStatusRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApiAppsStatusResponse {
        try await self.client.execute(action: "DescribeApiAppsStatus", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询应用列表
    ///
    /// 本接口（DescribeApiAppsStatus）查询应用列表。
    @inlinable
    public func describeApiAppsStatus(limit: Int64? = nil, offset: Int64? = nil, filters: [Filter]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeApiAppsStatusResponse > {
        self.describeApiAppsStatus(DescribeApiAppsStatusRequest(limit: limit, offset: offset, filters: filters), logger: logger, on: eventLoop)
    }

    /// 查询应用列表
    ///
    /// 本接口（DescribeApiAppsStatus）查询应用列表。
    @inlinable
    public func describeApiAppsStatus(limit: Int64? = nil, offset: Int64? = nil, filters: [Filter]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApiAppsStatusResponse {
        try await self.describeApiAppsStatus(DescribeApiAppsStatusRequest(limit: limit, offset: offset, filters: filters), logger: logger, on: eventLoop)
    }
}
