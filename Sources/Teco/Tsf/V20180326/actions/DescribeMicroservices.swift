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

extension Tsf {
    /// DescribeMicroservices请求参数结构体
    public struct DescribeMicroservicesRequest: TCRequestModel {
        /// 命名空间ID
        public let namespaceId: String

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

        /// 状态过滤，online、offline、single_online
        public let status: [String]?

        /// IdList
        public let microserviceIdList: [String]?

        /// 搜索的服务名列表
        public let microserviceNameList: [String]?

        public init(namespaceId: String, searchWord: String? = nil, orderBy: String? = nil, orderType: Int64? = nil, offset: Int64? = nil, limit: Int64? = nil, status: [String]? = nil, microserviceIdList: [String]? = nil, microserviceNameList: [String]? = nil) {
            self.namespaceId = namespaceId
            self.searchWord = searchWord
            self.orderBy = orderBy
            self.orderType = orderType
            self.offset = offset
            self.limit = limit
            self.status = status
            self.microserviceIdList = microserviceIdList
            self.microserviceNameList = microserviceNameList
        }

        enum CodingKeys: String, CodingKey {
            case namespaceId = "NamespaceId"
            case searchWord = "SearchWord"
            case orderBy = "OrderBy"
            case orderType = "OrderType"
            case offset = "Offset"
            case limit = "Limit"
            case status = "Status"
            case microserviceIdList = "MicroserviceIdList"
            case microserviceNameList = "MicroserviceNameList"
        }
    }

    /// DescribeMicroservices返回参数结构体
    public struct DescribeMicroservicesResponse: TCResponseModel {
        /// 微服务分页列表信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: TsfPageMicroservice?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 获取微服务列表
    @inlinable
    public func describeMicroservices(_ input: DescribeMicroservicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMicroservicesResponse> {
        self.client.execute(action: "DescribeMicroservices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取微服务列表
    @inlinable
    public func describeMicroservices(_ input: DescribeMicroservicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMicroservicesResponse {
        try await self.client.execute(action: "DescribeMicroservices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取微服务列表
    @inlinable
    public func describeMicroservices(namespaceId: String, searchWord: String? = nil, orderBy: String? = nil, orderType: Int64? = nil, offset: Int64? = nil, limit: Int64? = nil, status: [String]? = nil, microserviceIdList: [String]? = nil, microserviceNameList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMicroservicesResponse> {
        self.describeMicroservices(DescribeMicroservicesRequest(namespaceId: namespaceId, searchWord: searchWord, orderBy: orderBy, orderType: orderType, offset: offset, limit: limit, status: status, microserviceIdList: microserviceIdList, microserviceNameList: microserviceNameList), region: region, logger: logger, on: eventLoop)
    }

    /// 获取微服务列表
    @inlinable
    public func describeMicroservices(namespaceId: String, searchWord: String? = nil, orderBy: String? = nil, orderType: Int64? = nil, offset: Int64? = nil, limit: Int64? = nil, status: [String]? = nil, microserviceIdList: [String]? = nil, microserviceNameList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMicroservicesResponse {
        try await self.describeMicroservices(DescribeMicroservicesRequest(namespaceId: namespaceId, searchWord: searchWord, orderBy: orderBy, orderType: orderType, offset: offset, limit: limit, status: status, microserviceIdList: microserviceIdList, microserviceNameList: microserviceNameList), region: region, logger: logger, on: eventLoop)
    }
}
