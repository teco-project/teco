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

extension Tem {
    /// DescribeApplications请求参数结构体
    public struct DescribeApplicationsRequest: TCRequestModel {
        /// 命名空间ID
        public let environmentId: String?

        /// 分页Limit
        public let limit: Int64?

        /// 分页offset
        public let offset: Int64?

        /// 来源渠道
        public let sourceChannel: Int64?

        /// 服务id
        public let applicationId: String?

        /// 搜索关键字
        public let keyword: String?

        /// 查询过滤器
        public let filters: [QueryFilter]?

        /// 排序字段
        public let sortInfo: SortType?

        public init(environmentId: String? = nil, limit: Int64? = nil, offset: Int64? = nil, sourceChannel: Int64? = nil, applicationId: String? = nil, keyword: String? = nil, filters: [QueryFilter]? = nil, sortInfo: SortType? = nil) {
            self.environmentId = environmentId
            self.limit = limit
            self.offset = offset
            self.sourceChannel = sourceChannel
            self.applicationId = applicationId
            self.keyword = keyword
            self.filters = filters
            self.sortInfo = sortInfo
        }

        enum CodingKeys: String, CodingKey {
            case environmentId = "EnvironmentId"
            case limit = "Limit"
            case offset = "Offset"
            case sourceChannel = "SourceChannel"
            case applicationId = "ApplicationId"
            case keyword = "Keyword"
            case filters = "Filters"
            case sortInfo = "SortInfo"
        }
    }

    /// DescribeApplications返回参数结构体
    public struct DescribeApplicationsResponse: TCResponseModel {
        /// 返回结果
        public let result: ServicePage

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 获取运行服务列表
    @inlinable
    public func describeApplications(_ input: DescribeApplicationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApplicationsResponse> {
        self.client.execute(action: "DescribeApplications", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取运行服务列表
    @inlinable
    public func describeApplications(_ input: DescribeApplicationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApplicationsResponse {
        try await self.client.execute(action: "DescribeApplications", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取运行服务列表
    @inlinable
    public func describeApplications(environmentId: String? = nil, limit: Int64? = nil, offset: Int64? = nil, sourceChannel: Int64? = nil, applicationId: String? = nil, keyword: String? = nil, filters: [QueryFilter]? = nil, sortInfo: SortType? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApplicationsResponse> {
        let input = DescribeApplicationsRequest(environmentId: environmentId, limit: limit, offset: offset, sourceChannel: sourceChannel, applicationId: applicationId, keyword: keyword, filters: filters, sortInfo: sortInfo)
        return self.client.execute(action: "DescribeApplications", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取运行服务列表
    @inlinable
    public func describeApplications(environmentId: String? = nil, limit: Int64? = nil, offset: Int64? = nil, sourceChannel: Int64? = nil, applicationId: String? = nil, keyword: String? = nil, filters: [QueryFilter]? = nil, sortInfo: SortType? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApplicationsResponse {
        let input = DescribeApplicationsRequest(environmentId: environmentId, limit: limit, offset: offset, sourceChannel: sourceChannel, applicationId: applicationId, keyword: keyword, filters: filters, sortInfo: sortInfo)
        return try await self.client.execute(action: "DescribeApplications", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
