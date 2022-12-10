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

extension Chdfs {
    /// 批量修改权限规则属性
    ///
    /// 批量修改权限规则属性，需要指定权限规则ID，支持修改权限规则地址、访问模式和优先级。
    @inlinable
    public func modifyAccessRules(_ input: ModifyAccessRulesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyAccessRulesResponse > {
        self.client.execute(action: "ModifyAccessRules", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 批量修改权限规则属性
    ///
    /// 批量修改权限规则属性，需要指定权限规则ID，支持修改权限规则地址、访问模式和优先级。
    @inlinable
    public func modifyAccessRules(_ input: ModifyAccessRulesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAccessRulesResponse {
        try await self.client.execute(action: "ModifyAccessRules", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyAccessRules请求参数结构体
    public struct ModifyAccessRulesRequest: TCRequestModel {
        /// 多个权限规则，上限为10
        public let accessRules: [AccessRule]
        
        public init (accessRules: [AccessRule]) {
            self.accessRules = accessRules
        }
        
        enum CodingKeys: String, CodingKey {
            case accessRules = "AccessRules"
        }
    }
    
    /// ModifyAccessRules返回参数结构体
    public struct ModifyAccessRulesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
