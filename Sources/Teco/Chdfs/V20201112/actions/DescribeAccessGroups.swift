//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Chdfs {
    /// DescribeAccessGroups请求参数结构体
    public struct DescribeAccessGroupsRequest: TCRequestModel {
        /// VPC网络ID
        /// 备注：入参只能指定VpcId和OwnerUin的其中一个
        public let vpcId: String?

        /// 资源所属者Uin
        public let ownerUin: UInt64?

        public init(vpcId: String? = nil, ownerUin: UInt64? = nil) {
            self.vpcId = vpcId
            self.ownerUin = ownerUin
        }

        enum CodingKeys: String, CodingKey {
            case vpcId = "VpcId"
            case ownerUin = "OwnerUin"
        }
    }

    /// DescribeAccessGroups返回参数结构体
    public struct DescribeAccessGroupsResponse: TCResponseModel {
        /// 权限组列表
        public let accessGroups: [AccessGroup]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case accessGroups = "AccessGroups"
            case requestId = "RequestId"
        }
    }

    /// 查看权限组列表
    ///
    /// 查看权限组列表。
    @inlinable
    public func describeAccessGroups(_ input: DescribeAccessGroupsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAccessGroupsResponse > {
        self.client.execute(action: "DescribeAccessGroups", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看权限组列表
    ///
    /// 查看权限组列表。
    @inlinable
    public func describeAccessGroups(_ input: DescribeAccessGroupsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccessGroupsResponse {
        try await self.client.execute(action: "DescribeAccessGroups", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看权限组列表
    ///
    /// 查看权限组列表。
    @inlinable
    public func describeAccessGroups(vpcId: String? = nil, ownerUin: UInt64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAccessGroupsResponse > {
        self.describeAccessGroups(DescribeAccessGroupsRequest(vpcId: vpcId, ownerUin: ownerUin), logger: logger, on: eventLoop)
    }

    /// 查看权限组列表
    ///
    /// 查看权限组列表。
    @inlinable
    public func describeAccessGroups(vpcId: String? = nil, ownerUin: UInt64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccessGroupsResponse {
        try await self.describeAccessGroups(DescribeAccessGroupsRequest(vpcId: vpcId, ownerUin: ownerUin), logger: logger, on: eventLoop)
    }
}
