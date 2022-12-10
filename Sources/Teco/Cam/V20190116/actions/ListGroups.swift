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

extension Cam {
    /// 查询用户组列表
    @inlinable
    public func listGroups(_ input: ListGroupsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ListGroupsResponse > {
        self.client.execute(action: "ListGroups", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询用户组列表
    @inlinable
    public func listGroups(_ input: ListGroupsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListGroupsResponse {
        try await self.client.execute(action: "ListGroups", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ListGroups请求参数结构体
    public struct ListGroupsRequest: TCRequestModel {
        /// 页码。默认为1。
        public let page: UInt64?
        
        /// 每页数量。默认为20。
        public let rp: UInt64?
        
        /// 按用户组名称匹配。
        public let keyword: String?
        
        public init (page: UInt64?, rp: UInt64?, keyword: String?) {
            self.page = page
            self.rp = rp
            self.keyword = keyword
        }
        
        enum CodingKeys: String, CodingKey {
            case page = "Page"
            case rp = "Rp"
            case keyword = "Keyword"
        }
    }
    
    /// ListGroups返回参数结构体
    public struct ListGroupsResponse: TCResponseModel {
        /// 用户组总数。
        public let totalNum: UInt64
        
        /// 用户组数组信息。
        public let groupInfo: [GroupInfo]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalNum = "TotalNum"
            case groupInfo = "GroupInfo"
            case requestId = "RequestId"
        }
    }
}
