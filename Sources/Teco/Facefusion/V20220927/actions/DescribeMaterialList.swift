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

extension Facefusion {
    /// DescribeMaterialList请求参数结构体
    public struct DescribeMaterialListRequest: TCPaginatedRequest {
        /// 活动Id
        public let activityId: String

        /// 素材Id
        public let materialId: String?

        /// 每次拉取条数
        public let limit: Int64?

        /// 偏移量
        public let offset: Int64?

        public init(activityId: String, materialId: String? = nil, limit: Int64? = nil, offset: Int64? = nil) {
            self.activityId = activityId
            self.materialId = materialId
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case activityId = "ActivityId"
            case materialId = "MaterialId"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeMaterialListResponse) -> DescribeMaterialListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeMaterialListRequest(activityId: self.activityId, materialId: self.materialId, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeMaterialList返回参数结构体
    public struct DescribeMaterialListResponse: TCPaginatedResponse {
        /// 素材列表数据
        public let materialInfos: [PublicMaterialInfos]

        /// 素材条数
        public let count: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case materialInfos = "MaterialInfos"
            case count = "Count"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [PublicMaterialInfos] {
            self.materialInfos
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.count
        }
    }

    /// 查询素材列表
    ///
    /// 通常通过腾讯云人脸融合的控制台可以查看到素材相关的参数数据，可以满足使用。本接口返回活动的素材数据，包括素材状态等。用于用户通过Api查看素材相关数据，方便使用。
    @inlinable
    public func describeMaterialList(_ input: DescribeMaterialListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMaterialListResponse> {
        self.client.execute(action: "DescribeMaterialList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询素材列表
    ///
    /// 通常通过腾讯云人脸融合的控制台可以查看到素材相关的参数数据，可以满足使用。本接口返回活动的素材数据，包括素材状态等。用于用户通过Api查看素材相关数据，方便使用。
    @inlinable
    public func describeMaterialList(_ input: DescribeMaterialListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMaterialListResponse {
        try await self.client.execute(action: "DescribeMaterialList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询素材列表
    ///
    /// 通常通过腾讯云人脸融合的控制台可以查看到素材相关的参数数据，可以满足使用。本接口返回活动的素材数据，包括素材状态等。用于用户通过Api查看素材相关数据，方便使用。
    @inlinable
    public func describeMaterialList(activityId: String, materialId: String? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMaterialListResponse> {
        let input = DescribeMaterialListRequest(activityId: activityId, materialId: materialId, limit: limit, offset: offset)
        return self.client.execute(action: "DescribeMaterialList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询素材列表
    ///
    /// 通常通过腾讯云人脸融合的控制台可以查看到素材相关的参数数据，可以满足使用。本接口返回活动的素材数据，包括素材状态等。用于用户通过Api查看素材相关数据，方便使用。
    @inlinable
    public func describeMaterialList(activityId: String, materialId: String? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMaterialListResponse {
        let input = DescribeMaterialListRequest(activityId: activityId, materialId: materialId, limit: limit, offset: offset)
        return try await self.client.execute(action: "DescribeMaterialList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
