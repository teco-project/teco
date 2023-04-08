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

import TecoCore
import TecoPaginationHelpers

extension Ivld {
    /// DescribeMedias请求参数结构体
    public struct DescribeMediasRequest: TCPaginatedRequest {
        /// 分页序号，从1开始
        public let pageNumber: Int64

        /// 每个分页所包含的元素数量，最大为50
        public let pageSize: Int64

        /// 列举过滤条件，相关限制相见MediaFilter
        public let mediaFilter: MediaFilter?

        /// 返回结果排序信息，By字段只支持CreateTime
        public let sortBy: SortBy?

        public init(pageNumber: Int64, pageSize: Int64, mediaFilter: MediaFilter? = nil, sortBy: SortBy? = nil) {
            self.pageNumber = pageNumber
            self.pageSize = pageSize
            self.mediaFilter = mediaFilter
            self.sortBy = sortBy
        }

        enum CodingKeys: String, CodingKey {
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
            case mediaFilter = "MediaFilter"
            case sortBy = "SortBy"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeMediasResponse) -> DescribeMediasRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeMediasRequest(pageNumber: self.pageNumber + 1, pageSize: self.pageSize, mediaFilter: self.mediaFilter, sortBy: self.sortBy)
        }
    }

    /// DescribeMedias返回参数结构体
    public struct DescribeMediasResponse: TCPaginatedResponse {
        /// 满足过滤条件的媒资视频总数量
        public let totalCount: Int64

        /// 满足过滤条件的媒资信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let mediaInfoSet: [MediaInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case mediaInfoSet = "MediaInfoSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [MediaInfo] {
            self.mediaInfoSet ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 批量描述媒资文件
    ///
    /// 依照输入条件，描述命中的媒资文件信息，包括媒资状态，分辨率，帧率等。
    ///
    /// 请注意，本接口最多支持同时描述**50**个媒资文件
    ///
    /// 如果媒资文件未完成导入，本接口将仅输出媒资文件的状态信息；导入完成后，本接口还将输出媒资文件的其他元信息。
    @inlinable
    public func describeMedias(_ input: DescribeMediasRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMediasResponse> {
        self.client.execute(action: "DescribeMedias", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量描述媒资文件
    ///
    /// 依照输入条件，描述命中的媒资文件信息，包括媒资状态，分辨率，帧率等。
    ///
    /// 请注意，本接口最多支持同时描述**50**个媒资文件
    ///
    /// 如果媒资文件未完成导入，本接口将仅输出媒资文件的状态信息；导入完成后，本接口还将输出媒资文件的其他元信息。
    @inlinable
    public func describeMedias(_ input: DescribeMediasRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMediasResponse {
        try await self.client.execute(action: "DescribeMedias", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量描述媒资文件
    ///
    /// 依照输入条件，描述命中的媒资文件信息，包括媒资状态，分辨率，帧率等。
    ///
    /// 请注意，本接口最多支持同时描述**50**个媒资文件
    ///
    /// 如果媒资文件未完成导入，本接口将仅输出媒资文件的状态信息；导入完成后，本接口还将输出媒资文件的其他元信息。
    @inlinable
    public func describeMedias(pageNumber: Int64, pageSize: Int64, mediaFilter: MediaFilter? = nil, sortBy: SortBy? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMediasResponse> {
        self.describeMedias(.init(pageNumber: pageNumber, pageSize: pageSize, mediaFilter: mediaFilter, sortBy: sortBy), region: region, logger: logger, on: eventLoop)
    }

    /// 批量描述媒资文件
    ///
    /// 依照输入条件，描述命中的媒资文件信息，包括媒资状态，分辨率，帧率等。
    ///
    /// 请注意，本接口最多支持同时描述**50**个媒资文件
    ///
    /// 如果媒资文件未完成导入，本接口将仅输出媒资文件的状态信息；导入完成后，本接口还将输出媒资文件的其他元信息。
    @inlinable
    public func describeMedias(pageNumber: Int64, pageSize: Int64, mediaFilter: MediaFilter? = nil, sortBy: SortBy? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMediasResponse {
        try await self.describeMedias(.init(pageNumber: pageNumber, pageSize: pageSize, mediaFilter: mediaFilter, sortBy: sortBy), region: region, logger: logger, on: eventLoop)
    }

    /// 批量描述媒资文件
    ///
    /// 依照输入条件，描述命中的媒资文件信息，包括媒资状态，分辨率，帧率等。
    ///
    /// 请注意，本接口最多支持同时描述**50**个媒资文件
    ///
    /// 如果媒资文件未完成导入，本接口将仅输出媒资文件的状态信息；导入完成后，本接口还将输出媒资文件的其他元信息。
    @inlinable
    public func describeMediasPaginated(_ input: DescribeMediasRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [MediaInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeMedias, logger: logger, on: eventLoop)
    }

    /// 批量描述媒资文件
    ///
    /// 依照输入条件，描述命中的媒资文件信息，包括媒资状态，分辨率，帧率等。
    ///
    /// 请注意，本接口最多支持同时描述**50**个媒资文件
    ///
    /// 如果媒资文件未完成导入，本接口将仅输出媒资文件的状态信息；导入完成后，本接口还将输出媒资文件的其他元信息。
    @inlinable @discardableResult
    public func describeMediasPaginated(_ input: DescribeMediasRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeMediasResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeMedias, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 批量描述媒资文件
    ///
    /// 依照输入条件，描述命中的媒资文件信息，包括媒资状态，分辨率，帧率等。
    ///
    /// 请注意，本接口最多支持同时描述**50**个媒资文件
    ///
    /// 如果媒资文件未完成导入，本接口将仅输出媒资文件的状态信息；导入完成后，本接口还将输出媒资文件的其他元信息。
    ///
    /// - Returns: `AsyncSequence`s of `MediaInfo` and `DescribeMediasResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeMediasPaginator(_ input: DescribeMediasRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeMediasRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeMedias, logger: logger, on: eventLoop)
    }
}
