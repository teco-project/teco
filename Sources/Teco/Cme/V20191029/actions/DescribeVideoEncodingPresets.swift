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

extension Cme {
    /// DescribeVideoEncodingPresets请求参数结构体
    public struct DescribeVideoEncodingPresetsRequest: TCPaginatedRequest {
        /// 平台名称，指定访问的平台。
        public let platform: String

        /// 要查询的配置 ID 列表。填写该参数则按照配置 ID 进行查询。
        public let ids: [UInt64]?

        /// 分页大小，默认20。最大值50。
        public let limit: UInt64?

        /// 分页起始，默认0。
        public let offset: UInt64?

        public init(platform: String, ids: [UInt64]? = nil, limit: UInt64? = nil, offset: UInt64? = nil) {
            self.platform = platform
            self.ids = ids
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case platform = "Platform"
            case ids = "Ids"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeVideoEncodingPresetsResponse) -> DescribeVideoEncodingPresetsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeVideoEncodingPresetsRequest(platform: self.platform, ids: self.ids, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeVideoEncodingPresets返回参数结构体
    public struct DescribeVideoEncodingPresetsResponse: TCPaginatedResponse {
        /// 符合条件的编码配置总个数。
        public let totalCount: UInt64

        /// 视频编码配置信息。
        public let videoEncodingPresetSet: [VideoEncodingPreset]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case videoEncodingPresetSet = "VideoEncodingPresetSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [VideoEncodingPreset] {
            self.videoEncodingPresetSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询视频编码配置
    ///
    /// 查询视频编码配置信息。
    @inlinable
    public func describeVideoEncodingPresets(_ input: DescribeVideoEncodingPresetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVideoEncodingPresetsResponse> {
        self.client.execute(action: "DescribeVideoEncodingPresets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询视频编码配置
    ///
    /// 查询视频编码配置信息。
    @inlinable
    public func describeVideoEncodingPresets(_ input: DescribeVideoEncodingPresetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVideoEncodingPresetsResponse {
        try await self.client.execute(action: "DescribeVideoEncodingPresets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询视频编码配置
    ///
    /// 查询视频编码配置信息。
    @inlinable
    public func describeVideoEncodingPresets(platform: String, ids: [UInt64]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVideoEncodingPresetsResponse> {
        let input = DescribeVideoEncodingPresetsRequest(platform: platform, ids: ids, limit: limit, offset: offset)
        return self.client.execute(action: "DescribeVideoEncodingPresets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询视频编码配置
    ///
    /// 查询视频编码配置信息。
    @inlinable
    public func describeVideoEncodingPresets(platform: String, ids: [UInt64]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVideoEncodingPresetsResponse {
        let input = DescribeVideoEncodingPresetsRequest(platform: platform, ids: ids, limit: limit, offset: offset)
        return try await self.client.execute(action: "DescribeVideoEncodingPresets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询视频编码配置
    ///
    /// 查询视频编码配置信息。
    @inlinable
    public func describeVideoEncodingPresetsPaginated(_ input: DescribeVideoEncodingPresetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [VideoEncodingPreset])> {
        self.client.paginate(input: input, region: region, command: self.describeVideoEncodingPresets, logger: logger, on: eventLoop)
    }

    /// 查询视频编码配置
    ///
    /// 查询视频编码配置信息。
    @inlinable @discardableResult
    public func describeVideoEncodingPresetsPaginated(_ input: DescribeVideoEncodingPresetsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeVideoEncodingPresetsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeVideoEncodingPresets, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询视频编码配置
    ///
    /// 查询视频编码配置信息。
    @inlinable
    public func describeVideoEncodingPresetsPaginator(_ input: DescribeVideoEncodingPresetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeVideoEncodingPresetsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeVideoEncodingPresets, logger: logger, on: eventLoop)
    }
}
