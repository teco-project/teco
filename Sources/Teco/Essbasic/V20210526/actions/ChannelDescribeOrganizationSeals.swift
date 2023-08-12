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

extension Essbasic {
    /// ChannelDescribeOrganizationSeals请求参数结构体
    public struct ChannelDescribeOrganizationSealsRequest: TCPaginatedRequest {
        /// 应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 必填。
        public let agent: Agent

        /// 返回最大数量，最大为100
        public let limit: Int64

        /// 偏移量，默认为0，最大为20000
        public let offset: Int64?

        /// 查询信息类型，为1时返回授权用户，为其他值时不返回
        public let infoType: Int64?

        /// 印章id（没有输入返回所有）
        public let sealId: String?

        /// 印章类型列表（都是组织机构印章）。
        /// 为空时查询所有类型的印章。
        /// 目前支持以下类型：
        /// OFFICIAL：企业公章；
        /// CONTRACT：合同专用章；
        /// ORGANIZATION_SEAL：企业印章(图片上传创建)；
        /// LEGAL_PERSON_SEAL：法定代表人章
        public let sealTypes: [String]?

        public init(agent: Agent, limit: Int64, offset: Int64? = nil, infoType: Int64? = nil, sealId: String? = nil, sealTypes: [String]? = nil) {
            self.agent = agent
            self.limit = limit
            self.offset = offset
            self.infoType = infoType
            self.sealId = sealId
            self.sealTypes = sealTypes
        }

        enum CodingKeys: String, CodingKey {
            case agent = "Agent"
            case limit = "Limit"
            case offset = "Offset"
            case infoType = "InfoType"
            case sealId = "SealId"
            case sealTypes = "SealTypes"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: ChannelDescribeOrganizationSealsResponse) -> ChannelDescribeOrganizationSealsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return ChannelDescribeOrganizationSealsRequest(agent: self.agent, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), infoType: self.infoType, sealId: self.sealId, sealTypes: self.sealTypes)
        }
    }

    /// ChannelDescribeOrganizationSeals返回参数结构体
    public struct ChannelDescribeOrganizationSealsResponse: TCPaginatedResponse {
        /// 在设置了SealId时返回0或1，没有设置时返回公司的总印章数量，可能比返回的印章数组数量多
        public let totalCount: Int64

        /// 查询到的印章结果数组
        public let seals: [OccupiedSeal]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case seals = "Seals"
            case requestId = "RequestId"
        }

        /// Extract the returned ``OccupiedSeal`` list from the paginated response.
        public func getItems() -> [OccupiedSeal] {
            self.seals
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询子客企业电子印章
    ///
    /// 查询子客企业电子印章，需要操作者具有管理印章权限
    /// 客户指定需要获取的印章数量和偏移量，数量最多100，超过100按100处理；入参InfoType控制印章是否携带授权人信息，为1则携带，为0则返回的授权人信息为空数组。接口调用成功返回印章的信息列表还有企业印章的总数。
    @inlinable
    public func channelDescribeOrganizationSeals(_ input: ChannelDescribeOrganizationSealsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChannelDescribeOrganizationSealsResponse> {
        self.client.execute(action: "ChannelDescribeOrganizationSeals", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询子客企业电子印章
    ///
    /// 查询子客企业电子印章，需要操作者具有管理印章权限
    /// 客户指定需要获取的印章数量和偏移量，数量最多100，超过100按100处理；入参InfoType控制印章是否携带授权人信息，为1则携带，为0则返回的授权人信息为空数组。接口调用成功返回印章的信息列表还有企业印章的总数。
    @inlinable
    public func channelDescribeOrganizationSeals(_ input: ChannelDescribeOrganizationSealsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChannelDescribeOrganizationSealsResponse {
        try await self.client.execute(action: "ChannelDescribeOrganizationSeals", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询子客企业电子印章
    ///
    /// 查询子客企业电子印章，需要操作者具有管理印章权限
    /// 客户指定需要获取的印章数量和偏移量，数量最多100，超过100按100处理；入参InfoType控制印章是否携带授权人信息，为1则携带，为0则返回的授权人信息为空数组。接口调用成功返回印章的信息列表还有企业印章的总数。
    @inlinable
    public func channelDescribeOrganizationSeals(agent: Agent, limit: Int64, offset: Int64? = nil, infoType: Int64? = nil, sealId: String? = nil, sealTypes: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChannelDescribeOrganizationSealsResponse> {
        self.channelDescribeOrganizationSeals(.init(agent: agent, limit: limit, offset: offset, infoType: infoType, sealId: sealId, sealTypes: sealTypes), region: region, logger: logger, on: eventLoop)
    }

    /// 查询子客企业电子印章
    ///
    /// 查询子客企业电子印章，需要操作者具有管理印章权限
    /// 客户指定需要获取的印章数量和偏移量，数量最多100，超过100按100处理；入参InfoType控制印章是否携带授权人信息，为1则携带，为0则返回的授权人信息为空数组。接口调用成功返回印章的信息列表还有企业印章的总数。
    @inlinable
    public func channelDescribeOrganizationSeals(agent: Agent, limit: Int64, offset: Int64? = nil, infoType: Int64? = nil, sealId: String? = nil, sealTypes: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChannelDescribeOrganizationSealsResponse {
        try await self.channelDescribeOrganizationSeals(.init(agent: agent, limit: limit, offset: offset, infoType: infoType, sealId: sealId, sealTypes: sealTypes), region: region, logger: logger, on: eventLoop)
    }

    /// 查询子客企业电子印章
    ///
    /// 查询子客企业电子印章，需要操作者具有管理印章权限
    /// 客户指定需要获取的印章数量和偏移量，数量最多100，超过100按100处理；入参InfoType控制印章是否携带授权人信息，为1则携带，为0则返回的授权人信息为空数组。接口调用成功返回印章的信息列表还有企业印章的总数。
    @inlinable
    public func channelDescribeOrganizationSealsPaginated(_ input: ChannelDescribeOrganizationSealsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [OccupiedSeal])> {
        self.client.paginate(input: input, region: region, command: self.channelDescribeOrganizationSeals, logger: logger, on: eventLoop)
    }

    /// 查询子客企业电子印章
    ///
    /// 查询子客企业电子印章，需要操作者具有管理印章权限
    /// 客户指定需要获取的印章数量和偏移量，数量最多100，超过100按100处理；入参InfoType控制印章是否携带授权人信息，为1则携带，为0则返回的授权人信息为空数组。接口调用成功返回印章的信息列表还有企业印章的总数。
    @inlinable @discardableResult
    public func channelDescribeOrganizationSealsPaginated(_ input: ChannelDescribeOrganizationSealsRequest, region: TCRegion? = nil, onResponse: @escaping (ChannelDescribeOrganizationSealsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.channelDescribeOrganizationSeals, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询子客企业电子印章
    ///
    /// 查询子客企业电子印章，需要操作者具有管理印章权限
    /// 客户指定需要获取的印章数量和偏移量，数量最多100，超过100按100处理；入参InfoType控制印章是否携带授权人信息，为1则携带，为0则返回的授权人信息为空数组。接口调用成功返回印章的信息列表还有企业印章的总数。
    ///
    /// - Returns: `AsyncSequence`s of ``OccupiedSeal`` and ``ChannelDescribeOrganizationSealsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func channelDescribeOrganizationSealsPaginator(_ input: ChannelDescribeOrganizationSealsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<ChannelDescribeOrganizationSealsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.channelDescribeOrganizationSeals, logger: logger, on: eventLoop)
    }
}
