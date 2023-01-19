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

extension Iotexplorer {
    /// GetBatchProductionsList请求参数结构体
    public struct GetBatchProductionsListRequest: TCRequestModel {
        /// 项目ID
        public let projectId: String

        /// 偏移量
        public let offset: Int64?

        /// 返回数量限制
        public let limit: Int64?

        public init(projectId: String, offset: Int64? = nil, limit: Int64? = nil) {
            self.projectId = projectId
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// GetBatchProductionsList返回参数结构体
    public struct GetBatchProductionsListResponse: TCResponseModel {
        /// 返回详情信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let batchProductions: [BatchProductionInfo]?

        /// 返回数量。
        public let totalCnt: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case batchProductions = "BatchProductions"
            case totalCnt = "TotalCnt"
            case requestId = "RequestId"
        }
    }

    /// 列出量产数据列表
    ///
    /// 列出量产数据列表信息。
    @inlinable
    public func getBatchProductionsList(_ input: GetBatchProductionsListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetBatchProductionsListResponse> {
        self.client.execute(action: "GetBatchProductionsList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 列出量产数据列表
    ///
    /// 列出量产数据列表信息。
    @inlinable
    public func getBatchProductionsList(_ input: GetBatchProductionsListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetBatchProductionsListResponse {
        try await self.client.execute(action: "GetBatchProductionsList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 列出量产数据列表
    ///
    /// 列出量产数据列表信息。
    @inlinable
    public func getBatchProductionsList(projectId: String, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetBatchProductionsListResponse> {
        self.getBatchProductionsList(GetBatchProductionsListRequest(projectId: projectId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 列出量产数据列表
    ///
    /// 列出量产数据列表信息。
    @inlinable
    public func getBatchProductionsList(projectId: String, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetBatchProductionsListResponse {
        try await self.getBatchProductionsList(GetBatchProductionsListRequest(projectId: projectId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }
}
