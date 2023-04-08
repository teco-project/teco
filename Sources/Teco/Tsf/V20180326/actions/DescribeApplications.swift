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

extension Tsf {
    /// DescribeApplications请求参数结构体
    public struct DescribeApplicationsRequest: TCPaginatedRequest {
        /// 搜索字段
        public let searchWord: String?

        /// 排序字段
        public let orderBy: String?

        /// 排序类型
        public let orderType: Int64?

        /// 偏移量
        public let offset: Int64?

        /// 分页个数
        public let limit: Int64?

        /// 应用类型
        public let applicationType: String?

        /// 应用的微服务类型
        public let microserviceType: String?

        /// 应用资源类型数组
        public let applicationResourceTypeList: [String]?

        /// IdList
        public let applicationIdList: [String]?

        public init(searchWord: String? = nil, orderBy: String? = nil, orderType: Int64? = nil, offset: Int64? = nil, limit: Int64? = nil, applicationType: String? = nil, microserviceType: String? = nil, applicationResourceTypeList: [String]? = nil, applicationIdList: [String]? = nil) {
            self.searchWord = searchWord
            self.orderBy = orderBy
            self.orderType = orderType
            self.offset = offset
            self.limit = limit
            self.applicationType = applicationType
            self.microserviceType = microserviceType
            self.applicationResourceTypeList = applicationResourceTypeList
            self.applicationIdList = applicationIdList
        }

        enum CodingKeys: String, CodingKey {
            case searchWord = "SearchWord"
            case orderBy = "OrderBy"
            case orderType = "OrderType"
            case offset = "Offset"
            case limit = "Limit"
            case applicationType = "ApplicationType"
            case microserviceType = "MicroserviceType"
            case applicationResourceTypeList = "ApplicationResourceTypeList"
            case applicationIdList = "ApplicationIdList"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeApplicationsResponse) -> DescribeApplicationsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeApplicationsRequest(searchWord: self.searchWord, orderBy: self.orderBy, orderType: self.orderType, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, applicationType: self.applicationType, microserviceType: self.microserviceType, applicationResourceTypeList: self.applicationResourceTypeList, applicationIdList: self.applicationIdList)
        }
    }

    /// DescribeApplications返回参数结构体
    public struct DescribeApplicationsResponse: TCPaginatedResponse {
        /// 应用分页列表信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: TsfPageApplication?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ApplicationForPage] {
            self.result?.content ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result?.totalCount
        }
    }

    /// 获取应用列表
    @inlinable
    public func describeApplications(_ input: DescribeApplicationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApplicationsResponse> {
        self.client.execute(action: "DescribeApplications", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取应用列表
    @inlinable
    public func describeApplications(_ input: DescribeApplicationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApplicationsResponse {
        try await self.client.execute(action: "DescribeApplications", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取应用列表
    @inlinable
    public func describeApplications(searchWord: String? = nil, orderBy: String? = nil, orderType: Int64? = nil, offset: Int64? = nil, limit: Int64? = nil, applicationType: String? = nil, microserviceType: String? = nil, applicationResourceTypeList: [String]? = nil, applicationIdList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApplicationsResponse> {
        self.describeApplications(.init(searchWord: searchWord, orderBy: orderBy, orderType: orderType, offset: offset, limit: limit, applicationType: applicationType, microserviceType: microserviceType, applicationResourceTypeList: applicationResourceTypeList, applicationIdList: applicationIdList), region: region, logger: logger, on: eventLoop)
    }

    /// 获取应用列表
    @inlinable
    public func describeApplications(searchWord: String? = nil, orderBy: String? = nil, orderType: Int64? = nil, offset: Int64? = nil, limit: Int64? = nil, applicationType: String? = nil, microserviceType: String? = nil, applicationResourceTypeList: [String]? = nil, applicationIdList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApplicationsResponse {
        try await self.describeApplications(.init(searchWord: searchWord, orderBy: orderBy, orderType: orderType, offset: offset, limit: limit, applicationType: applicationType, microserviceType: microserviceType, applicationResourceTypeList: applicationResourceTypeList, applicationIdList: applicationIdList), region: region, logger: logger, on: eventLoop)
    }

    /// 获取应用列表
    @inlinable
    public func describeApplicationsPaginated(_ input: DescribeApplicationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ApplicationForPage])> {
        self.client.paginate(input: input, region: region, command: self.describeApplications, logger: logger, on: eventLoop)
    }

    /// 获取应用列表
    @inlinable @discardableResult
    public func describeApplicationsPaginated(_ input: DescribeApplicationsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeApplicationsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeApplications, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取应用列表
    ///
    /// - Returns: `AsyncSequence`s of `ApplicationForPage` and `DescribeApplicationsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeApplicationsPaginator(_ input: DescribeApplicationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeApplicationsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeApplications, logger: logger, on: eventLoop)
    }
}
