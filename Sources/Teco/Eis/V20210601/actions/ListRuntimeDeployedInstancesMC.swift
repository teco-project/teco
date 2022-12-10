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

@_exported import struct Foundation.Date

extension Eis {
    /// 获取运行时部署的应用实例列表
    ///
    /// 获取运行时部署的应用实例列表
    @inlinable
    public func listRuntimeDeployedInstancesMC(_ input: ListRuntimeDeployedInstancesMCRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ListRuntimeDeployedInstancesMCResponse > {
        self.client.execute(action: "ListRuntimeDeployedInstancesMC", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取运行时部署的应用实例列表
    ///
    /// 获取运行时部署的应用实例列表
    @inlinable
    public func listRuntimeDeployedInstancesMC(_ input: ListRuntimeDeployedInstancesMCRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListRuntimeDeployedInstancesMCResponse {
        try await self.client.execute(action: "ListRuntimeDeployedInstancesMC", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ListRuntimeDeployedInstancesMC请求参数结构体
    public struct ListRuntimeDeployedInstancesMCRequest: TCRequestModel {
        /// 运行时id
        public let runtimeId: Int64
        
        /// 最大请求数量
        public let limit: Int64
        
        /// 请求偏移量
        public let offset: Int64
        
        /// 排序类型：1:创建时间排序, 2:更新时间排序（默认）
        public let sortType: Int64
        
        /// 排序方式：asc，desc（默认）
        public let sort: String
        
        /// 运行时地域
        public let zone: String
        
        /// 1:3.0版本新控制台传1；否则传0
        public let apiVersion: Int64?
        
        /// -1:不按项目筛选，获取所有
        /// >=0: 按项目id筛选
        public let groupId: Int64?
        
        /// -2: 不按状态筛选，获取所有
        /// 0: 运行中
        /// 2: 已停止
        public let status: Int64?
        
        public init (runtimeId: Int64, limit: Int64, offset: Int64, sortType: Int64, sort: String, zone: String, apiVersion: Int64?, groupId: Int64?, status: Int64?) {
            self.runtimeId = runtimeId
            self.limit = limit
            self.offset = offset
            self.sortType = sortType
            self.sort = sort
            self.zone = zone
            self.apiVersion = apiVersion
            self.groupId = groupId
            self.status = status
        }
        
        enum CodingKeys: String, CodingKey {
            case runtimeId = "RuntimeId"
            case limit = "Limit"
            case offset = "Offset"
            case sortType = "SortType"
            case sort = "Sort"
            case zone = "Zone"
            case apiVersion = "ApiVersion"
            case groupId = "GroupId"
            case status = "Status"
        }
    }
    
    /// ListRuntimeDeployedInstancesMC返回参数结构体
    public struct ListRuntimeDeployedInstancesMCResponse: TCResponseModel {
        /// 运行时所部属的应用实例列表
        public let instances: [Date]
        
        /// 满足条件的记录总数，用于分页器
        public let totalCount: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case instances = "Instances"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
}