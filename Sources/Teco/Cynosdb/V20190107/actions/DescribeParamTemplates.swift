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

extension Cynosdb {
    /// DescribeParamTemplates请求参数结构体
    public struct DescribeParamTemplatesRequest: TCPaginatedRequest {
        /// 数据库引擎版本号
        public let engineVersions: [String]?

        /// 模版名称
        public let templateNames: [String]?

        /// 模版ID
        public let templateIds: [Int64]?

        /// 数据库类型，可选值：NORMAL，SERVERLESS
        public let dbModes: [String]?

        /// 查询偏移量
        public let offset: Int64?

        /// 查询限制条数
        public let limit: Int64?

        /// 查询的模板对应的产品类型
        public let products: [String]?

        /// 模版类型
        public let templateTypes: [String]?

        /// 版本类型
        public let engineTypes: [String]?

        /// 返回结果的排序字段
        public let orderBy: String?

        /// 排序方式（asc、desc）
        public let orderDirection: String?

        public init(engineVersions: [String]? = nil, templateNames: [String]? = nil, templateIds: [Int64]? = nil, dbModes: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, products: [String]? = nil, templateTypes: [String]? = nil, engineTypes: [String]? = nil, orderBy: String? = nil, orderDirection: String? = nil) {
            self.engineVersions = engineVersions
            self.templateNames = templateNames
            self.templateIds = templateIds
            self.dbModes = dbModes
            self.offset = offset
            self.limit = limit
            self.products = products
            self.templateTypes = templateTypes
            self.engineTypes = engineTypes
            self.orderBy = orderBy
            self.orderDirection = orderDirection
        }

        enum CodingKeys: String, CodingKey {
            case engineVersions = "EngineVersions"
            case templateNames = "TemplateNames"
            case templateIds = "TemplateIds"
            case dbModes = "DbModes"
            case offset = "Offset"
            case limit = "Limit"
            case products = "Products"
            case templateTypes = "TemplateTypes"
            case engineTypes = "EngineTypes"
            case orderBy = "OrderBy"
            case orderDirection = "OrderDirection"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeParamTemplatesResponse) -> DescribeParamTemplatesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeParamTemplatesRequest(engineVersions: self.engineVersions, templateNames: self.templateNames, templateIds: self.templateIds, dbModes: self.dbModes, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, products: self.products, templateTypes: self.templateTypes, engineTypes: self.engineTypes, orderBy: self.orderBy, orderDirection: self.orderDirection)
        }
    }

    /// DescribeParamTemplates返回参数结构体
    public struct DescribeParamTemplatesResponse: TCPaginatedResponse {
        /// 参数模板数量
        public let totalCount: Int64

        /// 参数模板信息
        public let items: [ParamTemplateListInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case items = "Items"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ParamTemplateListInfo] {
            self.items
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询参数模板信息
    ///
    /// 查询用户指定产品下的所有参数模板信息
    @inlinable
    public func describeParamTemplates(_ input: DescribeParamTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeParamTemplatesResponse> {
        self.client.execute(action: "DescribeParamTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询参数模板信息
    ///
    /// 查询用户指定产品下的所有参数模板信息
    @inlinable
    public func describeParamTemplates(_ input: DescribeParamTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeParamTemplatesResponse {
        try await self.client.execute(action: "DescribeParamTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询参数模板信息
    ///
    /// 查询用户指定产品下的所有参数模板信息
    @inlinable
    public func describeParamTemplates(engineVersions: [String]? = nil, templateNames: [String]? = nil, templateIds: [Int64]? = nil, dbModes: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, products: [String]? = nil, templateTypes: [String]? = nil, engineTypes: [String]? = nil, orderBy: String? = nil, orderDirection: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeParamTemplatesResponse> {
        self.describeParamTemplates(.init(engineVersions: engineVersions, templateNames: templateNames, templateIds: templateIds, dbModes: dbModes, offset: offset, limit: limit, products: products, templateTypes: templateTypes, engineTypes: engineTypes, orderBy: orderBy, orderDirection: orderDirection), region: region, logger: logger, on: eventLoop)
    }

    /// 查询参数模板信息
    ///
    /// 查询用户指定产品下的所有参数模板信息
    @inlinable
    public func describeParamTemplates(engineVersions: [String]? = nil, templateNames: [String]? = nil, templateIds: [Int64]? = nil, dbModes: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, products: [String]? = nil, templateTypes: [String]? = nil, engineTypes: [String]? = nil, orderBy: String? = nil, orderDirection: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeParamTemplatesResponse {
        try await self.describeParamTemplates(.init(engineVersions: engineVersions, templateNames: templateNames, templateIds: templateIds, dbModes: dbModes, offset: offset, limit: limit, products: products, templateTypes: templateTypes, engineTypes: engineTypes, orderBy: orderBy, orderDirection: orderDirection), region: region, logger: logger, on: eventLoop)
    }

    /// 查询参数模板信息
    ///
    /// 查询用户指定产品下的所有参数模板信息
    @inlinable
    public func describeParamTemplatesPaginated(_ input: DescribeParamTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ParamTemplateListInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeParamTemplates, logger: logger, on: eventLoop)
    }

    /// 查询参数模板信息
    ///
    /// 查询用户指定产品下的所有参数模板信息
    @inlinable @discardableResult
    public func describeParamTemplatesPaginated(_ input: DescribeParamTemplatesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeParamTemplatesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeParamTemplates, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询参数模板信息
    ///
    /// 查询用户指定产品下的所有参数模板信息
    ///
    /// - Returns: `AsyncSequence`s of `ParamTemplateListInfo` and `DescribeParamTemplatesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeParamTemplatesPaginator(_ input: DescribeParamTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeParamTemplatesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeParamTemplates, logger: logger, on: eventLoop)
    }
}
