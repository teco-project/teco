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

extension Dbbrain {
    /// 查询实时线程列表
    ///
    /// 查询关系型数据库的实时线程列表。
    @inlinable
    public func describeMySqlProcessList(_ input: DescribeMySqlProcessListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeMySqlProcessListResponse > {
        self.client.execute(action: "DescribeMySqlProcessList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询实时线程列表
    ///
    /// 查询关系型数据库的实时线程列表。
    @inlinable
    public func describeMySqlProcessList(_ input: DescribeMySqlProcessListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMySqlProcessListResponse {
        try await self.client.execute(action: "DescribeMySqlProcessList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeMySqlProcessList请求参数结构体
    public struct DescribeMySqlProcessListRequest: TCRequestModel {
        /// 实例ID。
        public let instanceId: String
        
        /// 线程的ID，用于筛选线程列表。
        public let id: UInt64?
        
        /// 线程的操作账号名，用于筛选线程列表。
        public let user: String?
        
        /// 线程的操作主机地址，用于筛选线程列表。
        public let host: String?
        
        /// 线程的操作数据库，用于筛选线程列表。
        public let db: String?
        
        /// 线程的操作状态，用于筛选线程列表。
        public let state: String?
        
        /// 线程的执行类型，用于筛选线程列表。
        public let command: String?
        
        /// 线程的操作时长最小值，单位秒，用于筛选操作时长大于该值的线程列表。
        public let time: UInt64?
        
        /// 线程的操作语句，用于筛选线程列表。
        public let info: String?
        
        /// 返回数量，默认20。
        public let limit: UInt64?
        
        /// 服务产品类型，支持值："mysql" - 云数据库 MySQL；"cynosdb" - 云数据库 TDSQL-C for MySQL，默认为"mysql"。
        public let product: String?
        
        public init (instanceId: String, id: UInt64?, user: String?, host: String?, db: String?, state: String?, command: String?, time: UInt64?, info: String?, limit: UInt64?, product: String?) {
            self.instanceId = instanceId
            self.id = id
            self.user = user
            self.host = host
            self.db = db
            self.state = state
            self.command = command
            self.time = time
            self.info = info
            self.limit = limit
            self.product = product
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case id = "ID"
            case user = "User"
            case host = "Host"
            case db = "DB"
            case state = "State"
            case command = "Command"
            case time = "Time"
            case info = "Info"
            case limit = "Limit"
            case product = "Product"
        }
    }
    
    /// DescribeMySqlProcessList返回参数结构体
    public struct DescribeMySqlProcessListResponse: TCResponseModel {
        /// 实时线程列表。
        public let processList: [MySqlProcess]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case processList = "ProcessList"
            case requestId = "RequestId"
        }
    }
}
