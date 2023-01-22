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

extension Anicloud {
    /// QueryResource请求参数结构体
    public struct QueryResourceRequest: TCRequestModel {
        /// 0: sdk 1:material
        public let type: Int64

        /// 分页起始页
        public let pageNumber: Int64

        /// 分页大小
        public let pageSize: Int64

        public init(type: Int64, pageNumber: Int64, pageSize: Int64) {
            self.type = type
            self.pageNumber = pageNumber
            self.pageSize = pageSize
        }

        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
        }
    }

    /// QueryResource返回参数结构体
    public struct QueryResourceResponse: TCResponseModel {
        /// 资源信息列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resources: [Resource]?

        /// 总量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case resources = "Resources"
            case total = "Total"
            case requestId = "RequestId"
        }
    }

    /// 查询购买资源
    @inlinable
    public func queryResource(_ input: QueryResourceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryResourceResponse> {
        self.client.execute(action: "QueryResource", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询购买资源
    @inlinable
    public func queryResource(_ input: QueryResourceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryResourceResponse {
        try await self.client.execute(action: "QueryResource", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询购买资源
    @inlinable
    public func queryResource(type: Int64, pageNumber: Int64, pageSize: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryResourceResponse> {
        self.queryResource(QueryResourceRequest(type: type, pageNumber: pageNumber, pageSize: pageSize), region: region, logger: logger, on: eventLoop)
    }

    /// 查询购买资源
    @inlinable
    public func queryResource(type: Int64, pageNumber: Int64, pageSize: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryResourceResponse {
        try await self.queryResource(QueryResourceRequest(type: type, pageNumber: pageNumber, pageSize: pageSize), region: region, logger: logger, on: eventLoop)
    }
}
