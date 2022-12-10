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

extension Iotvideoindustry {
    /// 批量查询分组信息
    ///
    /// 本接口(DescribeGroups)用于批量查询分组信息。
    @inlinable
    public func describeGroups(_ input: DescribeGroupsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeGroupsResponse > {
        self.client.execute(action: "DescribeGroups", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 批量查询分组信息
    ///
    /// 本接口(DescribeGroups)用于批量查询分组信息。
    @inlinable
    public func describeGroups(_ input: DescribeGroupsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGroupsResponse {
        try await self.client.execute(action: "DescribeGroups", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeGroups请求参数结构体
    public struct DescribeGroupsRequest: TCRequestModel {
        /// 分组ID列表
        public let groupIds: [String]?
        
        public init (groupIds: [String]?) {
            self.groupIds = groupIds
        }
        
        enum CodingKeys: String, CodingKey {
            case groupIds = "GroupIds"
        }
    }
    
    /// DescribeGroups返回参数结构体
    public struct DescribeGroupsResponse: TCResponseModel {
        /// 分组详细信息列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let groups: [GroupInfo]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case groups = "Groups"
            case requestId = "RequestId"
        }
    }
}
