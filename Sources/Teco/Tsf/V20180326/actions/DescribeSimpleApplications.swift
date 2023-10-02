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

extension Tsf {
    /// DescribeSimpleApplications请求参数结构体
    public struct DescribeSimpleApplicationsRequest: TCPaginatedRequest {
        /// 应用ID列表
        public let applicationIdList: [String]?

        /// 应用类型
        public let applicationType: String?

        /// 每页条数
        public let limit: Int64?

        /// 起始偏移量
        public let offset: Int64?

        /// 微服务类型
        public let microserviceType: String?

        /// 资源类型数组
        public let applicationResourceTypeList: [String]?

        /// 通过id和name进行关键词过滤
        public let searchWord: String?

        public let disableProgramAuthCheck: Bool?

        public init(applicationIdList: [String]? = nil, applicationType: String? = nil, limit: Int64? = nil, offset: Int64? = nil, microserviceType: String? = nil, applicationResourceTypeList: [String]? = nil, searchWord: String? = nil, disableProgramAuthCheck: Bool? = nil) {
            self.applicationIdList = applicationIdList
            self.applicationType = applicationType
            self.limit = limit
            self.offset = offset
            self.microserviceType = microserviceType
            self.applicationResourceTypeList = applicationResourceTypeList
            self.searchWord = searchWord
            self.disableProgramAuthCheck = disableProgramAuthCheck
        }

        enum CodingKeys: String, CodingKey {
            case applicationIdList = "ApplicationIdList"
            case applicationType = "ApplicationType"
            case limit = "Limit"
            case offset = "Offset"
            case microserviceType = "MicroserviceType"
            case applicationResourceTypeList = "ApplicationResourceTypeList"
            case searchWord = "SearchWord"
            case disableProgramAuthCheck = "DisableProgramAuthCheck"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeSimpleApplicationsResponse) -> DescribeSimpleApplicationsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(applicationIdList: self.applicationIdList, applicationType: self.applicationType, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), microserviceType: self.microserviceType, applicationResourceTypeList: self.applicationResourceTypeList, searchWord: self.searchWord, disableProgramAuthCheck: self.disableProgramAuthCheck)
        }
    }

    /// DescribeSimpleApplications返回参数结构体
    public struct DescribeSimpleApplicationsResponse: TCPaginatedResponse {
        /// 简单应用分页对象
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: TsfPageSimpleApplication?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned ``SimpleApplication`` list from the paginated response.
        public func getItems() -> [SimpleApplication] {
            self.result?.content ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result?.totalCount
        }
    }

    /// 查询简单应用列表
    @inlinable
    public func describeSimpleApplications(_ input: DescribeSimpleApplicationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSimpleApplicationsResponse> {
        self.client.execute(action: "DescribeSimpleApplications", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询简单应用列表
    @inlinable
    public func describeSimpleApplications(_ input: DescribeSimpleApplicationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSimpleApplicationsResponse {
        try await self.client.execute(action: "DescribeSimpleApplications", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询简单应用列表
    @inlinable
    public func describeSimpleApplications(applicationIdList: [String]? = nil, applicationType: String? = nil, limit: Int64? = nil, offset: Int64? = nil, microserviceType: String? = nil, applicationResourceTypeList: [String]? = nil, searchWord: String? = nil, disableProgramAuthCheck: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSimpleApplicationsResponse> {
        self.describeSimpleApplications(.init(applicationIdList: applicationIdList, applicationType: applicationType, limit: limit, offset: offset, microserviceType: microserviceType, applicationResourceTypeList: applicationResourceTypeList, searchWord: searchWord, disableProgramAuthCheck: disableProgramAuthCheck), region: region, logger: logger, on: eventLoop)
    }

    /// 查询简单应用列表
    @inlinable
    public func describeSimpleApplications(applicationIdList: [String]? = nil, applicationType: String? = nil, limit: Int64? = nil, offset: Int64? = nil, microserviceType: String? = nil, applicationResourceTypeList: [String]? = nil, searchWord: String? = nil, disableProgramAuthCheck: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSimpleApplicationsResponse {
        try await self.describeSimpleApplications(.init(applicationIdList: applicationIdList, applicationType: applicationType, limit: limit, offset: offset, microserviceType: microserviceType, applicationResourceTypeList: applicationResourceTypeList, searchWord: searchWord, disableProgramAuthCheck: disableProgramAuthCheck), region: region, logger: logger, on: eventLoop)
    }

    /// 查询简单应用列表
    @inlinable
    public func describeSimpleApplicationsPaginated(_ input: DescribeSimpleApplicationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [SimpleApplication])> {
        self.client.paginate(input: input, region: region, command: self.describeSimpleApplications, logger: logger, on: eventLoop)
    }

    /// 查询简单应用列表
    @inlinable @discardableResult
    public func describeSimpleApplicationsPaginated(_ input: DescribeSimpleApplicationsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeSimpleApplicationsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeSimpleApplications, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询简单应用列表
    ///
    /// - Returns: `AsyncSequence`s of ``SimpleApplication`` and ``DescribeSimpleApplicationsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeSimpleApplicationsPaginator(_ input: DescribeSimpleApplicationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeSimpleApplicationsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeSimpleApplications, logger: logger, on: eventLoop)
    }
}
