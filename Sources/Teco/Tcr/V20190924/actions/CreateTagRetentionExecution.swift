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

extension Tcr {
    /// 手动执行版本保留
    ///
    /// 手动执行版本保留
    @inlinable
    public func createTagRetentionExecution(_ input: CreateTagRetentionExecutionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateTagRetentionExecutionResponse > {
        self.client.execute(action: "CreateTagRetentionExecution", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 手动执行版本保留
    ///
    /// 手动执行版本保留
    @inlinable
    public func createTagRetentionExecution(_ input: CreateTagRetentionExecutionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTagRetentionExecutionResponse {
        try await self.client.execute(action: "CreateTagRetentionExecution", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateTagRetentionExecution请求参数结构体
    public struct CreateTagRetentionExecutionRequest: TCRequestModel {
        /// 主实例iD
        public let registryId: String
        
        /// 版本保留规则Id
        public let retentionId: Int64
        
        /// 是否模拟执行，默认值为false，即非模拟执行
        public let dryRun: Bool?
        
        public init (registryId: String, retentionId: Int64, dryRun: Bool?) {
            self.registryId = registryId
            self.retentionId = retentionId
            self.dryRun = dryRun
        }
        
        enum CodingKeys: String, CodingKey {
            case registryId = "RegistryId"
            case retentionId = "RetentionId"
            case dryRun = "DryRun"
        }
    }
    
    /// CreateTagRetentionExecution返回参数结构体
    public struct CreateTagRetentionExecutionResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}