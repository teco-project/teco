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

extension Iotvideoindustry {
    /// DescribeGroupById请求参数结构体
    public struct DescribeGroupByIdRequest: TCRequestModel {
        /// 分组ID
        public let groupId: String

        public init(groupId: String) {
            self.groupId = groupId
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
        }
    }

    /// DescribeGroupById返回参数结构体
    public struct DescribeGroupByIdResponse: TCResponseModel {
        /// 分组信息详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let group: GroupItem?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case group = "Group"
            case requestId = "RequestId"
        }
    }

    /// 根据分组ID查询分组
    ///
    /// 本接口(DescribeGroupById)用于根据分组ID查询分组。
    @inlinable
    public func describeGroupById(_ input: DescribeGroupByIdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGroupByIdResponse> {
        self.client.execute(action: "DescribeGroupById", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 根据分组ID查询分组
    ///
    /// 本接口(DescribeGroupById)用于根据分组ID查询分组。
    @inlinable
    public func describeGroupById(_ input: DescribeGroupByIdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGroupByIdResponse {
        try await self.client.execute(action: "DescribeGroupById", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 根据分组ID查询分组
    ///
    /// 本接口(DescribeGroupById)用于根据分组ID查询分组。
    @inlinable
    public func describeGroupById(groupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGroupByIdResponse> {
        self.describeGroupById(.init(groupId: groupId), region: region, logger: logger, on: eventLoop)
    }

    /// 根据分组ID查询分组
    ///
    /// 本接口(DescribeGroupById)用于根据分组ID查询分组。
    @inlinable
    public func describeGroupById(groupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGroupByIdResponse {
        try await self.describeGroupById(.init(groupId: groupId), region: region, logger: logger, on: eventLoop)
    }
}
