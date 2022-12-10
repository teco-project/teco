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

extension Msp {
    /// 获取迁移项目名称列表
    @inlinable
    public func listMigrationProject(_ input: ListMigrationProjectRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ListMigrationProjectResponse > {
        self.client.execute(action: "ListMigrationProject", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取迁移项目名称列表
    @inlinable
    public func listMigrationProject(_ input: ListMigrationProjectRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListMigrationProjectResponse {
        try await self.client.execute(action: "ListMigrationProject", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ListMigrationProject请求参数结构体
    public struct ListMigrationProjectRequest: TCRequestModel {
        /// 记录起始数，默认值为0
        public let offset: UInt64?
        
        /// 返回条数，默认值为500
        public let limit: UInt64?
        
        public init (offset: UInt64?, limit: UInt64?) {
            self.offset = offset
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
        }
    }
    
    /// ListMigrationProject返回参数结构体
    public struct ListMigrationProjectResponse: TCResponseModel {
        /// 项目列表
        public let projects: [Project]
        
        /// 项目总数
        public let totalCount: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case projects = "Projects"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
}
