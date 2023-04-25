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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Clb {
    /// DisassociateTargetGroups请求参数结构体
    public struct DisassociateTargetGroupsRequest: TCRequestModel {
        /// 待解绑的规则关系数组。
        public let associations: [TargetGroupAssociation]

        public init(associations: [TargetGroupAssociation]) {
            self.associations = associations
        }

        enum CodingKeys: String, CodingKey {
            case associations = "Associations"
        }
    }

    /// DisassociateTargetGroups返回参数结构体
    public struct DisassociateTargetGroupsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 解除规则的目标组关联关系
    ///
    /// 解除规则的目标组关联关系。
    /// 本接口为异步接口，本接口返回成功后需以返回的 RequestID 为入参，调用 DescribeTaskStatus 接口查询本次任务是否成功。
    @inlinable @discardableResult
    public func disassociateTargetGroups(_ input: DisassociateTargetGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateTargetGroupsResponse> {
        self.client.execute(action: "DisassociateTargetGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 解除规则的目标组关联关系
    ///
    /// 解除规则的目标组关联关系。
    /// 本接口为异步接口，本接口返回成功后需以返回的 RequestID 为入参，调用 DescribeTaskStatus 接口查询本次任务是否成功。
    @inlinable @discardableResult
    public func disassociateTargetGroups(_ input: DisassociateTargetGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateTargetGroupsResponse {
        try await self.client.execute(action: "DisassociateTargetGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 解除规则的目标组关联关系
    ///
    /// 解除规则的目标组关联关系。
    /// 本接口为异步接口，本接口返回成功后需以返回的 RequestID 为入参，调用 DescribeTaskStatus 接口查询本次任务是否成功。
    @inlinable @discardableResult
    public func disassociateTargetGroups(associations: [TargetGroupAssociation], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateTargetGroupsResponse> {
        self.disassociateTargetGroups(.init(associations: associations), region: region, logger: logger, on: eventLoop)
    }

    /// 解除规则的目标组关联关系
    ///
    /// 解除规则的目标组关联关系。
    /// 本接口为异步接口，本接口返回成功后需以返回的 RequestID 为入参，调用 DescribeTaskStatus 接口查询本次任务是否成功。
    @inlinable @discardableResult
    public func disassociateTargetGroups(associations: [TargetGroupAssociation], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateTargetGroupsResponse {
        try await self.disassociateTargetGroups(.init(associations: associations), region: region, logger: logger, on: eventLoop)
    }
}
