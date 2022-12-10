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

extension Sqlserver {
    /// 完成迁移任务
    ///
    /// 本接口（CompleteMigration）作用是完成一个迁移任务
    @inlinable
    public func completeMigration(_ input: CompleteMigrationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CompleteMigrationResponse > {
        self.client.execute(action: "CompleteMigration", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 完成迁移任务
    ///
    /// 本接口（CompleteMigration）作用是完成一个迁移任务
    @inlinable
    public func completeMigration(_ input: CompleteMigrationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CompleteMigrationResponse {
        try await self.client.execute(action: "CompleteMigration", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CompleteMigration请求参数结构体
    public struct CompleteMigrationRequest: TCRequestModel {
        /// 迁移任务ID
        public let migrateId: Int64
        
        public init (migrateId: Int64) {
            self.migrateId = migrateId
        }
        
        enum CodingKeys: String, CodingKey {
            case migrateId = "MigrateId"
        }
    }
    
    /// CompleteMigration返回参数结构体
    public struct CompleteMigrationResponse: TCResponseModel {
        /// 完成迁移流程发起后，返回的流程id
        public let flowId: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }
}