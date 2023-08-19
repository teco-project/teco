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

extension Essbasic {
    /// DescribeSubOrganizations请求参数结构体
    public struct DescribeSubOrganizationsRequest: TCRequest {
        /// 调用方信息
        public let caller: Caller

        /// 子机构ID数组
        public let subOrganizationIds: [String]

        public init(caller: Caller, subOrganizationIds: [String]) {
            self.caller = caller
            self.subOrganizationIds = subOrganizationIds
        }

        enum CodingKeys: String, CodingKey {
            case caller = "Caller"
            case subOrganizationIds = "SubOrganizationIds"
        }
    }

    /// DescribeSubOrganizations返回参数结构体
    public struct DescribeSubOrganizationsResponse: TCResponse {
        /// 子机构信息列表
        public let subOrganizationInfos: [SubOrganizationDetail]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case subOrganizationInfos = "SubOrganizationInfos"
            case requestId = "RequestId"
        }
    }

    /// 查询子机构信息
    ///
    /// 此接口（DescribeSubOrganizations）用于查询子机构信息。
    ///
    /// 注：此接口仅可查询您所属机构应用号创建的子机构信息，不可跨应用/跨机构查询。
    @inlinable
    public func describeSubOrganizations(_ input: DescribeSubOrganizationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSubOrganizationsResponse> {
        self.client.execute(action: "DescribeSubOrganizations", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询子机构信息
    ///
    /// 此接口（DescribeSubOrganizations）用于查询子机构信息。
    ///
    /// 注：此接口仅可查询您所属机构应用号创建的子机构信息，不可跨应用/跨机构查询。
    @inlinable
    public func describeSubOrganizations(_ input: DescribeSubOrganizationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSubOrganizationsResponse {
        try await self.client.execute(action: "DescribeSubOrganizations", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询子机构信息
    ///
    /// 此接口（DescribeSubOrganizations）用于查询子机构信息。
    ///
    /// 注：此接口仅可查询您所属机构应用号创建的子机构信息，不可跨应用/跨机构查询。
    @inlinable
    public func describeSubOrganizations(caller: Caller, subOrganizationIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSubOrganizationsResponse> {
        self.describeSubOrganizations(.init(caller: caller, subOrganizationIds: subOrganizationIds), region: region, logger: logger, on: eventLoop)
    }

    /// 查询子机构信息
    ///
    /// 此接口（DescribeSubOrganizations）用于查询子机构信息。
    ///
    /// 注：此接口仅可查询您所属机构应用号创建的子机构信息，不可跨应用/跨机构查询。
    @inlinable
    public func describeSubOrganizations(caller: Caller, subOrganizationIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSubOrganizationsResponse {
        try await self.describeSubOrganizations(.init(caller: caller, subOrganizationIds: subOrganizationIds), region: region, logger: logger, on: eventLoop)
    }
}
