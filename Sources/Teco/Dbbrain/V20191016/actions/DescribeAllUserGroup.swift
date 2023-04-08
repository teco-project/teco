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

extension Dbbrain {
    /// DescribeAllUserGroup请求参数结构体
    public struct DescribeAllUserGroupRequest: TCRequestModel {
        /// 服务产品类型，固定值：mysql。
        public let product: String

        /// 联系组名称数组，支持模糊搜索。
        public let names: [String]?

        public init(product: String, names: [String]? = nil) {
            self.product = product
            self.names = names
        }

        enum CodingKeys: String, CodingKey {
            case product = "Product"
            case names = "Names"
        }
    }

    /// DescribeAllUserGroup返回参数结构体
    public struct DescribeAllUserGroupResponse: TCResponseModel {
        /// 组总数。
        public let totalCount: Int64

        /// 组信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let groups: [GroupItem]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case groups = "Groups"
            case requestId = "RequestId"
        }
    }

    /// 获取邮件发送中联系组信息
    ///
    /// 获取邮件发送联系组的相关信息。
    @inlinable
    public func describeAllUserGroup(_ input: DescribeAllUserGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAllUserGroupResponse> {
        self.client.execute(action: "DescribeAllUserGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取邮件发送中联系组信息
    ///
    /// 获取邮件发送联系组的相关信息。
    @inlinable
    public func describeAllUserGroup(_ input: DescribeAllUserGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAllUserGroupResponse {
        try await self.client.execute(action: "DescribeAllUserGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取邮件发送中联系组信息
    ///
    /// 获取邮件发送联系组的相关信息。
    @inlinable
    public func describeAllUserGroup(product: String, names: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAllUserGroupResponse> {
        self.describeAllUserGroup(.init(product: product, names: names), region: region, logger: logger, on: eventLoop)
    }

    /// 获取邮件发送中联系组信息
    ///
    /// 获取邮件发送联系组的相关信息。
    @inlinable
    public func describeAllUserGroup(product: String, names: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAllUserGroupResponse {
        try await self.describeAllUserGroup(.init(product: product, names: names), region: region, logger: logger, on: eventLoop)
    }
}
