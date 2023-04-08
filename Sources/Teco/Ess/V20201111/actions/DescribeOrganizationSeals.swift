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

extension Ess {
    /// DescribeOrganizationSeals请求参数结构体
    public struct DescribeOrganizationSealsRequest: TCPaginatedRequest {
        /// 调用方用户信息，userId 必填
        public let `operator`: UserInfo

        /// 返回最大数量，最大为100
        public let limit: Int64

        /// 偏移量，默认为0，最大为20000
        public let offset: Int64?

        /// 查询信息类型，为0时不返回授权用户，为1时返回
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

        /// 代理相关应用信息，如集团主企业代子企业操作的场景中ProxyOrganizationId必填
        public let agent: Agent?

        public init(operator: UserInfo, limit: Int64, offset: Int64? = nil, infoType: Int64? = nil, sealId: String? = nil, sealTypes: [String]? = nil, agent: Agent? = nil) {
            self.operator = `operator`
            self.limit = limit
            self.offset = offset
            self.infoType = infoType
            self.sealId = sealId
            self.sealTypes = sealTypes
            self.agent = agent
        }

        enum CodingKeys: String, CodingKey {
            case `operator` = "Operator"
            case limit = "Limit"
            case offset = "Offset"
            case infoType = "InfoType"
            case sealId = "SealId"
            case sealTypes = "SealTypes"
            case agent = "Agent"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeOrganizationSealsResponse) -> DescribeOrganizationSealsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeOrganizationSealsRequest(operator: self.operator, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), infoType: self.infoType, sealId: self.sealId, sealTypes: self.sealTypes, agent: self.agent)
        }
    }

    /// DescribeOrganizationSeals返回参数结构体
    public struct DescribeOrganizationSealsResponse: TCPaginatedResponse {
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

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [OccupiedSeal] {
            self.seals
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询企业电子印章
    ///
    /// 查询企业印章的列表，需要操作者具有查询印章权限
    /// 客户指定需要获取的印章数量和偏移量，数量最多100，超过100按100处理；入参InfoType控制印章是否携带授权人信息，为1则携带，为0则返回的授权人信息为空数组。接口调用成功返回印章的信息列表还有企业印章的总数。
    @inlinable
    public func describeOrganizationSeals(_ input: DescribeOrganizationSealsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOrganizationSealsResponse> {
        self.client.execute(action: "DescribeOrganizationSeals", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询企业电子印章
    ///
    /// 查询企业印章的列表，需要操作者具有查询印章权限
    /// 客户指定需要获取的印章数量和偏移量，数量最多100，超过100按100处理；入参InfoType控制印章是否携带授权人信息，为1则携带，为0则返回的授权人信息为空数组。接口调用成功返回印章的信息列表还有企业印章的总数。
    @inlinable
    public func describeOrganizationSeals(_ input: DescribeOrganizationSealsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOrganizationSealsResponse {
        try await self.client.execute(action: "DescribeOrganizationSeals", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询企业电子印章
    ///
    /// 查询企业印章的列表，需要操作者具有查询印章权限
    /// 客户指定需要获取的印章数量和偏移量，数量最多100，超过100按100处理；入参InfoType控制印章是否携带授权人信息，为1则携带，为0则返回的授权人信息为空数组。接口调用成功返回印章的信息列表还有企业印章的总数。
    @inlinable
    public func describeOrganizationSeals(operator: UserInfo, limit: Int64, offset: Int64? = nil, infoType: Int64? = nil, sealId: String? = nil, sealTypes: [String]? = nil, agent: Agent? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOrganizationSealsResponse> {
        self.describeOrganizationSeals(.init(operator: `operator`, limit: limit, offset: offset, infoType: infoType, sealId: sealId, sealTypes: sealTypes, agent: agent), region: region, logger: logger, on: eventLoop)
    }

    /// 查询企业电子印章
    ///
    /// 查询企业印章的列表，需要操作者具有查询印章权限
    /// 客户指定需要获取的印章数量和偏移量，数量最多100，超过100按100处理；入参InfoType控制印章是否携带授权人信息，为1则携带，为0则返回的授权人信息为空数组。接口调用成功返回印章的信息列表还有企业印章的总数。
    @inlinable
    public func describeOrganizationSeals(operator: UserInfo, limit: Int64, offset: Int64? = nil, infoType: Int64? = nil, sealId: String? = nil, sealTypes: [String]? = nil, agent: Agent? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOrganizationSealsResponse {
        try await self.describeOrganizationSeals(.init(operator: `operator`, limit: limit, offset: offset, infoType: infoType, sealId: sealId, sealTypes: sealTypes, agent: agent), region: region, logger: logger, on: eventLoop)
    }

    /// 查询企业电子印章
    ///
    /// 查询企业印章的列表，需要操作者具有查询印章权限
    /// 客户指定需要获取的印章数量和偏移量，数量最多100，超过100按100处理；入参InfoType控制印章是否携带授权人信息，为1则携带，为0则返回的授权人信息为空数组。接口调用成功返回印章的信息列表还有企业印章的总数。
    @inlinable
    public func describeOrganizationSealsPaginated(_ input: DescribeOrganizationSealsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [OccupiedSeal])> {
        self.client.paginate(input: input, region: region, command: self.describeOrganizationSeals, logger: logger, on: eventLoop)
    }

    /// 查询企业电子印章
    ///
    /// 查询企业印章的列表，需要操作者具有查询印章权限
    /// 客户指定需要获取的印章数量和偏移量，数量最多100，超过100按100处理；入参InfoType控制印章是否携带授权人信息，为1则携带，为0则返回的授权人信息为空数组。接口调用成功返回印章的信息列表还有企业印章的总数。
    @inlinable @discardableResult
    public func describeOrganizationSealsPaginated(_ input: DescribeOrganizationSealsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeOrganizationSealsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeOrganizationSeals, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询企业电子印章
    ///
    /// 查询企业印章的列表，需要操作者具有查询印章权限
    /// 客户指定需要获取的印章数量和偏移量，数量最多100，超过100按100处理；入参InfoType控制印章是否携带授权人信息，为1则携带，为0则返回的授权人信息为空数组。接口调用成功返回印章的信息列表还有企业印章的总数。
    ///
    /// - Returns: `AsyncSequence`s of `OccupiedSeal` and `DescribeOrganizationSealsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeOrganizationSealsPaginator(_ input: DescribeOrganizationSealsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeOrganizationSealsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeOrganizationSeals, logger: logger, on: eventLoop)
    }
}
