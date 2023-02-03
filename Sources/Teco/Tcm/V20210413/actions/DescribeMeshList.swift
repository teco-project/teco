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

extension Tcm {
    /// DescribeMeshList请求参数结构体
    public struct DescribeMeshListRequest: TCRequestModel {
        /// 过滤条件
        public let filters: [Filter]?

        /// 分页限制
        public let limit: Int64?

        /// 分页偏移
        public let offset: Int64?

        public init(filters: [Filter]? = nil, limit: Int64? = nil, offset: Int64? = nil) {
            self.filters = filters
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case limit = "Limit"
            case offset = "Offset"
        }
    }

    /// DescribeMeshList返回参数结构体
    public struct DescribeMeshListResponse: TCResponseModel {
        /// 查询到的网格信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let meshList: [Mesh]?

        /// 总数
        public let total: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case meshList = "MeshList"
            case total = "Total"
            case requestId = "RequestId"
        }
    }

    /// 查询网格列表
    @inlinable
    public func describeMeshList(_ input: DescribeMeshListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMeshListResponse> {
        self.client.execute(action: "DescribeMeshList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询网格列表
    @inlinable
    public func describeMeshList(_ input: DescribeMeshListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMeshListResponse {
        try await self.client.execute(action: "DescribeMeshList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询网格列表
    @inlinable
    public func describeMeshList(filters: [Filter]? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMeshListResponse> {
        let input = DescribeMeshListRequest(filters: filters, limit: limit, offset: offset)
        return self.client.execute(action: "DescribeMeshList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询网格列表
    @inlinable
    public func describeMeshList(filters: [Filter]? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMeshListResponse {
        let input = DescribeMeshListRequest(filters: filters, limit: limit, offset: offset)
        return try await self.client.execute(action: "DescribeMeshList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
