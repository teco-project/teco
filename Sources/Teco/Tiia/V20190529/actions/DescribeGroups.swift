//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Tiia {
    /// 查询图片库
    ///
    /// 查询所有的图库信息。
    @inlinable
    public func describeGroups(_ input: DescribeGroupsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeGroupsResponse > {
        self.client.execute(action: "DescribeGroups", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询图片库
    ///
    /// 查询所有的图库信息。
    @inlinable
    public func describeGroups(_ input: DescribeGroupsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGroupsResponse {
        try await self.client.execute(action: "DescribeGroups", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeGroups请求参数结构体
    public struct DescribeGroupsRequest: TCRequestModel {
        /// 起始序号，默认值为0。
        public let offset: Int64?
        
        /// 返回数量，默认值为10，最大值为100。
        public let limit: Int64?
        
        /// 图库ID，如果不为空，则返回指定库信息。
        public let groupId: String?
        
        public init (offset: Int64?, limit: Int64?, groupId: String?) {
            self.offset = offset
            self.limit = limit
            self.groupId = groupId
        }
        
        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case groupId = "GroupId"
        }
    }
    
    /// DescribeGroups返回参数结构体
    public struct DescribeGroupsResponse: TCResponseModel {
        /// 图库信息
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