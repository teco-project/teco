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

extension Cls {
    /// ModifyLogset请求参数结构体
    public struct ModifyLogsetRequest: TCRequestModel {
        /// 日志集ID
        public let logsetId: String
        
        /// 日志集名称
        public let logsetName: String?
        
        /// 日志集的绑定的标签键值对。最大支持10个标签键值对，同一个资源只能同时绑定一个标签键。
        public let tags: [Tag]?
        
        public init (logsetId: String, logsetName: String? = nil, tags: [Tag]? = nil) {
            self.logsetId = logsetId
            self.logsetName = logsetName
            self.tags = tags
        }
        
        enum CodingKeys: String, CodingKey {
            case logsetId = "LogsetId"
            case logsetName = "LogsetName"
            case tags = "Tags"
        }
    }
    
    /// ModifyLogset返回参数结构体
    public struct ModifyLogsetResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 修改日志集
    ///
    /// 本接口用于修改日志集信息
    @inlinable
    public func modifyLogset(_ input: ModifyLogsetRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyLogsetResponse > {
        self.client.execute(action: "ModifyLogset", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改日志集
    ///
    /// 本接口用于修改日志集信息
    @inlinable
    public func modifyLogset(_ input: ModifyLogsetRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLogsetResponse {
        try await self.client.execute(action: "ModifyLogset", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
