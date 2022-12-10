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

extension Bm {
    /// 获取自定义脚本信息列表
    ///
    /// 获取自定义脚本信息列表
    @inlinable
    public func describeUserCmds(_ input: DescribeUserCmdsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeUserCmdsResponse > {
        self.client.execute(action: "DescribeUserCmds", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取自定义脚本信息列表
    ///
    /// 获取自定义脚本信息列表
    @inlinable
    public func describeUserCmds(_ input: DescribeUserCmdsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserCmdsResponse {
        try await self.client.execute(action: "DescribeUserCmds", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeUserCmds请求参数结构体
    public struct DescribeUserCmdsRequest: TCRequestModel {
        /// 偏移量
        public let offset: UInt64
        
        /// 数量限制
        public let limit: UInt64
        
        /// 排序字段，支持： OsType,CreateTime,ModifyTime
        public let orderField: String?
        
        /// 排序方式，取值: 1倒序，0顺序；默认倒序
        public let order: UInt64?
        
        /// 关键字搜索，可搜索ID或别名，支持模糊搜索
        public let searchKey: String?
        
        /// 查询的脚本ID
        public let cmdId: String?
        
        public init (offset: UInt64, limit: UInt64, orderField: String?, order: UInt64?, searchKey: String?, cmdId: String?) {
            self.offset = offset
            self.limit = limit
            self.orderField = orderField
            self.order = order
            self.searchKey = searchKey
            self.cmdId = cmdId
        }
        
        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case orderField = "OrderField"
            case order = "Order"
            case searchKey = "SearchKey"
            case cmdId = "CmdId"
        }
    }
    
    /// DescribeUserCmds返回参数结构体
    public struct DescribeUserCmdsResponse: TCResponseModel {
        /// 返回数量
        public let totalCount: UInt64
        
        /// 脚本信息列表
        public let userCmds: [UserCmd]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case userCmds = "UserCmds"
            case requestId = "RequestId"
        }
    }
}