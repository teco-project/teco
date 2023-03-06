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

extension Iotvideoindustry {
    /// DescribeScenes请求参数结构体
    public struct DescribeScenesRequest: TCPaginatedRequest {
        /// 条数限制
        public let limit: Int64

        /// 偏移
        public let offset: Int64?

        public init(limit: Int64, offset: Int64? = nil) {
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeScenesResponse) -> DescribeScenesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeScenesRequest(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeScenes返回参数结构体
    public struct DescribeScenesResponse: TCPaginatedResponse {
        /// 场景总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: Int64?

        /// 场景列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let list: [SceneItem]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case list = "List"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [SceneItem] {
            self.list ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 获取场景列表
    @inlinable
    public func describeScenes(_ input: DescribeScenesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScenesResponse> {
        self.client.execute(action: "DescribeScenes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取场景列表
    @inlinable
    public func describeScenes(_ input: DescribeScenesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScenesResponse {
        try await self.client.execute(action: "DescribeScenes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取场景列表
    @inlinable
    public func describeScenes(limit: Int64, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScenesResponse> {
        let input = DescribeScenesRequest(limit: limit, offset: offset)
        return self.client.execute(action: "DescribeScenes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取场景列表
    @inlinable
    public func describeScenes(limit: Int64, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScenesResponse {
        let input = DescribeScenesRequest(limit: limit, offset: offset)
        return try await self.client.execute(action: "DescribeScenes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
