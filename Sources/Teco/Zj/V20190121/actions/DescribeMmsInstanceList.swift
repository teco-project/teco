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

import Logging
import NIOCore
import TecoCore
import TecoPaginationHelpers

extension Zj {
    /// DescribeMmsInstanceList请求参数结构体
    public struct DescribeMmsInstanceListRequest: TCPaginatedRequest {
        /// 商户证书
        public let license: String

        /// 偏移量
        public let offset: Int64

        /// 返回数量
        public let limit: Int64

        /// 业务代码
        public let appSubId: String?

        /// 实例标题
        public let title: String?

        public init(license: String, offset: Int64, limit: Int64, appSubId: String? = nil, title: String? = nil) {
            self.license = license
            self.offset = offset
            self.limit = limit
            self.appSubId = appSubId
            self.title = title
        }

        enum CodingKeys: String, CodingKey {
            case license = "License"
            case offset = "Offset"
            case limit = "Limit"
            case appSubId = "AppSubId"
            case title = "Title"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeMmsInstanceListResponse) -> DescribeMmsInstanceListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeMmsInstanceListRequest(license: self.license, offset: self.offset + .init(response.getItems().count), limit: self.limit, appSubId: self.appSubId, title: self.title)
        }
    }

    /// DescribeMmsInstanceList返回参数结构体
    public struct DescribeMmsInstanceListResponse: TCPaginatedResponse {
        /// 彩信实例信息列表返回
        public let data: MmsInstanceInfoList

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [MmsInstanceInfo] {
            self.data.list
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.data.total
        }
    }

    /// 获取彩信实例列表
    @inlinable
    public func describeMmsInstanceList(_ input: DescribeMmsInstanceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMmsInstanceListResponse> {
        self.client.execute(action: "DescribeMmsInstanceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取彩信实例列表
    @inlinable
    public func describeMmsInstanceList(_ input: DescribeMmsInstanceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMmsInstanceListResponse {
        try await self.client.execute(action: "DescribeMmsInstanceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取彩信实例列表
    @inlinable
    public func describeMmsInstanceList(license: String, offset: Int64, limit: Int64, appSubId: String? = nil, title: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMmsInstanceListResponse> {
        self.describeMmsInstanceList(.init(license: license, offset: offset, limit: limit, appSubId: appSubId, title: title), region: region, logger: logger, on: eventLoop)
    }

    /// 获取彩信实例列表
    @inlinable
    public func describeMmsInstanceList(license: String, offset: Int64, limit: Int64, appSubId: String? = nil, title: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMmsInstanceListResponse {
        try await self.describeMmsInstanceList(.init(license: license, offset: offset, limit: limit, appSubId: appSubId, title: title), region: region, logger: logger, on: eventLoop)
    }

    /// 获取彩信实例列表
    @inlinable
    public func describeMmsInstanceListPaginated(_ input: DescribeMmsInstanceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [MmsInstanceInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeMmsInstanceList, logger: logger, on: eventLoop)
    }

    /// 获取彩信实例列表
    @inlinable @discardableResult
    public func describeMmsInstanceListPaginated(_ input: DescribeMmsInstanceListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeMmsInstanceListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeMmsInstanceList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取彩信实例列表
    ///
    /// - Returns: `AsyncSequence`s of `MmsInstanceInfo` and `DescribeMmsInstanceListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeMmsInstanceListPaginator(_ input: DescribeMmsInstanceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeMmsInstanceListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeMmsInstanceList, logger: logger, on: eventLoop)
    }
}
