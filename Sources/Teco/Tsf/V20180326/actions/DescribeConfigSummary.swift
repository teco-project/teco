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

extension Tsf {
    /// DescribeConfigSummary请求参数结构体
    public struct DescribeConfigSummaryRequest: TCPaginatedRequest {
        /// 应用ID，不传入时查询全量
        public let applicationId: String?

        /// 查询关键字，模糊查询：应用名称，配置项名称，不传入时查询全量
        public let searchWord: String?

        /// 偏移量，默认为0
        public let offset: Int64?

        /// 每页条数，默认为20
        public let limit: Int64?

        /// 按时间排序：creation_time；按名称排序：config_name
        public let orderBy: String?

        /// 升序传 0，降序传 1
        public let orderType: Int64?

        /// 无
        public let configTagList: [String]?

        /// 无
        public let disableProgramAuthCheck: Bool?

        /// 无
        public let configIdList: [String]?

        public init(applicationId: String? = nil, searchWord: String? = nil, offset: Int64? = nil, limit: Int64? = nil, orderBy: String? = nil, orderType: Int64? = nil, configTagList: [String]? = nil, disableProgramAuthCheck: Bool? = nil, configIdList: [String]? = nil) {
            self.applicationId = applicationId
            self.searchWord = searchWord
            self.offset = offset
            self.limit = limit
            self.orderBy = orderBy
            self.orderType = orderType
            self.configTagList = configTagList
            self.disableProgramAuthCheck = disableProgramAuthCheck
            self.configIdList = configIdList
        }

        enum CodingKeys: String, CodingKey {
            case applicationId = "ApplicationId"
            case searchWord = "SearchWord"
            case offset = "Offset"
            case limit = "Limit"
            case orderBy = "OrderBy"
            case orderType = "OrderType"
            case configTagList = "ConfigTagList"
            case disableProgramAuthCheck = "DisableProgramAuthCheck"
            case configIdList = "ConfigIdList"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeConfigSummaryResponse) -> DescribeConfigSummaryRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeConfigSummaryRequest(applicationId: self.applicationId, searchWord: self.searchWord, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, orderBy: self.orderBy, orderType: self.orderType, configTagList: self.configTagList, disableProgramAuthCheck: self.disableProgramAuthCheck, configIdList: self.configIdList)
        }
    }

    /// DescribeConfigSummary返回参数结构体
    public struct DescribeConfigSummaryResponse: TCPaginatedResponse {
        /// 配置项分页对象
        public let result: TsfPageConfig

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [Config] {
            self.result.content
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result.totalCount
        }
    }

    /// 查询配置汇总列表
    @inlinable
    public func describeConfigSummary(_ input: DescribeConfigSummaryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeConfigSummaryResponse> {
        self.client.execute(action: "DescribeConfigSummary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询配置汇总列表
    @inlinable
    public func describeConfigSummary(_ input: DescribeConfigSummaryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeConfigSummaryResponse {
        try await self.client.execute(action: "DescribeConfigSummary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询配置汇总列表
    @inlinable
    public func describeConfigSummary(applicationId: String? = nil, searchWord: String? = nil, offset: Int64? = nil, limit: Int64? = nil, orderBy: String? = nil, orderType: Int64? = nil, configTagList: [String]? = nil, disableProgramAuthCheck: Bool? = nil, configIdList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeConfigSummaryResponse> {
        let input = DescribeConfigSummaryRequest(applicationId: applicationId, searchWord: searchWord, offset: offset, limit: limit, orderBy: orderBy, orderType: orderType, configTagList: configTagList, disableProgramAuthCheck: disableProgramAuthCheck, configIdList: configIdList)
        return self.client.execute(action: "DescribeConfigSummary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询配置汇总列表
    @inlinable
    public func describeConfigSummary(applicationId: String? = nil, searchWord: String? = nil, offset: Int64? = nil, limit: Int64? = nil, orderBy: String? = nil, orderType: Int64? = nil, configTagList: [String]? = nil, disableProgramAuthCheck: Bool? = nil, configIdList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeConfigSummaryResponse {
        let input = DescribeConfigSummaryRequest(applicationId: applicationId, searchWord: searchWord, offset: offset, limit: limit, orderBy: orderBy, orderType: orderType, configTagList: configTagList, disableProgramAuthCheck: disableProgramAuthCheck, configIdList: configIdList)
        return try await self.client.execute(action: "DescribeConfigSummary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
